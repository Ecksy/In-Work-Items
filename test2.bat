@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
cls
echo ***Simple Windows IP list maker***
set /p firstIP="Enter the starting IP: "
echo The IP entered is: %firstIP%
rem set /p lastIP="Enter the last IP: "

rem grab the first three octets
for /f "Tokens=1-3 delims=." %%a in (!firstIP!) do set firstThreeOctet=%%a
echo %firstThreeOctet%
pause