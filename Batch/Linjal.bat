@echo off
for /f %%i in ('"prompt $H &for %%b in (1) do rem"') do set "bs=%%i"
for %%i in ( � � � � � � � � � � � � � � � � ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( � � � � � � � � � � � � � � � � ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( � "    " � "    " � "    " � ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
pause 
