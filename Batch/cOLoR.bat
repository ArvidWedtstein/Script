@echo off
:strt
set nmb=%random%
set /a nmb=(%nmb%*3/32767)+1
echo ����������������������������������������������������������������
color 0f
>nul ping -n 1 localhost
color f0
>nul ping -n %nmb% localhost
cls
goto strt