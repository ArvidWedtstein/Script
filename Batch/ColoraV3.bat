@echo off
color f0
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & for %%b in (1) do rem"') do (
	set "DEL=%%a"
)
SETLOCAL EnableDelayedExpansion
SET nmb=2
:g
call :C FB "�"
title -�
call :C F3 "�"
title - �
call :C F9 "�"
title -  �
call :C F1 "�"
title - �
call :C FA "�"
title -�
call :C F2 "�"
title -��
call :C FD "�"
title -���
call :C F5 "�"
title -��
call :C FE "�"
title -�
call :C F6 "�"
title -��
call :C FC "�"
title -���
call :C F4 "�"
title -
echo.
set /a nmb=%nmb%+1
if %nmb%==10 goto nxt && cls
goto g
:nxt
cls
call :C F1 " `````````````````````````````````````````"
echo.
call :C FA " `````````````------``````````````````````"
echo.
call :C F2 " ``````````------------```````````````````"
echo.
call :C FD " ``````--------------------```````````````"
echo.
call :C F5 " ```--------------------------````````````"
echo.
call :C FE " ++------------------------------`````````"
echo.
call :C F6 " +++++-----------------------====`````````"
echo.
call :C FC " ++++++++-----------------=======`````````"
echo.
call :C F4 " ++++++++++++---------===========`````````"
echo.
call :C FC " +++++++++++++++=================`````````"
echo.
call :C F6 " ++++++++++++++++================`````````"
echo.
call :C FE " ++++++++++++++++================`````````"
echo.
call :C F5 " ++++++++++++++++================`````````"
echo.
call :C FD " ++++++++++++++++================`````````"
echo.
call :C F2 " +++++++++++++++++===============-````````"
echo.
call :C F2 " ----+++++++++++++++=============-````````"
echo.
call :C FA " ```---++++++++++++=========--````````````"
echo.
call :C FA " ``````----++++++++======-````````````````"
echo.
call :C F1 " ````````...---+++++===..`````````````````"
echo.
call :C F1 " ```````````..-----..`````````````````````"
echo.
pause


:C
echo off
<nul set /p ".=%DEL%" > "%Temp%\%~2"
cd %Temp%
findstr /v /a:%1 /R "^$" "%~2" nul
del "%Temp%\%~2" > nul 2>&1
goto :eof