@echo off
set c=13
:start
mode con lines=1 cols=%c%
>nul ping -n 1 localhost
set /a c=%c%+1
if %c%==100 goto next
goto start

:next
set l=1
:l
mode con lines=%l% cols=%c%
>nul ping -n 1 localhost
set /a l=%l%+1 
if %l%==40 goto done
goto l

:done
:start1
mode con lines=%l% cols=%c%
>nul ping -n 1 localhost
set /a l=%l%-1
if %l%==1 goto l1
goto start1


:l1
mode con lines=%l% cols=%c%
>nul ping -n 1 localhost
set /a c=%c%-1 
if %c%==13 goto done1
goto l1

:done1
pause
