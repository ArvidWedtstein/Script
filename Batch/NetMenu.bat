@echo off
:home
mode con lines=50 cols=35
cls
echo.
echo Choice your option:
echo 値様様様様様様様様様様様様様様様様
echo 1. Show windows lisence
echo 2. Go to Settings
echo 3. View installed hardware
echo 4. Search for problems
echo 5. Show Wi-Fi information
echo 6. Reset internet connection
choice /c:123456
if errorlevel 1 set a=1
if errorlevel 2 set a=2
if errorlevel 3 set a=3
if errorlevel 4 set a=4
if errorlevel 5 set a=5
if errorlevel 6 set a=6
if %a%==1 goto win
if %a%==2 goto settings
if %a%==3 goto drive
if %a%==4 goto problem
if %a%==5 goto wifi
if %a%==6 goto internet

:win
mode con lines=20 cols=50
cls
wmic path softwarelicensingservice get OA3xOriginalProductKey
pause
goto home

:settings
mode con lines=50 cols=150
cls
start settings
goto home

:drive
mode con lines=50 cols=150
cls
driverquery
pause
goto home

:problem
mode con lines=50 cols=150
cls
sfc /scannow
pause 
goto home

:wifi
mode con lines=50 cols=150
cls
echo Type name of Wi-Fi
set /p WiFi=
netsh wlan show profile %WiFi% key=clear
pause
goto home

:internet
mode con lines=50 cols=150
cls
ipconfig /release
ipconfig /renew
pause
goto home


