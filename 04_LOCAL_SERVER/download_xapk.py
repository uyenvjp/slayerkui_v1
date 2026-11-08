#!/usr/bin/env python3
"""Download original Git LFS XAPK with SHA-256 validation."""
from adb_dashboard import download_worker, JOB

if __name__ == "__main__":
    download_worker()
    for line in JOB["log"]:
        print(line)
    if not JOB["ok"]:
        raise SystemExit(1)
