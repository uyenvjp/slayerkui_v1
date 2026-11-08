#!/usr/bin/env python3
"""Start both localhost services: JSON login API 8000 + ADB dashboard 8765."""
from __future__ import annotations

import json
import threading
import webbrowser
from http.server import ThreadingHTTPServer
from urllib.request import urlopen

import server
from adb_dashboard import serve_dashboard


def launch():
    server.initialize()
    try:
        local_api = ThreadingHTTPServer(("127.0.0.1", 8000), server.Handler)
    except OSError as exc:
        # The user may already have server.py running in another PowerShell.
        try:
            with urlopen("http://127.0.0.1:8000/health", timeout=3) as response:
                payload = json.load(response)
            if payload.get("service") != "slayer-local-prototype":
                raise RuntimeError("Port 8000 belongs to a different service") from exc
            print("[OK] Existing Slayer JSON API is already running on 127.0.0.1:8000")
        except Exception:
            raise SystemExit("Port 8000 in use by another application; stop it first.")
    else:
        threading.Thread(target=local_api.serve_forever, daemon=True).start()
        print("[OK] Login prototype: http://127.0.0.1:8000/health")
    print("[OK] ADB dashboard: http://127.0.0.1:8765")
    print("[INFO] Server binds ONLY to 127.0.0.1. Press Ctrl+C to stop.")
    threading.Timer(1.0, lambda: webbrowser.open("http://127.0.0.1:8765")).start()
    try:
        serve_dashboard()
    except KeyboardInterrupt:
        print("Stopping local dashboard.")


if __name__ == "__main__":
    launch()
