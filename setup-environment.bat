@echo off

REM make sure to deactivate the previous virtual environment.
deactivate 2>nul

REM Reset the error level
ver >nul

if not exist venv (
    echo Creating new virtual environment
    python -mvenv venv
    if %ERRORLEVEL% neq 0 (
        echo Failed to create virtual environment.
        exit /b 1
    )
)

call venv\scripts\activate

python -mpip install -r requirements.txt
if %ERRORLEVEL% neq 0 (
    exit /b 1
)