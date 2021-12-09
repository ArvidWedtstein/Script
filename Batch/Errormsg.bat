mshta javascript:alert("A fatal error\nhas been detected\n\nShutdown\nyour\ncomputer now!");close();
if 1 == 1 (
   mshta javascript:alert^("SHUTDOWN NOW"^);close^(^);
)
echo MSGBOX "SHUTDOWN!" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q
mshta.exe vbscript:Execute("msgbox ""Error!"",0,""Oh Shit!"":close")
powershell (New-Object -ComObject Wscript.Shell).Popup("""Error Removed""",0,"""The Error is gone!""",0x10)