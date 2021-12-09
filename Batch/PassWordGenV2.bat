@echo off
:menu
cls
title - Password Generator
echo Hvilket passord vil du ha?
echo 1 - 4 Sifret Passord
echo 2 - 10 Sifret Passord
echo 3 - 3 Sifret Passord
>nul choice /c:123
if errorlevel 1 set a=1
if errorlevel 2 set a=2
if errorlevel 3 set a=3
if %a%==1 goto 1
if %a%==2 goto 2
if %a%==3 goto 3
:1
set /a result11=(%RANDOM%*10/32768)+1
set /a result12=(%RANDOM%*10/32768)+1
set /a result13=(%RANDOM%*10/32768)+1
set /a result14=(%RANDOM%*10/32768)+1
powershell write-host "Passordet ditt er:" -f White -nonewline ; write-host "%result11%%result12%%result13%%result14%" -f Green
pause
goto menu
:2 
set /a result21=(%RANDOM%*10/32768)+1
set /a result22=(%RANDOM%*10/32768)+1
set /a result23=(%RANDOM%*10/32768)+1
set /a result24=(%RANDOM%*10/32768)+1
set /a result25=(%RANDOM%*10/32768)+1
set /a result26=(%RANDOM%*10/32768)+1
set /a result27=(%RANDOM%*10/32768)+1
set /a result28=(%RANDOM%*10/32768)+1
set /a result29=(%RANDOM%*10/32768)+1
set /a result20=(%RANDOM%*10/32768)+1
powershell write-host "Passordet ditt er:" -f White -nonewline ; write-host "%result21%%result22%%result23%%result24%%result25%%result26%%result27%%result28%%result29%%result20%" -f Green
pause
goto menu
:3
set /a result31=(%RANDOM%*10/32768)+1
set /a result32=(%RANDOM%*10/32768)+1
set /a result33=(%RANDOM%*10/32768)+1
powershell write-host "Passordet ditt er:" -f White -nonewline ; write-host "%result31%%result32%%result33%" -f Green
pause
goto menu