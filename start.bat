@echo off
title Phonetic Learning - LAN Server
rem 切换到本脚本所在目录，确保伺服的是本项目文件
cd /d "%~dp0"

set "PY="
where python >nul 2>nul && set "PY=python"
if not defined PY (where py >nul 2>nul && set "PY=py -3")
if not defined PY (
  echo.
  echo [ERROR] Python not found. Please install Python 3:
  echo         https://www.python.org/downloads/
  echo.
  pause
  exit /b 1
)

echo.
echo ==============================================
echo    Phonetic Symbol Learning - Local Server
echo ==============================================
echo.
echo  On this computer : http://localhost:8000

for /f "delims=" %%i in ('%PY% -c "import socket;s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM);s.connect(('8.8.8.8',80));print(s.getsockname()[0]);s.close()"') do set "LANIP=%%i"
if defined LANIP echo  On your phone    : http://%LANIP%:8000
echo.
echo  Phone must be on the SAME Wi-Fi network.
echo  If the phone link fails, check the firewall and allow python.
echo  Press Ctrl+C to stop the server.
echo.
%PY% -m http.server 8000 --bind 0.0.0.0
pause
