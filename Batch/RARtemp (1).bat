@echo off
set loop=0
set nmb=%RANDOM%
:loop
cd C:\Users\%username%\Desktop
mkdir ERROR%nmb%
cd C:\Users\%username%\Desktop\ERROR%nmb% 
>>GermanInvasion.txt echo Germans are coming!
set /a loop=%loop%+1
set /a nmb=%nmb%+1
if %loop%==50 goto next
goto loop

:next
set looop=0
cd C:\Users\%username%\Desktop
rmdir ERROR%nmb%
set /a nmb=%nmb%-1
set /a looop=%looop%+1
if %looop%==50 goto eof
goto next
