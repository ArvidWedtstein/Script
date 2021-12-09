@echo off
:start
for /f %%i in ('"prompt $H &for %%b in (1) do rem"') do set "bs=%%i"

for %%i in ( H v a " " h e t e r " " d u "?") do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo ?
echo.
set /p navn=

for /f %%i in ('"prompt $H &for %%b in (1) do rem"') do set "bs=%%i"

for %%i in ( V e l k o m m e n  " "  %navn% ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( Û Û Û Û Û Û Û Û Û Û Û Û Û  ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
>nul ping -n 2 localhost
cls
:stmenu
cls
for %%i in ( ษ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ ห อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ ห อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ ป ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
echo ฬ 1) Open Command Promptฬ 3) Open Word          ฬ 5) Open Excel         บ
echo ฬ 2) Open Wordpad       ฬ 4) Open Powerpoint    ฬ 6) Open Settings      บ
for %%i in ( ศ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ ส อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ ส อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ อ ผ ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
choice /C:123456
if errorlevel 1 set a=1
if errorlevel 2 set a=2
if errorlevel 3 set a=3
if errorlevel 4 set a=4
if errorlevel 5 set a=5
if errorlevel 6 set a=6
if %a%==1 goto cmd
if %a%==2 goto wordpad
if %a%==3 goto word
if %a%==4 goto powerpnt
if %a%==5 goto excel
if %a%==6 goto settings

:cmd
start cmd.exe
goto stmenu 

:wordpad
start wordpad.exe
goto stmenu

:word
cls
echo ษอออออออออออออออออออออออออป
echo ฬ 1) Create new word file บ
echo ฬ 2) Back                 บ
echo ศอออออออออออออออออออออออออผ
choice /c:12
if errorlevel 1 set w=1
if errorlevel 2 set w=2
if %w%==1 start WINWORD.exe
if %w%==2 goto stmenu

:powerpnt
start powerpnt.exe
goto stmenu

:excel
start excel.exe
goto stmenu

:settings
cls
set /a full = 20
for /l %%a in (1,1,%full%) do (
 CALL:ADDSPACE)
for /l %%b in (1,1,%full%) do (
 CALL:PROGRESS %%b
)
del _temp.bat
exit/b
:ADDSPACE
 set "fullBar=%fullBar%_"
 set "tags=%tags%Û"
 exit/b
:PROGRESS
set number=%~1
set /a pct=full-number
 (
  echo/echo/[%%tags:~0,%~1%%%%fullBar:~0,%pct%%%]
 )>_temp.bat
 call _temp.bat
 timeout 1 1>nul&cls
start Control.exe
goto stmenu
