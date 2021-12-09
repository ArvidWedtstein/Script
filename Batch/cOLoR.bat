@echo off
:strt
set nmb=%random%
set /a nmb=(%nmb%*3/32767)+1
echo 컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
color 0f
>nul ping -n 1 localhost
color f0
>nul ping -n %nmb% localhost
cls
goto strt