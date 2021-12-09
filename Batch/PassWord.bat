@echo off
:pass1
cls
echo Skriv inn passord:
set /p pass1=
if %pass1%==1 (goto pass2) else (goto pass1)

:pass2
cls
echo Skriv inn passord:
set /p pass1=*
if %pass1%==2 (goto pass3) else (goto pass2)

:pass3
cls
echo Skriv inn passord:
set /p pass1=**
if %pass1%==3 (goto pass4) else (goto pass3)

:pass4 
cls
echo Skriv inn passord:
set /p pass1=***
if %pass1%==4 (goto unlock) else (goto pass4)

:unlock
cls
echo Write command:
set /p comm=
%comm%
if %comm%==lock (goto end) else (>nul ping -n 3 localhost)
goto unlock
 