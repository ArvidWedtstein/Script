@echo off
setlocal EnableDelayedExpansion
set n=0
for %%f in (*.*) do set /A n+=1
echo %n%
set "bar="
for /L %%i in (1,1,70) do set "bar=!bar!Û"
set "space="
for /L %%i in (1,1,110) do set "space=!space!_"
set i=0
echo Processing files:
for %%f in (*.*) do (
   set /A i+=1, percent=i*100/n, barLen=70*percent/100
   for %%a in (!barLen!) do title !percent!%%  !bar:~0,%%a!%space%
   echo !i!- %%f
   ping -n 1 localhost > NUL
)
title MS-DOS
pause