Powershell.exe -windowstyle hidden {
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageIcon = [System.Windows.MessageBoxImage]::Hand
$MessageBody = "Oops! Noe gikk galt."
$MessageTitle = "Systemfeil"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
$Shell = New-Object -com "Wscript.Shell"
#$Shell.Run("iexplore.exe")
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
while($true) {
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
}
}