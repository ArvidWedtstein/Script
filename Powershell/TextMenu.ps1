PowerShell.exe -windowstyle hidden {
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()
$Form = New-Object System.Windows.Forms.Form
$Form.ClientSize = "400,400"
$Form.ControlBox = $false
$Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Form.BackColor = "Black"
$Panel = New-Object System.Windows.Forms.Panel
$Panel.Location = New-Object System.Drawing.Point(175,175)
$Panel.Size = New-Object System.Drawing.Size(50,50)
$Panel.BackColor = "White"
$Panel.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$Panel.Enabled = $true
$Form.Add_KeyDown({
    if($_.KeyCode -eq "Escape") {
		$x = 400
		$y = 400
		do 
		{
		$y--
		$Form.ClientSize = "400,$y"
		Start-Sleep -m 0.5
		}
		until ($y -le 50)
		do
		{
		$x--
		$Form.ClientSize = "$x,50"
		Start-Sleep -m 0.5
		}
		until ($x -le 150)
        $Form.Close()
	}
})
$Label1 = New-Object system.Windows.Forms.Label
$Label1.text = "TEST"
$Label1.AutoSize = $true
$Label1.width = 25
$Label1.height = 10
$Label1.BackColor = "White"
$Label1.AutoSize = $true
$Label1.location = New-Object System.Drawing.Point(1,1)
$Label1.Font = 'Microsoft Sans Serif,10'

$Form.Add_KeyDown({
	if($_.KeyCode -eq "T") {
		$Label1.text = "True"
		Add-Content -path C:\Users\arviwed0310\Documents\log.txt -Value "Changed text to True"
	}
})
$Form.Add_KeyDown({
	if($_.KeyCode -eq "F") {
		$Label1.text = "False"
		Add-Content -path C:\Users\arviwed0310\Documents\log.txt -Value "Changed text to False"
	}
})
$Form.Add_KeyDown({
	if($_.KeyCode -eq "Enter") {
		$Label1.text = "Press F to pay respect"
		Add-Content -path C:\Users\arviwed0310\Documents\log.txt -Value "User pressed Enter"
	}
})
$Form.Add_KeyDown({
	if($_.KeyCode -eq "H") {
		Add-Content -path C:\Users\arviwed0310\Documents\log.txt -Value "F"
		} 
	})
((Get-Content -path C:\Users\arviwed0310\Documents\log.txt -Raw) -replace 'Help','text') | Set-Content -Path C:\Users\arviwed0310\Documents\log.txt
Add-Content -path C:\Users\arviwed0310\Documents\log.txt -Value "This is line $_."
$Form.Controls.Add($Panel)
$Form.Controls.Add($Label1)
$Form.ShowDialog()
}