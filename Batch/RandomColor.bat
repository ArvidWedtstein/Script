@echo off
:s
mode con lines=2 cols=13
set /a result=(%RANDOM%*9/32768)+1
echo %result%
color 0%result%
>nul pause
cls
goto s