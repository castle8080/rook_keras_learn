@echo off

call .\setup-environment.bat
if %ERRORLEVEL% neq 0 (
    echo Failed to setup environment.
    exit /b 1
)

jupyter lab --no-browser --port=9898
