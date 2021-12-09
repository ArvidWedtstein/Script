@echo off
mshta javascript:alert("A fatal error\nhas been detected\n\nShutdown\nyour\ncomputer now!");close();
if 1 == 1 (
   mshta javascript:alert^("SHUTDOWN NOW"^);close^(^);
)
mshta "javascript:var sh=new ActiveXObject( 'WScript.Shell' ); sh.Popup( 'Warning!', 10, ':D', 64 );close()"
echo MSGBOX "SHUTDOWN!" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q
mshta.exe vbscript:Execute("msgbox ""Error!"",0,""Oh Shit!"":close")
powershell (New-Object -ComObject Wscript.Shell).Popup("""Error Removed""",2,"""The Error is gone!""",0x10)
ping localhost -n 2 >nul
start error.vbs
ping localhost -n 2 >nul
SET Message=GamerVirus.exe has infected your computer!\nPlease give me your password and uninsatall every antivirus program,\nor Press any key to start the hacking process.
START /B HackingMessage.exe "%Message%" /T:"Hacking Time!" /V:20 /S:186 /W
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



