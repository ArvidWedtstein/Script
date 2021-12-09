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
$Panel.BackColor = "Black"
$Panel.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$Panel.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"black","Red")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })
$Panel.Enabled = $true
$Form.Add_KeyDown({
    if($_.KeyCode -eq "Escape") {
        $Form.Close()
            }
})
$x = 175
$y = 175
$Form.Add_KeyDown({
    if($_.KeyCode -eq "W") {
        $y = $Panel.Location.Y
        $x = $Panel.Location.X
        $y--
        $y--
        $Panel.Location = New-Object System.Drawing.Point($x,$y)
        Start-Sleep -m 0.5
	[System.Windows.Forms.Cursor]::Position = "$x,$y"
	if($Panel.Location.Y -le 0) {
		$y++
		$y++
		$Panel.Location = New-Object System.Drawing.Point($x,$y)
		Start-Sleep -m 0.5
	}
    }
})
$Form.Add_KeyDown({
    if($_.KeyCode -eq "S") {
        $y = $Panel.Location.Y
        $x = $Panel.Location.X
        $y++
        $y++
        $Panel.Location = New-Object System.Drawing.Point($x,$y)
        Start-Sleep -m 0.5
	[System.Windows.Forms.Cursor]::Position = "$x,$y"
    }
})
$Form.Add_KeyDown({
    if($_.KeyCode -eq "A") {
        $x = $Panel.Location.X
        $y = $Panel.Location.Y
        $x--
        $x--
        $Panel.Location = New-Object System.Drawing.Point($x,$y)
        Start-Sleep -m 0.5
	[System.Windows.Forms.Cursor]::Position = "$x,$y"
    }
})
$Form.Add_KeyDown({
    if($_.KeyCode -eq "D") {
        $x = $Panel.Location.X
        $y = $Panel.Location.Y
        $x++
        $x++
        $Panel.Location = New-Object System.Drawing.Point($x,$y)
        Start-Sleep -m 0.5
	[System.Windows.Forms.Cursor]::Position = "$x,$y"
    }
})
$Form.Add_KeyDown({
if($_.KeyCode -eq "J") {
Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern void mouse_event(int flags, int dx, int dy, int cButtons, int info);' -Name U32 -Namespace W;
[W.U32]::mouse_event(6,0,0,0,0);
	}
})	
$Form.Controls.Add($Panel)
$Form.ShowDialog()
}