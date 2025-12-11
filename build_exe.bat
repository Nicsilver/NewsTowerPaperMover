@echo off
echo ================================================
echo   Building News Tower Paper Mover EXE
echo ================================================
echo.

echo Installing PyInstaller...
pip install pyinstaller

echo.
echo Building executable...
python -m PyInstaller --onefile --name "NewsTowerPaperMover" simple_drag.py

echo.
echo ================================================
echo   Build Complete!
echo ================================================
echo.
echo The executable is located at:
echo   dist\NewsTowerPaperMover.exe
echo.
pause
