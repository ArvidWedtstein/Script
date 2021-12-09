@echo off
:s
set /a result=(%RANDOM%*50/32768)+1
echo %result%
pause
goto s