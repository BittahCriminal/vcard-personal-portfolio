@echo off
REM MD2PDF Build Script for Windows
REM This script builds the md2pdf.exe executable

echo.
echo ========================================
echo    MD2PDF Build Script
echo ========================================
echo.

REM Check if Python is available
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.8+ from https://python.org
    pause
    exit /b 1
)

echo Python found. Starting build...
echo.

REM Run the Python build script
python build.py

echo.
echo Build process complete.
echo Check the dist\ folder for md2pdf.exe
echo.
pause
