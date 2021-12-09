PowerShell.exe -windowstyle hidden {
Add-Type -AssemblyName System.Windows.Forms
$x = 20
$y = 20
do
{
$x++
[System.Windows.Forms.Cursor]::Position = "$x,20"
Start-Sleep -m 0.5
}
until ($x -ge 1260)
Start-Sleep -m 10
do
{
$y++
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($y -ge 700)
Start-Sleep -m 10
do 
{
$x--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($x -le 20)
Start-Sleep -m 10
do
{
$y--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($y -le 20)
Start-Sleep -m 10
do
{
$x++
[System.Windows.Forms.Cursor]::Position = "$x,20"
Start-Sleep -m 0.5
}
until ($x -ge 1260)
Start-Sleep -m 10
do
{
$y++
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($y -ge 700)
Start-Sleep -m 10
do 
{
$x--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($x -le 20)
Start-Sleep -m 10
do
{
$y--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($y -le 20)
Start-Sleep -m 10
do
{
$x++
[System.Windows.Forms.Cursor]::Position = "$x,20"
Start-Sleep -m 0.5
}
until ($x -ge 1260)
Start-Sleep -m 10
do
{
$y++
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($y -ge 700)
Start-Sleep -m 10
do 
{
$x--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($x -le 20)
Start-Sleep -m 10
do
{
$y--
[System.Windows.Forms.Cursor]::Position = "$x,$y"
Start-Sleep -m 0.5
}
until ($y -le 20)
}

