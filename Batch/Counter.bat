@echo off
set counter=0
:count
title %counter% %counter% %counter% 
cls
echo Press enter to add 1 to counter
echo %time%
>nul PING -n 1 localhost
set /a counter=%counter%+1
goto count
