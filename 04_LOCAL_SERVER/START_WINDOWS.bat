@echo off
title Slayer Legend Local Server + ADB Web
cd /d "%~dp0"
echo ===========================================
echo  Slayer Legend - Local API + ADB Web
echo  API: http://127.0.0.1:8000
echo  Web: http://127.0.0.1:8765
echo ===========================================
where py >nul 2>nul
if %errorlevel%==0 (
  py -3 run_all.py
) else (
  python run_all.py
)
if errorlevel 1 (
  echo.
  echo Python 3 required. Download at https://www.python.org/downloads/
)
pause
