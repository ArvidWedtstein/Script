@echo off
::PROGRESS BAR
set /a full = 50
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