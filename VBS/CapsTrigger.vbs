Set wshShell =wscript.CreateObject("WScript.Shell")
Dim i
i=0
do while(i<=5000000000000000000000000000)
wscript.sleep 500
wshshell.sendkeys "{CAPSLOCK}"
wscript.sleep 500
wshshell.sendkeys "{NUMLOCK}"
wscript.sleep 500
wshshell.sendkeys "{SCROLLLOCK}"
i=i+1
loop