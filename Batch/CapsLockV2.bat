@echo off
set loop=0
:caps
start /b /wait powershell.exe -nologo -WindowStyle Hidden -sta -command "IF ([console]::CapsLock -eq 'True'){$wsh = New-Object -ComObject WScript.Shell;$wsh.SendKeys('{CAPSLOCK}')}"
set /a loop=%loop%+1
if %loop%==50 goto eof
goto caps