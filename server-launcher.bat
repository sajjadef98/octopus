@echo off
title PHP Server Launcher - Simple Edition
color 0A
cls

echo ===============================================
echo     🛠 PHP + MySQL Launcher by Flare Tools
echo ===============================================
echo.

echo Available PHP versions:
echo [1] PHP 8.2
echo [2] PHP 8.1
echo [3] PHP 7.4
echo.

set /p ver=Enter the version number (1-3): 

if "%ver%"=="1" (
    set php_folder=php-8.2.0-nts-Win32-vs16-x64
) else if "%ver%"=="2" (
    set php_folder=php-8.1.0-nts-Win32-vs16-x64
) else if "%ver%"=="3" (
    set php_folder=php-7.4.0-nts-Win32-vs16-x64
) else (
    echo ❌ Invalid option. Exiting...
    pause
    exit /b
)

set /p port=Enter port number [default: 8000]: 
if "%port%"=="" set port=8000

set location=%cd%


echo.
echo 🔧 Selected PHP version: %php_folder%
echo 🔌 Port: %port%
echo 📂 Working directory: %location%
echo.


echo Starting MySQL server...
start "" "C:\laragon\bin\mysql\mysql-5.7.33-winx64\bin\mysqld.exe" --console

echo Starting PHP server on port %port%...
start "" "%location%\%php_folder%\php.exe" -S localhost:%port% -t .

echo -----------------------------------------------
echo ✅ Server running at http://localhost:%port%
echo Press any key to close this window...
pause >nul
