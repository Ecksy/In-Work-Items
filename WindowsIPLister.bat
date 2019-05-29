@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
cls
echo.
echo ***Simple Windows IP list maker***
echo.
:start
set /p clientName="Enter the client name or initials, ie. firstnationalbank or fnb: "
set /p firstThreeOctets="Enter the first three octets with the trailing period: "
set /p firstLastOctet="Enter the starting IP of the last octet: "
set /p lastLastOctet="Enter the ending IP of the last octet: "

rem grab the first three octets
rem for /f "Tokens=1,2,3 delims=." %%a in (%firstIP%) do set firstThreeOctet=%%a
rem echo %firstThreeOctet%

rem grab last octet of the beginning ip 
rem for /f "Tokens=4 delims=." %%b in (%firstIP%) rem do set firstLastOctet=%%b
rem echo %%b

rem grab the last octet of the last ip
rem for /f "Tokens=4 delims=." %%c in (%localip%) rem do set lastLastOctet=%%c
rem echo %%c

for /L %%i in (!firstLastOctet!,1,!lastLastOctet!) do echo !firstThreeOctets!%%i>> .\%clientName%-ip-list.txt
echo.
echo List created in the current directory as 'clientname-ip-list.txt'
echo.
set choice=
set /p choice="Do you want to add another range to this list? Press 'y' for Yes, 'Enter' to quit:"
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto start
@echo on