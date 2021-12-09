#z::Run https://www.autohotkey.com  ; Win+Z

+n::  ; Ctrl+Alt+N
if WinExist("Test - Notepad")
    WinActivate
else
    Run Notepad
Send, AAAAAAAAA

return

g::return