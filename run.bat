@echo on

set location=%cd%
ECHO  %location%

REM Start MySQL server on port 3306
start "" "C:\laragon\bin\mysql\mysql-5.7.33-winx64\bin\mysqld.exe" --console

REM Start PHP server on localhost:8000
%location%\php-8.2.0-nts-Win32-vs16-x64\php -S localhost:8000 -t .