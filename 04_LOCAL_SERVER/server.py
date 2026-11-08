#!/usr/bin/env python3
"""Local test backend. NOT wire-compatible with Slayer Legend 700.0.4."""
import hashlib
import hmac
import json
import os
import secrets
import sqlite3
import threading
from contextlib import contextmanager
from datetime import datetime, timedelta, timezone
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urlsplit

HOST = os.environ.get("SERVER_HOST", "127.0.0.1")
PORT = int(os.environ.get("SERVER_PORT", "8000"))
DB_PATH = Path(os.environ.get("SERVER_DB", str(Path(__file__).with_name("slayer_local.db"))))
MAX_BODY = 16 * 1024
LOCK = threading.RLock()


@contextmanager
def db():
    DB_PATH.parent.mkdir(parents=True, exist_ok=True)
    with LOCK:
        conn = sqlite3.connect(DB_PATH, timeout=10)
        conn.row_factory = sqlite3.Row
        try:
            conn.execute("PRAGMA foreign_keys=ON")
            conn.execute("PRAGMA journal_mode=WAL")
            yield conn
            conn.commit()
        finally:
            conn.close()


def initialize():
    with db() as conn:
        conn.executescript("""
            CREATE TABLE IF NOT EXISTS users(
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                username TEXT NOT NULL UNIQUE,
                salt TEXT NOT NULL,
                password_hash TEXT NOT NULL,
                created_at TEXT NOT NULL);
            CREATE TABLE IF NOT EXISTS sessions(
                token_hash TEXT PRIMARY KEY,
                user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                expires_at TEXT NOT NULL);
            CREATE TABLE IF NOT EXISTS profiles(
                user_id INTEGER PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
                revision INTEGER NOT NULL DEFAULT 0,
                data TEXT NOT NULL DEFAULT '{}',
                updated_at TEXT NOT NULL);
        """)


def utcnow():
    return datetime.now(timezone.utc)


def password_hash(password, salt):
    return hashlib.pbkdf2_hmac("sha256", password.encode(), bytes.fromhex(salt), 260000).hex()


def validate_credentials(payload):
    username = payload.get("username")
    password = payload.get("password")
    if not isinstance(username, str) or not (3 <= len(username) <= 32) or not all(c.isascii() and (c.isalnum() or c in "_-") for c in username):
        raise ValueError("username must be 3-32 ASCII letters, numbers, _ or -")
    if not isinstance(password, str) or not (10 <= len(password) <= 128):
        raise ValueError("password must be 10-128 characters")
    return username, password


class Handler(BaseHTTPRequestHandler):
    server_version = "SlayerLocalPrototype/0.1"

    def log_message(self, fmt, *args):
        # Avoid logging bearer tokens or request bodies.
        print("%s %s" % (self.address_string(), fmt % args))

    def respond(self, status, data):
        body = json.dumps(data, ensure_ascii=False, separators=(",", ":")).encode()
        self.send_response(status)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(body)))
        self.send_header("Cache-Control", "no-store")
        self.send_header("X-Content-Type-Options", "nosniff")
        self.end_headers()
        self.wfile.write(body)

    def payload(self):
        content_type = self.headers.get("Content-Type", "").split(";", 1)[0].strip().lower()
        if content_type != "application/json":
            raise ValueError("Content-Type must be application/json")
        raw_len = self.headers.get("Content-Length")
        if not raw_len or not raw_len.isdigit() or int(raw_len) > MAX_BODY:
            raise ValueError("invalid request size")
        obj = json.loads(self.rfile.read(int(raw_len)))
        if not isinstance(obj, dict):
            raise ValueError("JSON object required")
        return obj

    def current_user(self):
        auth = self.headers.get("Authorization", "")
        if not auth.startswith("Bearer "):
            return None
        token = auth[7:]
        if len(token) != 64 or any(ch not in "0123456789abcdef" for ch in token):
            return None
        digest = hashlib.sha256(token.encode()).hexdigest()
        with db() as conn:
            row = conn.execute(
                "SELECT users.id,users.username FROM sessions JOIN users ON users.id=sessions.user_id "
                "WHERE sessions.token_hash=? AND sessions.expires_at>?",
                (digest, utcnow().isoformat())).fetchone()
        return dict(row) if row else None

    def do_GET(self):
        path = urlsplit(self.path).path
        if path == "/health":
            return self.respond(200, {"ok": True, "service": "slayer-local-prototype", "compatible_with_original_client": False})
        if path == "/api/v1/profile":
            user = self.current_user()
            if not user:
                return self.respond(401, {"error": "unauthorized"})
            with db() as conn:
                row = conn.execute("SELECT revision,data FROM profiles WHERE user_id=?", (user["id"],)).fetchone()
            return self.respond(200, {"username": user["username"], "revision": row["revision"], "data": json.loads(row["data"])})
        return self.respond(404, {"error": "not_found"})

    def do_POST(self):
        path = urlsplit(self.path).path
        if path not in ("/api/v1/register", "/api/v1/login", "/api/v1/logout", "/api/v1/profile"):
            return self.respond(404, {"error": "not_found"})
        try:
            payload = self.payload()
            if path == "/api/v1/register":
                username, password = validate_credentials(payload)
                salt = secrets.token_hex(16)
                with db() as conn:
                    try:
                        cursor = conn.execute(
                            "INSERT INTO users(username,salt,password_hash,created_at) VALUES(?,?,?,?)",
                            (username, salt, password_hash(password, salt), utcnow().isoformat()))
                    except sqlite3.IntegrityError:
                        return self.respond(409, {"error": "username_taken"})
                    conn.execute("INSERT INTO profiles(user_id,data,updated_at) VALUES(?,?,?)",
                                 (cursor.lastrowid, "{}", utcnow().isoformat()))
                return self.respond(201, {"ok": True, "username": username})
            if path == "/api/v1/login":
                username, password = validate_credentials(payload)
                with db() as conn:
                    row = conn.execute("SELECT id,salt,password_hash FROM users WHERE username=?", (username,)).fetchone()
                    if not row or not hmac.compare_digest(password_hash(password, row["salt"]), row["password_hash"]):
                        return self.respond(401, {"error": "invalid_credentials"})
                    token = secrets.token_hex(32)
                    conn.execute("INSERT INTO sessions(token_hash,user_id,expires_at) VALUES(?,?,?)",
                                 (hashlib.sha256(token.encode()).hexdigest(), row["id"],
                                  (utcnow() + timedelta(hours=12)).isoformat()))
                return self.respond(200, {"token": token, "token_type": "Bearer", "expires_in": 43200})
            user = self.current_user()
            if not user:
                return self.respond(401, {"error": "unauthorized"})
            if path == "/api/v1/logout":
                token = self.headers["Authorization"][7:]
                with db() as conn:
                    conn.execute("DELETE FROM sessions WHERE token_hash=?", (hashlib.sha256(token.encode()).hexdigest(),))
                return self.respond(200, {"ok": True})
            # Profile is a test-only namespaced store; it is NOT an original game's user-info structure.
            revision = payload.get("revision")
            data = payload.get("data")
            if type(revision) is not int or revision < 0 or not isinstance(data, dict):
                raise ValueError("revision (non-negative integer) and data (object) required")
            if len(json.dumps(data, ensure_ascii=False)) > 8192:
                raise ValueError("profile data too large")
            with db() as conn:
                cursor = conn.execute(
                    "UPDATE profiles SET revision=revision+1,data=?,updated_at=? "
                    "WHERE user_id=? AND revision=?",
                    (json.dumps(data, ensure_ascii=False), utcnow().isoformat(), user["id"], revision))
                if cursor.rowcount != 1:
                    return self.respond(409, {"error": "revision_conflict"})
            return self.respond(200, {"ok": True, "revision": revision + 1})
        except (ValueError, json.JSONDecodeError, UnicodeDecodeError) as exc:
            return self.respond(400, {"error": "invalid_request", "detail": str(exc)})


if __name__ == "__main__":
    if HOST not in ("127.0.0.1", "localhost", "::1"):
        raise SystemExit("Refusing non-loopback bind: prototype is localhost-only")
    initialize()
    print(f"Slayer local prototype at http://{HOST}:{PORT} (not original-client compatible)")
    ThreadingHTTPServer((HOST, PORT), Handler).serve_forever()
