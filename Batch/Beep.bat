@echo off
:test
rundll32.exe cmdext.dll,MessageBeepStub
pause
goto test