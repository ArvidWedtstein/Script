@echo off
mode con lines=11 cols=18
set loop=0
set nmb=0
:loop
echo %nmb%-  -  -  -  -
echo %nmb%-  -  -  -  -  
echo %nmb%-  -  -  -  -
echo %nmb%-  -  -  -  -
echo %nmb%-  -  -  -  -
echo %nmb%-  -  -  -  -
echo %nmb%-  -  -  -  -
echo %nmb%-  -  -  -  -
echo %nmb%-  -  -  -  -
set /a nmb=%nmb%+1
set /a loop=%loop%+1
if %loop%==61 goto nxt
>nul ping -n 1 localhost
cls
goto loop

:nxt
set loop2=0
set nmb2=0
:loop2
echo %nmb%-%nmb2%-  -  -  -
echo %nmb%-%nmb2%-  -  -  - 
echo %nmb%-%nmb2%-  -  -  - 
echo %nmb%-%nmb2%-  -  -  - 
echo %nmb%-%nmb2%-  -  -  - 
echo %nmb%-%nmb2%-  -  -  - 
echo %nmb%-%nmb2%-  -  -  - 
echo %nmb%-%nmb2%-  -  -  - 
echo %nmb%-%nmb2%-  -  -  -  
set /a nmb2=%nmb2%+1
set /a loop2=%loop2%+1
if %loop2%==71 goto nxt2
>nul ping -n 1 localhost
cls
goto loop2

:nxt2 
set loop3=0
set nmb3=0
:loop3
echo %nmb%-%nmb2%-%nmb3%-  -  -
echo %nmb%-%nmb2%-%nmb3%-  -  -
echo %nmb%-%nmb2%-%nmb3%-  -  -
echo %nmb%-%nmb2%-%nmb3%-  -  -
echo %nmb%-%nmb2%-%nmb3%-  -  -
echo %nmb%-%nmb2%-%nmb3%-  -  -
echo %nmb%-%nmb2%-%nmb3%-  -  -
echo %nmb%-%nmb2%-%nmb3%-  -  -
echo %nmb%-%nmb2%-%nmb3%-  -  -
set /a nmb3=%nmb3%+1
set /a loop3=%loop3%+1
if %loop3%==81 goto nxt3
>nul ping -n 1 localhost
cls
goto loop3

:nxt3
set loop4=0
set nmb4=0
:loop4
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-  -
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-  -
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-  -
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-  -
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-  -
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-  -
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-  -
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-  -
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-  -
set /a nmb4=%nmb4%+1
set /a loop4=%loop4%+1
if %loop4%==37 goto nxt4
>nul ping -n 1 localhost
cls
goto loop4

:nxt4
set loop5=0
set nmb5=0
:loop5
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-  
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-
set /a nmb5=%nmb5%+1
set /a loop5=%loop5%+1
if %loop5%==96 goto nxt5
>nul ping -n 1 localhost
cls
goto loop5

:nxt5
set loop6=0
set nmb6=0
:loop6
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-%nmb6%
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-%nmb6%
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-%nmb6%
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-%nmb6%
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-%nmb6%
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-%nmb6%
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-%nmb6%
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-%nmb6%
echo %nmb%-%nmb2%-%nmb3%-%nmb4%-%nmb5%-%nmb6%
set /a nmb6=%nmb6%+1
set /a loop6=%loop6%+1
if %loop6%==43 goto nxt6
>nul ping -n 1 localhost
cls
goto loop6

:nxt6
pause