@echo off
title Loading...
for /f %%i in ('"prompt $H &for %%b in (1) do rem"') do set "bs=%%i"
echo.
for %%i in ( É ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
for %%i in ( Í ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( º ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( º ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( º ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
pause