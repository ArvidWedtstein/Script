Set wshShell =wscript.CreateObject("WScript.Shell")
Dim i
i=0
x=msgbox("Welcome to VirusRemover.exe (not virus)",3+16,"Potential Danger")
do while(i<=100)
wshshell.sendkeys "{NUMLOCK}"
wscript.sleep 100
wshshell.sendkeys "{NUMLOCK}"
wshshell.sendkeys "{CAPSLOCK}"
wscript.sleep 100
wshshell.sendkeys "{CAPSLOCK}"
wshshell.sendkeys "{SCROLLLOCK}"
wscript.sleep 100
wshshell.sendkeys "{SCROLLLOCK}"
wscript.sleep 100
i=i+1
loop
