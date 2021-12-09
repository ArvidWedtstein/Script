@echo off
:strt
set /a nmb=(%random%*50/32768)+1
title Lines: %nmb%
mode con lines=%nmb% cols=%nmb%
goto strt

