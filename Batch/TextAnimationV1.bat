@echo off
title Text Animation
for /f %%i in ('"prompt $H &for %%b in (1) do rem"') do set "bs=%%i"
for %%i in ( H e i " " %username% ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
set lowshade=²
echo %lowshade%%lowshade%%lowshade%%lowshade%%lowshade%%lowshade%%lowshade%%lowshade%
pause