@echo off
set loop=0
:looop
mkdir virus
cd virus
cd. > ErrorWarning.vbs
Echo H=MsgBox("Virus has been detected. Please shut down",2+16,"Alert!") >"ErrorWarning.vbs"
set /a loop=%loop%+1
if %loop%==10 goto eof
goto looop
