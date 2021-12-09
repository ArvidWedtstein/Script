@echo off
:red
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red RED & %Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor blue BLUE
:blue

:green
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor green GREEN
:yellow
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor yellow YELLOW
pause
call :red & call :blue

pause