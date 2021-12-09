@echo off
:s
cls
title Find spesific file:
set /p file=Enter name of file:
dir /s | find "%file%"
pause
goto s