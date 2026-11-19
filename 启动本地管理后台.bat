@echo off
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "" cmd /c "timeout /t 1 >nul & start http://localhost:8000/admin.html"
  py -m http.server 8000
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "" cmd /c "timeout /t 1 >nul & start http://localhost:8000/admin.html"
    python -m http.server 8000
  ) else (
    echo Python 3 was not found. Install Python 3, then run this file again.
    pause
  )
)
