@echo off
title Finance Manager Launcher
echo Starting Finance Manager...

REM Check if Python is available
python --version >nul 2>&1
if errorlevel 1 (
    echo Error: Python is not installed or not in PATH.
    echo Please install Python and add it to your PATH.
    pause
    exit /b 1
)

REM Change to the script's directory
cd /d "%~dp0"

REM Check if the main script exists
if not exist "src\main.py" (
    echo Error: src\main.py not found. Please ensure the script is in the correct location.
    pause
    exit /b 1
)

REM Run the app
echo Launching Finance Manager...
python src/main.py

REM If the app exits, pause to see any messages
pause
