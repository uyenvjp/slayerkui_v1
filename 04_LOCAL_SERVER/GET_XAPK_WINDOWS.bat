@echo off
title Download Slayer Legend XAPK from GitHub LFS
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  py -3 download_xapk.py
) else (
  python download_xapk.py
)
echo.
pause
