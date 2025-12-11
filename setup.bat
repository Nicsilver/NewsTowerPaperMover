@echo off
echo ================================================
echo   News Tower Paper Mover - Setup
echo ================================================
echo.
echo Installing Python dependencies...
echo.

python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH!
    echo.
    echo Please install Python 3.7+ from https://www.python.org/downloads/
    echo Make sure to check "Add Python to PATH" during installation
    echo.
    pause
    exit /b 1
)

pip install -r requirements.txt

if errorlevel 1 (
    echo.
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo ================================================
echo   Setup Complete!
echo ================================================
echo.
echo You can now run the script by double-clicking:
echo   run.bat
echo.
pause
