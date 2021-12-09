@echo off
set loop=0
:s
start /b /wait powershell.exe -nologo -WindowStyle Hidden -sta -command "$wsh = New-Object -ComObject WScript.Shell;$wsh.SendKeys('{CAPSLOCK}')"
>nul ping -n 1 localhost
set /a loop=%loop%+1
if %loop%==100 goto eof
goto s
