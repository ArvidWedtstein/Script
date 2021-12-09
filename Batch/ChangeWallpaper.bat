@echo off
echo Waiting 10 seconds before changing wallpaper...
ping -n 10 -w 1000 127.0.0.1>nul 2>nul

echo Windows Registry Editor Version 5.00>temporary.reg
echo.>>temporary.reg
echo [HKEY_CURRENT_USER\Control Panel\Desktop]>>temporary.reg
echo "Wallpaper"="C:\\WINDOWS\\Web\\Wallpaper\\Bliss.bmp">>temporary.reg

regedit /s temporary.reg && del temporary.reg

rundll32.exe user32.dll,UpdatePerUserSystemParameters

if exist temporary.reg del temporary.reg
exit