@echo off
:s
cls
start chrome
>nul ping -n 5 localhost
tskill chrome
>nul ping -n 2 localhost
goto s