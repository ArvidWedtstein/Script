@echo off
mshta javascript:alert("Message\n\nMultiple\nLines\ntoo!\nSHIT");close();
rundll32.exe cmdext.dll,MessageBeepStub
mshta.exe vbscript:Execute("msgbox ""message"",0,""title"":close")
rundll32.exe cmdext.dll,MessageBeepStub
powershell (New-Object -ComObject Wscript.Shell).Popup("""Operation Completed""",0,"""Done""",0x30)
rundll32.exe cmdext.dll,MessageBeepStub
pause