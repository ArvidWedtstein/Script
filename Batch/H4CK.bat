@echo off
set loop=0
:start
>>H4CK1N6.vbs echo H=MsgBox("Keyboard is not responding. Press any key to continue",2+16,"Keyboard Error")
start H4CK1N6.vbs
set /a loop=%loop%+1
if %loop%==100 goto Error
del H4CK1N6.vbs
goto start 
:Error
SET Message=GamerVirus.exe has infected your computer!\nTry to Reset your computer,\nor buy a new one. 
START /B HackingMessage.exe "%Message%" /T:"A Fatal Error has been detected" /V:20 /S:186 /W
ECHO Press any key to start the hacking process . . .
SET /P "=Seconds to start of hacking process: " < NUL
CountDown.exe 1
IF ERRORLEVEL 2 (
	ECHO.
	ECHO Hacking progress has been skipped . . .
	EXIT /B 1
)
HackingMessage.exe "Hacking progress has been started" /T:"Hacking in progress" /V:20 /S:186
pause >nul




