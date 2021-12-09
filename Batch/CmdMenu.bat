@echo off
color 0b
:menu
cls
echo ..........................
echo 1 - Notepad
echo 2 - Kalkulator
echo 3 - Chrome
echo 4 - Matrix
echo 5 - Excel
echo 6 - PowerPoint
echo 7 - OneNote
echo 8 - Word
echo 9 - Innstillinger
echo 10 - Paint
echo 11 - Utklippsverktoy
echo 12 - TegnListe
echo 13 - MatteInndatapanel
echo 14 - Prosesser
echo 15 - MuseScore
echo 16 - Logg
echo 17 - Systeminfo
echo 18 - Tjenester
echo 19 - Pcens Ytelse
echo 20 - Datamaskinbehandling
echo 21 - PowerShell
echo 22 - Mozilla Firefox
echo x  - Exit
echo ..........................
set /p M=Trykk et tall fra 1-20 eller x og trykk ENTER:
if %m%==1 goto note
if %m%==2 goto calc
if %m%==3 start https://www.google.no/
if %m%==4 goto matrix
if %m%==x goto eof
if %m%==5 goto excel
if %m%==6 goto powerpoint
if %m%==7 goto onenote
if %m%==8 goto word
if %m%==9 goto settings
if %m%==10 goto paint
if %m%==11 goto utklipp
if %m%==12 goto tegn
if %m%==13 goto matte
if %m%==14 goto prosess
if %m%==15 goto score
if %m%==16 goto hendelse
if %m%==17 goto system
if %m%==18 goto tjenester
if %m%==19 goto ytelse
if %m%==20 goto data
if %m%==21 goto powershell
if %m%==22 goto firefox
:NOTE
cd %windir%\system32\notepad.exe
start notepad.exe
GOTO MENU
:CALC
cd %windir%\system32\calc.exe
start calc.exe
GOTO MENU
:matrix
set loop=0
:start
echo.
:: create a backspace character
for /f %%i in ('"prompt $H &for %%b in (1) do rem"') do set "bs=%%i"

:: animate the string
for %%i in ( L o a d i n g "","") do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
:Loading
echo:
echo ---------------
:: create a backspace character
for /f %%l in ('"prompt $H &for %%b in (1) do rem"') do set "bs=%%l"

:: animate the string
for %%l in ( Û Û Û Û Û Û Û Û Û Û Û Û Û ) do (<nul set /p "=.%bs%%%~l" & >nul ping -n 1 localhost)
echo:
echo ---------------
>nul ping -n 2 localhost
set /a loop=%loop%+1 
if "%loop%"=="1" goto next
cls
goto start
:next
cls
echo.
echo Loading Complete...
cd %windir%\system32\matrix.bat
start matrix.bat
goto menu
:excel
cd %windir%\system32\excel.exe
start excel.exe 
goto menu
:powerpoint
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start powerpnt.exe
goto menu
:onenote
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start OneNote.exe
goto menu
:word
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start WINWORD.EXE
goto menu
:settings
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start Control.exe
goto menu
:paint
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start mspaint.exe
goto menu
:utklipp
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start SnippingTool.exe
goto menu
:tegn
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start charmap.exe
goto menu
:matte
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start mip.exe
goto menu
:prosess
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start taskmgr.exe
goto menu
:score
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start MuseScore.exe
goto menu
:hendelse
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start eventvwr.msc
goto menu
:system
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start msinfo32.exe
goto menu
:tjenester
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start services.msc
goto menu
:ytelse
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start perfmon.msc
goto menu
:data
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs
start compmgmt.msc
goto menu
:powershell
cd C:\Users\arviwed0310\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
start PowerShell.exe
goto menu
:firefox
cd C:\Users\arviwed0310\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
start firefox.exe
goto menu
