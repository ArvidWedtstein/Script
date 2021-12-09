@echo off
:a
powershell write-host -fore darkgreen \.\...\.\...\.\...\.\...\.\...\.\...\.\
powershell write-host -fore yellow .\.\...\.\...\.\...\.\...\.\...\.\...\.\
powershell write-host -fore darkyellow ..\.\...\.\...\.\...\.\...\.\...\.\...\.\
powershell write-host -fore darkyellow .././..././..././..././..././..././..././
powershell write-host -fore yellow ././..././..././..././..././..././..././
powershell write-host -fore darkgreen -back white /./..././..././..././..././..././..././
GOTO :a
pause