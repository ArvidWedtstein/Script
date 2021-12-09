@echo off
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & for %%b in (1) do rem"') do (
	set "DEL=%%a"
)
SETLOCAL EnableDelayedExpansion

:goto
call :C F4 "W"
call :C FC "e"
call :C FE "l"
call :C F6 "c"
call :C FD "o"
call :C FA "m"
call :C F2 "e"
call :C FB " F"
call :C F3 "o"
call :C F9 "r"
call :C F1 "s"
call :C FD "a"
call :C F5 "m"
call :C FC "li"
call :C F4 "ng"
echo.
call :C FC "Mi"
call :C F5 "tt"
call :C FD " na"
call :C F1 "vn"
call :C F9 " er"
call :C F3 " ()"
call :C FB "()"
call :C F2 "-"
echo.
call :C BF "H"
call :C FB "e"
call :C BF "l"
call :C FB "l"
call :C BF "o"
echo.
goto goto


:C
echo off
<nul set /p ".=%DEL%" > "%Temp%\%~2"
cd %Temp%
findstr /v /a:%1 /R "^$" "%~2" nul
del "%Temp%\%~2" > nul 2>&1
goto :eof



