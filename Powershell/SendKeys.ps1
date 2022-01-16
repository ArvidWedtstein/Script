[System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")
[Microsoft.VisualBasic.Interaction]::AppActivate("Chrome - Windows")
$myshell = New-Object -com "Wscript.Shell"
$myshell.sendkeys("{DEL}")

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.SendKeys]::SendWait("^%{DELETE}")
#Andre M�te
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.SendKeys]::SendWait("^%{DELETE}")
Start-Sleep 100
