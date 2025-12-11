@echo off
echo ================================================
echo   News Tower Paper Mover
echo ================================================
echo.
echo Starting automation script...
echo.

python simple_drag.py

if errorlevel 1 (
    echo.
    echo ERROR: Script failed to run
    echo.
    echo If you haven't run setup yet, double-click setup.bat first
    echo.
    pause
)
