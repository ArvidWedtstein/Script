@echo off
mode con lines=1 cols=13
set lines=1
set cols=13
set loop=0
:start
set /a cols=%cols%+1
set /a lines=%lines%+1
mode con lines=%lines% cols=%cols%
>nul ping -n 1 localhost
if %cols%==15 goto next
goto start

:next 

mode con lines=%lines% cols=%cols%
>nul ping -n 1 localhost
if %lines%==10 goto nest
goto start

:nest
pause