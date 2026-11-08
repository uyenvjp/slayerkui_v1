#!/usr/bin/env python3
"""Loopback-only ADB web dashboard for a verified Slayer Legend XAPK.

Not a protocol-compatible game server. No arbitrary shell commands are accepted.
"""
from __future__ import annotations

import hashlib
import json
import os
import re
import shutil
import subprocess
import tempfile
import threading
import time
import zipfile
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urlsplit
from urllib.request import Request, urlopen
from urllib.error import HTTPError

ROOT = Path(__file__).resolve().parent
DATA = ROOT / "data"
SOURCE = DATA / "Slayer_Legend_700.0.4.xapk"
EXPECTED_SIZE = 439306207
EXPECTED_SHA256 = "b8c19d5fdf4da70c8c45cddf3f7e6b8a850863fd55b09b087c6d06d7001d6098"
PACKAGE = "com.gear2.growslayer"
WEB_HOST = "127.0.0.1"
WEB_PORT = 8765
CSRF = __import__("secrets").token_urlsafe(32)
JOB = {"running": False, "message": "Chưa có tác vụ cài đặt", "log": [], "ok": None}
JOB_LOCK = threading.Lock()
UPLOAD_LOCK = threading.Lock()
MAX_UPLOAD = 500 * 1024 * 1024


def adb_path():
    manual = os.getenv("ADB_PATH")
    if manual:
        p = Path(manual).expanduser()
        return str(p) if p.is_file() else None
    bundled = ROOT / "tools" / "platform-tools" / ("adb.exe" if os.name == "nt" else "adb")
    if bundled.is_file():
        return str(bundled)
    return shutil.which("adb")


def run_command(args, timeout=180):
    result = subprocess.run(args, shell=False, capture_output=True, text=True,
                            errors="replace", timeout=timeout)
    out = (result.stdout + "\n" + result.stderr).strip()
    return result.returncode, out[:18000]


def adb_devices():
    exe = adb_path()
    if not exe:
        return [], "ADB chưa được cài hoặc chưa tìm được trong PATH."
    try:
        code, out = run_command([exe, "devices", "-l"], timeout=20)
    except (OSError, subprocess.TimeoutExpired) as exc:
        return [], f"Không khởi động được ADB: {type(exc).__name__}"
    if code != 0:
        return [], out
    devices = []
    for line in out.splitlines():
        line = line.strip()
        if not line or line.startswith(("List of devices", "*")):
            continue
        parts = line.split()
        if len(parts) >= 2:
            devices.append({"serial": parts[0], "state": parts[1],
                            "detail": " ".join(parts[2:])})
    return devices, None


def file_status():
    if not SOURCE.is_file():
        return {"present": False, "path": str(SOURCE), "verified": False}
    size = SOURCE.stat().st_size
    # Upload/download already verifies SHA. Check lazily only when installing to
    # avoid hashing 439 MB on each UI refresh.
    return {"present": True, "path": str(SOURCE), "size": size,
            "size_matches": size == EXPECTED_SIZE, "verified": False,
            "note": "SHA-256 sẽ được kiểm tra trước khi cài"}


def verify_xapk():
    if not SOURCE.is_file():
        raise ValueError("Chưa có XAPK. Hãy tải gói gốc hoặc tải file lên web.")
    if SOURCE.stat().st_size != EXPECTED_SIZE:
        raise ValueError("Kích thước XAPK không đúng bản 700.0.4")
    h = hashlib.sha256()
    with SOURCE.open("rb") as f:
        for block in iter(lambda: f.read(4 * 1024 * 1024), b""):
            h.update(block)
    if h.hexdigest().lower() != EXPECTED_SHA256:
        raise ValueError("SHA-256 không khớp bản XAPK đã phân tích.")
    if not zipfile.is_zipfile(SOURCE):
        raise ValueError("XAPK không phải ZIP hợp lệ.")


def log_job(message):
    with JOB_LOCK:
        JOB["message"] = message
        JOB["log"].append(message[:16000])
        JOB["log"] = JOB["log"][-100:]


def install_worker(serial):
    with JOB_LOCK:
        JOB.update({"running": True, "ok": None, "message": "Đang chuẩn bị",
                    "log": []})
    try:
        log_job("Kiểm tra XAPK SHA-256...")
        verify_xapk()
        devices, error = adb_devices()
        if error or serial not in [d["serial"] for d in devices if d["state"] == "device"]:
            raise ValueError("Thiết bị ADB không sẵn sàng hoặc chưa cấp quyền.")
        exe = adb_path()
        if not exe:
            raise ValueError("ADB không tìm thấy.")
        with zipfile.ZipFile(SOURCE) as z, tempfile.TemporaryDirectory(prefix="slayer-adb-") as td:
            apk_infos = {i.filename: i for i in z.infolist()
                         if not i.is_dir() and i.filename.lower().endswith(".apk")}
            if not apk_infos:
                raise ValueError("Không tìm thấy file APK trong XAPK.")
            manifest = {}
            try:
                manifest = json.loads(z.read("manifest.json"))
            except (KeyError, ValueError, UnicodeError):
                log_job("Không tìm thấy manifest.json hợp lệ: cần kiểm tra split APK thủ công.")
            if manifest.get("package_name") and manifest["package_name"] != PACKAGE:
                raise ValueError("Package XAPK không đúng com.gear2.growslayer.")
            declared = []
            if isinstance(manifest.get("split_apks"), list):
                for obj in manifest["split_apks"]:
                    if isinstance(obj, dict) and isinstance(obj.get("file"), str):
                        declared.append(obj["file"])
            selected = []
            if declared:
                for name in declared:
                    if name in apk_infos:
                        selected.append(name)
                    else:
                        matches = [x for x in apk_infos if Path(x).name == Path(name).name]
                        if len(matches) != 1:
                            raise ValueError("Split từ manifest không tìm thấy hoặc trùng tên: " + name)
                        selected.append(matches[0])
            elif len(apk_infos) == 1:
                selected = list(apk_infos)
            else:
                # Never silently guess which separately packaged APKs belong
                # in the same install-multiple transaction.
                raise ValueError("Nhiều APK nhưng không có split_apks xác minh. "
                                 "Hãy kiểm tra manifest gốc trước khi cài.")
            selected = list(dict.fromkeys(selected))
            log_job("Split APK xác nhận: " + ", ".join(Path(s).name for s in selected))
            apks = []
            for index, name in enumerate(selected):
                info = apk_infos[name]
                if info.file_size <= 0 or info.file_size > 500 * 1024 * 1024:
                    raise ValueError("Dung lượng split APK bất thường.")
                dest = Path(td) / f"{index:02d}.apk"
                with z.open(info) as src, dest.open("wb") as dst:
                    shutil.copyfileobj(src, dst, 1024 * 1024)
                apks.append(str(dest))
            cmd = [exe, "-s", serial, "install-multiple", "-r", *apks] if len(apks) > 1 \
                else [exe, "-s", serial, "install", "-r", apks[0]]
            log_job("ADB: bắt đầu cài " + str(len(apks)) + " APK ...")
            rc, out = run_command(cmd, timeout=600)
            log_job(out or f"adb exit status {rc}")
            if rc:
                raise RuntimeError("ADB install thất bại, mã " + str(rc))
            # Expansion files are optional and must follow verified package paths.
            expansions = manifest.get("expansions", [])
            if isinstance(expansions, list):
                for item in expansions:
                    if not isinstance(item, dict):
                        continue
                    member = item.get("file", "")
                    if member not in z.namelist() or not member.endswith(".obb"):
                        continue
                    if not Path(member).name.startswith(("main.", "patch.")):
                        raise ValueError("Tên OBB không hợp lệ.")
                    dest = Path(td) / Path(member).name
                    with z.open(member) as src, dest.open("wb") as dst:
                        shutil.copyfileobj(src, dst, 1024 * 1024)
                    target = "/sdcard/Android/obb/" + PACKAGE
                    rc, out = run_command([exe, "-s", serial, "shell", "mkdir", "-p", target], 60)
                    if rc:
                        raise RuntimeError("Không tạo được thư mục OBB: " + out)
                    rc, out = run_command([exe, "-s", serial, "push",
                                           str(dest), target + "/" + dest.name], timeout=600)
                    log_job("OBB " + dest.name + ": " + out)
                    if rc:
                        raise RuntimeError("Không đẩy được OBB")
            rc, out = run_command([exe, "-s", serial, "shell", "pm", "path", PACKAGE], 30)
            if rc or "package:" not in out:
                raise RuntimeError("ADB báo cài xong nhưng chưa xác nhận được package.")
            log_job("Đã xác nhận package " + PACKAGE + " trên " + serial)
        with JOB_LOCK:
            JOB["ok"] = True
    except (OSError, ValueError, RuntimeError, zipfile.BadZipFile,
            subprocess.TimeoutExpired) as exc:
        log_job("LỖI: " + str(exc))
        with JOB_LOCK:
            JOB["ok"] = False
    finally:
        with JOB_LOCK:
            JOB["running"] = False



def download_worker():
    with JOB_LOCK:
        JOB.update({"running": True, "ok": None, "message": "Bắt đầu tải XAPK từ GitHub LFS", "log": []})
    urls = [
        "https://media.githubusercontent.com/media/uyenvjp/slayerkui_v1/main/00_APK_GOC/Slayer%2BLegend%2B_%2BIdle%2BRPG_700.0.4_APKPure.xapk",
        "https://github.com/uyenvjp/slayerkui_v1/raw/refs/heads/main/00_APK_GOC/Slayer%2BLegend%2B_%2BIdle%2BRPG_700.0.4_APKPure.xapk",
    ]
    try:
        DATA.mkdir(parents=True, exist_ok=True)
        for url in urls:
            tmp = DATA / "download.tmp"
            try:
                log_job("Đang tải từ nguồn GitHub...")
                req = Request(url, headers={"User-Agent": "SlayerLocalADB/0.1"})
                with urlopen(req, timeout=45) as response, tmp.open("wb") as dst:
                    digest = hashlib.sha256()
                    size = 0
                    last_notice = 0
                    while True:
                        chunk = response.read(2 * 1024 * 1024)
                        if not chunk:
                            break
                        size += len(chunk)
                        if size > EXPECTED_SIZE:
                            raise ValueError("Dữ liệu tải lớn hơn file gốc.")
                        dst.write(chunk)
                        digest.update(chunk)
                        if size - last_notice >= 32 * 1024 * 1024:
                            log_job(f"Đã tải {size / 1048576:.1f} / {EXPECTED_SIZE / 1048576:.1f} MiB")
                            last_notice = size
                if size != EXPECTED_SIZE or digest.hexdigest() != EXPECTED_SHA256:
                    raise ValueError("GitHub trả về pointer Git LFS hoặc file sai SHA-256.")
                if not zipfile.is_zipfile(tmp):
                    raise ValueError("Nội dung tải về không phải XAPK ZIP.")
                os.replace(tmp, SOURCE)
                log_job("XAPK đã tải và xác minh SHA-256 thành công.")
                with JOB_LOCK:
                    JOB["ok"] = True
                return
            except (OSError, ValueError) as exc:
                log_job("Nguồn tải không thành công: " + str(exc))
            finally:
                if tmp.exists():
                    tmp.unlink()
        raise RuntimeError("GitHub LFS không cấp file gốc. Hãy tải XAPK thủ công và upload qua web.")
    except (RuntimeError, OSError) as exc:
        log_job("LỖI: " + str(exc))
        with JOB_LOCK:
            JOB["ok"] = False
    finally:
        with JOB_LOCK:
            JOB["running"] = False



class DashboardHandler(BaseHTTPRequestHandler):
    server_version = "SlayerLocalADB/0.1"

    def log_message(self, fmt, *args):
        # Keep authentication headers and raw bodies out of console logs.
        print("[ADB web]", fmt % args)

    def valid_host(self):
        return self.headers.get("Host", "") in (
            "127.0.0.1:8765", "localhost:8765")

    def send_bytes(self, status, body, content_type):
        self.send_response(status)
        self.send_header("Content-Type", content_type)
        self.send_header("Content-Length", str(len(body)))
        self.send_header("Cache-Control", "no-store")
        self.send_header("X-Content-Type-Options", "nosniff")
        self.send_header("X-Frame-Options", "DENY")
        self.send_header("Content-Security-Policy",
                         "default-src 'self'; script-src 'self'; style-src 'self'; "
                         "connect-src 'self'; object-src 'none'; frame-ancestors 'none'")
        self.end_headers()
        self.wfile.write(body)

    def reply(self, code, obj):
        self.send_bytes(code, json.dumps(obj, ensure_ascii=False).encode("utf-8"),
                        "application/json; charset=utf-8")

    def csrf_ok(self):
        origin = self.headers.get("Origin")
        if origin and origin not in ("http://127.0.0.1:8765", "http://localhost:8765"):
            return False
        import hmac
        return hmac.compare_digest(self.headers.get("X-Local-Token", ""), CSRF)

    def read_json(self, limit=4096):
        if self.headers.get("Content-Type", "").split(";")[0].strip() != "application/json":
            raise ValueError("Yêu cầu application/json")
        size = self.headers.get("Content-Length", "")
        if not size.isdecimal() or int(size) > limit or int(size) == 0:
            raise ValueError("Dung lượng JSON không hợp lệ.")
        obj = json.loads(self.rfile.read(int(size)))
        if not isinstance(obj, dict):
            raise ValueError("Cần JSON object")
        return obj

    def do_GET(self):
        if not self.valid_host():
            return self.reply(403, {"error": "invalid_host"})
        path = urlsplit(self.path).path
        if path == "/":
            html = (ROOT / "dashboard.html").read_bytes()
            return self.send_bytes(200, html, "text/html; charset=utf-8")
        if path == "/style.css":
            return self.send_bytes(200, (ROOT / "style.css").read_bytes(),
                                   "text/css; charset=utf-8")
        if path == "/app.js":
            script = (ROOT / "app.js").read_text("utf-8").replace("__CSRF_PLACEHOLDER__", CSRF)
            return self.send_bytes(200, script.encode("utf-8"),
                                   "application/javascript; charset=utf-8")
        if path == "/api/status":
            devices, error = adb_devices()
            return self.reply(200, {
                "adb": adb_path(), "adb_error": error, "devices": devices,
                "xapk": file_status(), "login_server": "http://127.0.0.1:8000",
                "original_client_compatible": False
            })
        if path == "/api/job":
            with JOB_LOCK:
                return self.reply(200, dict(JOB))
        return self.reply(404, {"error": "not_found"})

    def do_POST(self):
        if not self.valid_host() or not self.csrf_ok():
            return self.reply(403, {"error": "forbidden"})
        path = urlsplit(self.path).path
        try:
            if path == "/api/upload":
                if not UPLOAD_LOCK.acquire(False):
                    return self.reply(409, {"error": "upload_busy"})
                try:
                    raw = self.headers.get("Content-Length", "")
                    if not raw.isdecimal() or int(raw) != EXPECTED_SIZE:
                        return self.reply(400, {"error": "wrong_size",
                                                "expected_size": EXPECTED_SIZE})
                    DATA.mkdir(parents=True, exist_ok=True)
                    tmp = DATA / "upload.tmp"
                    sha = hashlib.sha256()
                    remain = int(raw)
                    try:
                        with tmp.open("wb") as f:
                            while remain:
                                block = self.rfile.read(min(remain, 4 * 1024 * 1024))
                                if not block:
                                    raise ValueError("Upload bị ngắt")
                                remain -= len(block)
                                sha.update(block)
                                f.write(block)
                        if sha.hexdigest() != EXPECTED_SHA256:
                            raise ValueError("SHA-256 XAPK không đúng; file bị từ chối")
                        os.replace(tmp, SOURCE)
                    finally:
                        if tmp.exists():
                            tmp.unlink()
                    return self.reply(200, {"ok": True, "sha256": EXPECTED_SHA256})
                finally:
                    UPLOAD_LOCK.release()
            if path == "/api/download":
                self.read_json()
                with JOB_LOCK:
                    if JOB["running"]:
                        return self.reply(409, {"error": "job_busy"})
                    JOB["running"] = True
                threading.Thread(target=download_worker, daemon=True).start()
                return self.reply(202, {"ok": True, "message": "download_started"})
            if path == "/api/install":
                payload = self.read_json()
                serial = payload.get("serial")
                if not isinstance(serial, str) or len(serial) > 120:
                    raise ValueError("Serial ADB không hợp lệ")
                with JOB_LOCK:
                    if JOB["running"]:
                        return self.reply(409, {"error": "install_busy"})
                    JOB["running"] = True
                threading.Thread(target=install_worker, args=(serial,), daemon=True).start()
                return self.reply(202, {"ok": True, "message": "install_started"})
            if path == "/api/login-test":
                payload = self.read_json()
                username, password = payload.get("username"), payload.get("password")
                if not isinstance(username, str) or not isinstance(password, str):
                    raise ValueError("Thiếu username/password")
                body = json.dumps({"username": username, "password": password}).encode()
                req = Request("http://127.0.0.1:8000/api/v1/login", data=body,
                              headers={"Content-Type": "application/json"}, method="POST")
                try:
                    with urlopen(req, timeout=8) as f:
                        result = json.load(f)
                except HTTPError as ex:
                    return self.reply(ex.code, {"ok": False, "error": "login_failed"})
                # Never forward local bearer tokens to the web interface or logs.
                return self.reply(200, {"ok": bool(result.get("token")),
                                        "note": "Đăng nhập local JSON API thành công, chưa phải APK gốc"})
            return self.reply(404, {"error": "not_found"})
        except (ValueError, json.JSONDecodeError) as ex:
            return self.reply(400, {"error": str(ex)})
        except (OSError, TimeoutError) as ex:
            return self.reply(502, {"error": type(ex).__name__})


def serve_dashboard():
    ThreadingHTTPServer((WEB_HOST, WEB_PORT), DashboardHandler).serve_forever()


if __name__ == "__main__":
    print("ADB dashboard: http://127.0.0.1:8765")
    serve_dashboard()
