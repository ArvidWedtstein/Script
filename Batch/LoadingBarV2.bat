@echo off
setlocal enableextensions enabledelayedexpansion
for /f %%a in ('copy /Z "%~dpf0" nul') do set "CR=%%a"

echo My progress bar:
REM Operation to execute
ping 123.45.67.89 -n 1 -w 500 > nul
call :NEW_STEP 30
ping 123.45.67.89 -n 1 -w 500 > nul
call :NEW_STEP 60
ping 123.45.67.89 -n 1 -w 500 > nul
call :NEW_STEP 100

PAUSE>NUL
goto :EOF
:NEW_STEP

set percentage=%1%

REM We draw the progress bar.
set "tmp=["
:UP_BAR
if /i !i! leq !percentage! (
set "tmp=!tmp!#"
) else (
set "tmp=!tmp! "
)
set /a i = i + 5
if /i !i! leq 100 goto :UP_BAR
set "tmp=!tmp!]"

REM We display the progress bar
if !percentage! equ 100 (
echo !tmp!
) else (
<nul set /p ".=!tmp!!CR!"
)

title !percentage!%% Completed
exit /b
endlocal