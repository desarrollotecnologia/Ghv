@echo off
REM Pruebas locales en puerto 5002 (no modifica el servidor en 5000)
cd /d "%~dp0"

if exist "venv\Scripts\activate.bat" call "venv\Scripts\activate.bat"
if exist ".venv\Scripts\activate.bat" call ".venv\Scripts\activate.bat"

if not exist ".env.local" (
    echo [AVISO] No existe .env.local — copia .env.local.example y ajusta MYSQL_* si hace falta.
    echo.
)

set "URL=http://127.0.0.1:5002"
echo [INFO] Modo LOCAL: %URL%
echo [INFO] Servidor produccion sigue en puerto 5000
echo.

start "" /b cmd /c "timeout /t 3 /nobreak >nul && start "" "%URL%""

python run_local.py
pause
