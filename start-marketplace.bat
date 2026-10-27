@echo off
echo ========================================================
echo Starting Digital Labour Marketplace (Local Environment)
echo ========================================================
echo.

set PATH=D:\ShahzebCode\.tools\node-v20.18.0-win-x64;%PATH%

echo [1/2] Starting Backend Server (Port 5000)...
start "DLM Backend Server" cmd /k "cd /d D:\ShahzebCode\digital-labour-marketplace\backend && node server.js"

echo [2/2] Starting Frontend Vite Server (Port 5173)...
start "DLM Frontend Client" cmd /k "cd /d D:\ShahzebCode\digital-labour-marketplace\frontend && npm run dev"

echo.
echo ========================================================
echo Servers launched! Open http://localhost:5173 in browser.
echo ========================================================
pause
