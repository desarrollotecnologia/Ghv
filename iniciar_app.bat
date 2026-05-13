@echo off
REM ==========================================================
REM   Gestion Humana - Colbeef
REM   Inicio automatico del servidor (Waitress + Flask)
REM   Abre el navegador en http://<IP-LAN>:5000/login
REM ==========================================================

title Gestion Humana - Colbeef

REM Ir a la carpeta donde esta este .bat (raiz del proyecto)
cd /d "%~dp0"

echo ===========================================================
echo   GESTION HUMANA - Colbeef
echo   Iniciando servidor...
echo ===========================================================
echo.

REM Activar entorno virtual si existe (venv o .venv)
if exist "venv\Scripts\activate.bat" (
    echo [INFO] Activando entorno virtual: venv
    call "venv\Scripts\activate.bat"
) else if exist ".venv\Scripts\activate.bat" (
    echo [INFO] Activando entorno virtual: .venv
    call ".venv\Scripts\activate.bat"
) else (
    echo [INFO] Sin entorno virtual, usando Python del sistema
)

echo.

REM Verificar que Python este disponible
where python >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python no esta instalado o no esta en el PATH.
    echo         Instalalo desde https://www.python.org/downloads/
    echo.
    pause
    exit /b 1
)

REM Instalar dependencias si falta algun paquete clave
python -c "import flask, waitress, dotenv" 1>nul 2>nul
if errorlevel 1 (
    echo [INFO] Instalando dependencias desde requirements.txt...
    python -m pip install -r requirements.txt
    if errorlevel 1 (
        echo [ERROR] Fallo la instalacion de dependencias.
        pause
        exit /b 1
    )
)

REM ----------------------------------------------------------
REM   Detectar IP local (LAN) para abrir el navegador
REM ----------------------------------------------------------
set "LOCAL_IP="
for /f "tokens=2 delims=:" %%a in ('powershell -NoProfile -Command "(Test-Connection -ComputerName $env:COMPUTERNAME -Count 1 -ErrorAction SilentlyContinue).IPV4Address.IPAddressToString"') do set "LOCAL_IP=%%a"

REM Metodo alternativo si Powershell fallo
if "%LOCAL_IP%"=="" (
    for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /C:"IPv4"') do (
        if not defined LOCAL_IP set "LOCAL_IP=%%a"
    )
)

REM Limpiar espacios al inicio
set "LOCAL_IP=%LOCAL_IP: =%"

if "%LOCAL_IP%"=="" (
    set "URL=http://localhost:5000/login"
) else (
    set "URL=http://%LOCAL_IP%:5000/login"
)

echo.
echo [INFO] Servidor: %URL%
echo [INFO] Para detener el servidor: Ctrl + C
echo.

REM Abrir el navegador despues de unos segundos (en paralelo)
start "" /b cmd /c "timeout /t 4 /nobreak >nul && start "" "%URL%""

REM Arrancar el servidor
python run.py

REM Si run.py termina por un error, dejar la ventana abierta
if errorlevel 1 (
    echo.
    echo [ERROR] El servidor termino con errores.
    pause
)
