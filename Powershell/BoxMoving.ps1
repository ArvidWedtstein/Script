Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()
$Form = New-Object System.Windows.Forms.Form
$Form.ClientSize = "600,400"
$Form.ControlBox = $false
$Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Form.BackColor = "Black"

$mypen = new-object Drawing.Pen Red

# Create a Rectangle object for use when drawing rectangle
#$rect = new-object Drawing.Rectangle 10, 10, 180, 180
$formGraphics = $Form.createGraphics()

function do-interface {
$testFailed = Get-Random -Maximum 2
Write-Host $testFailed
$myBrush = new-object System.Drawing.SolidBrush ("White", "White")[$testFailed]
$formGraphics.FillEllipse($myBrush, 150, 150, 100, 100 ) # draw an ellipse using rectangle object
$formGraphics.FillRectangle($myBrush, 0, 0, 400, 400 )
$mypen.width = 20
$mypen.Color = "Red"
#$ps1 = new-object Drawing.Point 140, 200
#$ps2 = new-object Drawing.Point 140, 280
#$ps3 = new-object Drawing.Point 260, 280
#$ps4 = new-object Drawing.Point 260, 200
#$formGraphics.DrawBezier($mypen, $ps1, $ps2, $ps3, $ps4)
} 



# Define the paint handler

$Form.add_paint(
{

#delete this method, if you need it

#$formGraphics.FillEllipse($myBrush, $rect) # draw an ellipse using rectangle object

}

)

$Form.Add_Shown({$Form.Activate()})

$Form.Add_KeyDown({
    if($_.KeyCode -eq "H") {
        do-interface
        $Form.Controls.Add($Panel)
    }
})



$Panel = New-Object System.Windows.Forms.Panel
$Panel.Location = New-Object System.Drawing.Point(175,175)
$Panel.Size = New-Object System.Drawing.Size(50,50)
$Panel.BackColor = "Black"
$Panel.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$Panel.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"black","Red")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })
$Panel.Enabled = $false
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.width = 40
$PictureBox1.height = 40
$PictureBox1.location = New-Object System.Drawing.Point(3,3)
$PictureBox1.imageLocation = "C:\Users\arviwed0310\Pictures\WinBack.jpg"
$PictureBox1.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::zoom

$Panel2 = New-Object System.Windows.Forms.Panel
$Panel2.Location = New-Object System.Drawing.Point(410,10)
$Panel2.Size = New-Object System.Drawing.Size(180,380)
$Panel2.BackColor = "Black"
$Panel2.BorderStyle = [System.Windows.Forms.BorderStyle]::None

$Panel3 = New-Object System.Windows.Forms.Panel
$Panel3.Location = New-Object System.Drawing.Point(401,0)
$Panel3.Size = New-Object System.Drawing.Size(10,200)
$Panel3.BackColor = "Red"
$Panel3.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$Panel3.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"#000000","#4BFFFF")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })

$Panel4 = New-Object System.Windows.Forms.Panel
$Panel4.Location = New-Object System.Drawing.Point(401,200)
$Panel4.Size = New-Object System.Drawing.Size(10,200)
$Panel4.BackColor = "Red"
$Panel4.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$Panel4.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"#4BFFFF","#000000")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })

$Panel5 = New-Object System.Windows.Forms.Panel
$Panel5.Location = New-Object System.Drawing.Point(590,0)
$Panel5.Size = New-Object System.Drawing.Size(10,200)
$Panel5.BackColor = "Red"
$Panel5.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$Panel5.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"#000000","#4BFFFF")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })

$Panel6 = New-Object System.Windows.Forms.Panel
$Panel6.Location = New-Object System.Drawing.Point(590,200)
$Panel6.Size = New-Object System.Drawing.Size(10,200)
$Panel6.BackColor = "Red"
$Panel6.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$Panel6.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"#4BFFFF","#000000")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })

$Panel7 = New-Object System.Windows.Forms.Panel
$Panel7.Location = New-Object System.Drawing.Point(410,0)
$Panel7.Size = New-Object System.Drawing.Size(90,10)
$Panel7.BackColor = "Red"
$Panel7.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$Panel7.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"#000000","#4BFFFF")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })

$Panel8 = New-Object System.Windows.Forms.Panel
$Panel8.Location = New-Object System.Drawing.Point(410,390)
$Panel8.Size = New-Object System.Drawing.Size(90,10)
$Panel8.BackColor = "Red"
$Panel8.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$Panel8.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"#000000","#4BFFFF")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })

$Panel9 = New-Object System.Windows.Forms.Panel
$Panel9.Location = New-Object System.Drawing.Point(500,0)
$Panel9.Size = New-Object System.Drawing.Size(90,10)
$Panel9.BackColor = "Red"
$Panel9.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$Panel9.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"#4BFFFF","#000000")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })

$Panel10 = New-Object System.Windows.Forms.Panel
$Panel10.Location = New-Object System.Drawing.Point(500,390)
$Panel10.Size = New-Object System.Drawing.Size(90,10)
$Panel10.BackColor = "Red"
$Panel10.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$Panel10.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"#4BFFFF","#000000")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })

$Text = New-Object System.Windows.Forms.Label
$Text.Location = New-Object System.Drawing.Point(10,10)
$Text.Size = New-Object System.Drawing.Size(100,30)
$Text.Text = "ESC = Lukk"
$Text.ForeColor = "White"
$Text.BackColor = "transparent"
$Text.Font = "Rockwell"
$Panel2.Controls.Add($Text)

$Text2 = New-Object System.Windows.Forms.Label
$Text2.Location = New-Object System.Drawing.Point(10,40)
$Text2.Size = New-Object System.Drawing.Size(100,30)
$Text2.Text = "O = Utvid"
$Text2.ForeColor = "White"
$Text2.BackColor = "transparent"
$Text2.Font = "Rockwell"
$Panel2.Controls.Add($Text2)

$Text3 = New-Object System.Windows.Forms.Label
$Text3.Location = New-Object System.Drawing.Point(10,70)
$Text3.Size = New-Object System.Drawing.Size(150,30)
$Text3.Text = "X = Tegn en X"
$Text3.ForeColor = "White"
$Text3.Font = "Rockwell"
$Panel2.Controls.Add($Text3)

$Text4 = New-Object System.Windows.Forms.Label
$Text4.Location = New-Object System.Drawing.Point(10,100)
$Text4.Size = New-Object System.Drawing.Size(150,30)
$Text4.Text = "N = Legg til bilde"
$Text4.ForeColor = "White"
$Text4.Font = "Rockwell"
$Panel2.Controls.Add($Text4)

$Text5 = New-Object System.Windows.Forms.Label
$Text5.Location = New-Object System.Drawing.Point(10,130)
$Text5.Size = New-Object System.Drawing.Size(150,30)
$Text5.Text = "M = Fjern bilde"
$Text5.ForeColor = "White"
$Text5.Font = "Rockwell"
$Panel2.Controls.Add($Text5)

$Text6 = New-Object System.Windows.Forms.Label
$Text6.Location = New-Object System.Drawing.Point(10,160)
$Text6.Size = New-Object System.Drawing.Size(180,45)
$Text6.Text = "T = Gå frem og tilbake"
$Text6.ForeColor = "White"
$Text6.Font = "Rockwell"
$Panel2.Controls.Add($Text6)

$Text7 = New-Object System.Windows.Forms.Label
$Text7.Location = New-Object System.Drawing.Point(10,210)
$Text7.Size = New-Object System.Drawing.Size(180,30)
$Text7.Text = "E = Gå i firkant"
$Text7.ForeColor = "White"
$Text7.Font = "Rockwell"
$Panel2.Controls.Add($Text7)

$Text8 = New-Object System.Windows.Forms.Label
$Text8.Location = New-Object System.Drawing.Point(10,240)
$Text8.Size = New-Object System.Drawing.Size(180,30)
$Text8.Text = "W = Opp"
$Text8.ForeColor = "White"
$Text8.Font = "Rockwell"
$Panel2.Controls.Add($Text8)

$Text9 = New-Object System.Windows.Forms.Label
$Text9.Location = New-Object System.Drawing.Point(10,270)
$Text9.Size = New-Object System.Drawing.Size(100,30)
$Text9.Text = "S = Ned"
$Text9.ForeColor = "White"
$Text9.Font = "Rockwell"
$Panel2.Controls.Add($Text9)

$Text10 = New-Object System.Windows.Forms.Label
$Text10.Location = New-Object System.Drawing.Point(10,300)
$Text10.Size = New-Object System.Drawing.Size(100,30)
$Text10.Text = "A = Venstre"
$Text10.ForeColor = "White"
$Text10.Font = "Rockwell"
$Panel2.Controls.Add($Text10)

$Text11 = New-Object System.Windows.Forms.Label
$Text11.Location = New-Object System.Drawing.Point(10,330)
$Text11.Size = New-Object System.Drawing.Size(180,30)
$Text11.Text = "D = Høyre"
$Text11.ForeColor = "White"
$Text11.Font = "Rockwell"
$Panel2.Controls.Add($Text11)

$Form.Add_KeyDown({
    if($_.KeyCode -eq "Escape") {
        $Form.Close()
            }
})

$Form.Add_KeyDown({
    if($_.KeyCode -eq "S") {
    $Form.Controls.Add($Panel)
        $y = 175
        $Panel.Enabled = $true
        do
        {
           $y++ 
           $Panel.Location = New-Object System.Drawing.Point(175,$y)
           Start-Sleep -m 0.5
        }
        until ($y -gt 350)
        do
        {
            $y--
            $Panel.Location = New-Object System.Drawing.Point(175,$y)
            Start-Sleep -m 0.5
        }
        until ($y -le 175)
    }
})
$Form.Add_KeyDown({
    if($_.KeyCode -eq "W") {
    $Form.Controls.Add($Panel)
        $y = 175
        $Panel.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"Red","Black")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })
        do
        {
            $y--
            $Panel.Location = New-Object System.Drawing.Point(175,$y)
            Start-Sleep -m 0.5
        }
        until ($y -le 0)
        do
        {
            $y++
            $Panel.Location = New-Object System.Drawing.Point(175,$y)
            Start-Sleep -m 0.5
        }
        until ($y -gt 175)
    }
})
$Form.Add_KeyDown({
    if($_.KeyCode -eq "A") {
    $Form.Controls.Add($Panel)
        $x = 175
        do
        {
            $x--
            $Panel.Location = New-Object System.Drawing.Point($x,175)
            Start-Sleep -m 0.5
        }
        until ($x -le 0)
        do
        {
            $x++
            $Panel.Location = New-Object System.Drawing.Point($x,175)
            Start-Sleep -m 0.5
        }
        until ($x -gt 175)
    }
})
$Form.Add_KeyDown({
    if($_.KeyCode -eq "D") {
    $Form.Controls.Add($Panel)
        $x = 175
        do
        {
            $x++
            $Panel.Location = New-Object System.Drawing.Point($x,175)
            Start-Sleep -m 0.5
        }
        until ($x -gt 350)
        do
        {
            $x--
            $Panel.Location = New-Object System.Drawing.Point($x,175)
            Start-Sleep -m 0.5
        }
        until ($x -le 175)
    }
})
$Form.Add_KeyDown({
    if($_.KeyCode -eq "R") {
        $Form.Controls.Add($Panel)
        $x = 175
        $Box = New-Object System.Windows.Forms.Panel
        $Box.Location = New-Object System.Drawing.Point(225,225)
        $Box.Size = New-Object System.Drawing.Size(125,125)
        $Form.Controls.Add($Box)
        $Box.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"Black","Gray")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })
        do
        {
            $x++
            $Panel.Location = New-Object System.Drawing.Point($x,175)
            Start-Sleep -m 1
        }
        until ($x -gt 350)
        $y = 175
        do
        {
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($y -gt 350)
        do
        {
            $x--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($x -le 175)
        do
        {
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($y -le 175)
        $Form.Controls.Remove($Box)
    }
})
$Form.Add_KeyDown({
    if($_.KeyCode -eq "X") {
    $Form.Controls.Add($Panel)
        $x = 175
        $y = 175
        do
        {
            $x++
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.8
        }
        until ($x -gt 350)
        do
        {
            $x--
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.8
        }
        until ($x -le 175)
        $x = 175
        $y = 175
        do
        {
            $x++
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.8
        }
        until ($x -gt 350)
        do
        {
            $x--
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.8
        }
        until ($x -le 175)
        do
        {
            $x--
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.8
        }
        until ($x -le 0)
        do
        {
            $x++
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.8
        }
        until ($x -gt 175)
        #---------
        do
        {
            $x--
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.8
        }
        until ($x -le 0)
        do
        {
            $x++
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.8
        }
        until ($x -gt 175)
        $x = 175
        $y = 175
    }
})

$Form.Add_KeyDown({
    if($_.KeyCode -eq "E") {
        $Form.Controls.Add($Panel)
        $x = 175
        $y = 175
        do
        {
           $x++ 
           $Panel.Location = New-Object System.Drawing.Point($x,175)
           Start-Sleep -m 1
        }
        until ($x -gt 200)
        do
        {
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($y -gt 200)
        do
        {
            $x--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($x -le 150)
        do
        {
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($y -le 150)
        do
        {
            $x++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($x -gt 200)
        do
        {
           $y++ 
           $Panel.Location = New-Object System.Drawing.Point($x,$y)
           Start-Sleep -m 1
        }
        until ($y -gt 175)
        $y = 175
        do
        {
            $x--
            $Panel.Location = New-Object System.Drawing.Point($x,175)
            Start-Sleep -m 1
        }
        until ($x -le 175)
    }
})

$Form.Add_KeyDown({
    if($_.KeyCode -eq "T") {
        $Form.Controls.Add($Panel)
        $x = 175
        $y = 175
        do
        {
           $x++
           $Panel.Location = New-Object System.Drawing.Point($x,$y)
           Start-Sleep -m 1 
        }
        until ($x -gt 350)
        do
        {
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($y -gt 225)
        do
        {
            $x--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($x -le 0)
        do
        {
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($y -gt 275)
        do
        {
            $x++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($x -gt 350)
        do
        {
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($y -le 225)
        do
        {
            $x--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($x -le 0)
        do
        {
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1
        }
        until ($y -le 175)
        do
        {
            $x++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 1 
        }
        until ($x -gt 175)
        $x = 175
        $y = 175
    }
})

$Form.Add_KeyDown({
    if($_.KeyCode -eq "O") {
        $Form.Controls.Add($Panel)
        $x = 50
        $y = 40
 	$lx = 275
        do
        {
            $x++
            $y++
	    $lx--
            $PictureBox1.Width = $y
            $PictureBox1.Height = $y
	    $Panel.Location = New-Object System.Drawing.Point($lx,$lx)
            $Panel.Size = New-Object System.Drawing.Size($x,$x)
            Start-Sleep -m 1
        }
        until ($x -ge 225)
        do
        {
            $x--
            $y--
	    $lx++
            $PictureBox1.Width = $y
            $PictureBox1.Height = $y
	    $Panel.Location = New-Object System.Drawing.Point($lx,$lx)
            $Panel.Size = New-Object System.Drawing.Size($x,$x)
            $Form.Update()
            Start-Sleep -m 1
        }
        until ($x -le 50)
        $x = 175
        $y = 175
    }
})

$Form.Add_KeyDown({
    if($_.KeyCode -eq "N") {
        $Form.Controls.Add($Panel)
        $Panel.Controls.Add($PictureBox1)
    }
})
$Form.Add_KeyDown({
    if($_.KeyCode -eq "M") {
        $Form.Controls.Add($Panel)
        $Panel.Controls.Remove($PictureBox1)
    }
})
$Form.KeyPreview = $true
$Form.Add_KeyDown({
    if($_.KeyCode -eq "P") {
        $Form.Controls.Add($Panel)
        $Label = New-Object System.Windows.Forms.Label
        $Label.Location = New-Object System.Drawing.Point(0,0)
        $Label.Size = New-Object System.Drawing.Size(400,400)
        $Label.Text = "$z"
        $Label.Font = "Rockwell, 20"
        $Form.Controls.Add($Label)
    }
})    
$Form.Add_KeyDown({
    if($_.KeyCode -eq "L") {
        $Form.Controls.Add($Panel)
        $Form.Controls.Remove($Label)
    }
})

$Form.Add_KeyDown({
    if($_.KeyCode -eq "J") {
        $Form.Controls.Add($Panel)
        $Form.Controls.Remove($Panel)
        $1 = New-Object System.Windows.Forms.Panel
        $1.Location = New-Object System.Drawing.Point(175,175)
        $1.Size = New-Object System.Drawing.Size(50,50)
        $1.BackColor = "Black"
        $Form.Controls.Add($1)
        $2 = New-Object System.Windows.Forms.Panel
        $2.Location = New-Object System.Drawing.Point(175,175)
        $2.Size = New-Object System.Drawing.Size(50,50)
        $2.BackColor = "Black"
        $Form.Controls.Add($2)
        $3 = New-Object System.Windows.Forms.Panel
        $3.Location = New-Object System.Drawing.Point(175,175)
        $3.Size = New-Object System.Drawing.Size(50,50)
        $3.BackColor = "Black"
        $Form.Controls.Add($3)
        $4 = New-Object System.Windows.Forms.Panel
        $4.Location = New-Object System.Drawing.Point(175,175)
        $4.Size = New-Object System.Drawing.Size(50,50)
        $4.BackColor = "Black"
        $Form.Controls.Add($4)
        $5 = New-Object System.Windows.Forms.Panel
        $5.Location = New-Object System.Drawing.Point(175,175)
        $5.Size = New-Object System.Drawing.Size(50,50)
        $5.BackColor = "Black"
        $Form.Controls.Add($5)
        $6 = New-Object System.Windows.Forms.Panel
        $6.Location = New-Object System.Drawing.Point(175,175)
        $6.Size = New-Object System.Drawing.Size(50,50)
        $6.BackColor = "Black"
        $Form.Controls.Add($6)
        $7 = New-Object System.Windows.Forms.Panel
        $7.Location = New-Object System.Drawing.Point(175,175)
        $7.Size = New-Object System.Drawing.Size(50,50)
        $7.BackColor = "Black"
        $Form.Controls.Add($7)
        Start-Sleep -s 2
        $y1 = 175
        $y2 = 175
        $y3 = 175
        $y4 = 175
        $y5 = 175
        $y6 = 175
        $y7 = 175
        do
        {
            $y4--
            $y7++
            $4.Location = New-Object System.Drawing.Point(175,$y4)
            $7.Location = New-Object System.Drawing.Point(175,$y7)
            Start-Sleep -m 0.5
        }
        until ($y4 -le 25)
        do
        {
            $y3--
            $y6++
            $3.Location = New-Object System.Drawing.Point(175,$y3)
            $6.Location = New-Object System.Drawing.Point(175,$y6)
            Start-Sleep -m 0.5
        }
        until ($y3 -le 75)
        do
        {
            $y2--
            $y5++
            $2.Location = New-Object System.Drawing.Point(175,$y2)
            $5.Location = New-Object System.Drawing.Point(175,$y5)
            Start-Sleep -m 0.5
        }
        until ($y2 -le 125)

        Start-Sleep -s 2
        $1.add_paint({$brush = new-object System.Drawing.Drawing2D.LinearGradientBrush((new-object system.drawing.point 0,0),(new-object system.drawing.point($this.clientrectangle.width,$this.clientrectangle.height)),"black","Red")
    $_.graphics.fillrectangle($brush,$this.clientrectangle)
    })
        $x4 = 175
        do
        {
            $x4++
            $4.Location = New-Object System.Drawing.Point($x4,25)
            Start-Sleep -m 0.5
        }
        until ($x4 -gt 250)
        $x3 = 175
        do
        {
           $x3++
           $3.Location = New-Object System.Drawing.Point($x3,75) 
           Start-Sleep -m 0.5
        }
        until ($x3 -gt 225)
        $x2 = 175
        do
        {
            $x2++
            $2.Location = New-Object System.Drawing.Point($x2,125)
            Start-Sleep -m 0.5
        }
        until ($x2 -gt 200)
        $x5 = 175
        do
        {
            $x5--
            $5.Location = New-Object System.Drawing.Point($x5,225)
            Start-Sleep -m 0.5
        }
        until ($x5 -le 150)
        $x6 = 175
        do
        {
            $x6--
            $6.Location = New-Object System.Drawing.Point($x6,275)
            Start-Sleep -m 0.5
        }
        until ($x6 -le 125)
        $x7 = 175
        do
        {
            $x7--
            $7.Location = New-Object System.Drawing.Point($x7,325)
            Start-Sleep -m 0.5
        }
        until ($x7 -le 100)
        Start-Sleep -s 2
        $x1 = 175
        $x2 = 200
        $x3 = 225
        $x4 = 250
        $x5 = 150
        $x6 = 125
        $x7 = 100
        do
        {
            $x4--
            $x7++
            $4.Location = New-Object System.Drawing.Point($x4,25)
            $7.Location = New-Object System.Drawing.Point($x7,325)
            Start-Sleep -m 0.5   
        }
        until ($x4 -le 100)
        Start-Sleep -s 1
        do
        {
            $x3--
            $x6++
            $3.Location = New-Object System.Drawing.Point($x3,75)
            $6.Location = New-Object System.Drawing.Point($x6,275)
            Start-Sleep -m 0.5
        }
        until ($x3 -le 125)
        Start-Sleep -s 1
        do
        {
            $x2--
            $x5++
            $2.Location = New-Object System.Drawing.Point($x2,125)
            $5.Location = New-Object System.Drawing.Point($x5,225)
            Start-Sleep -m 0.5
        }
        until ($x2 -le 150)

        Start-Sleep -s 2
        $Form.Controls.Remove($7)
        $Form.Controls.Remove($6)
        $Form.Controls.Remove($5)
        $Form.Controls.Remove($1)
        $Form.Controls.Remove($2)
        $Form.Controls.Remove($3)
        $Form.Controls.Remove($4)
        $Form.Controls.Add($Panel)
        }
})    

$Form.Add_KeyDown({
    if($_.KeyCode -eq "B") {
        $formGraphics.DrawRectangle($mypen, 20, 20, 360, 360 )
        $PictureBox1.imageLocation = "C:\Users\arviwed0310\Pictures\hit.png"
        $Panel.Controls.Add($PictureBox1)
        $Form.Update()
        $Panel.Update()
        $x = 175
        $y = 175
        do
        {
            $x++
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -gt 260)
        do
        {
            $x--
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -le 230)
        do
        {
            $x++
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -gt 260)
        do
        {
            $x--
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -le 175)
        $x = 175
        $y = 175
        do
        {
            $x++
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -gt 260)
        do
        {
            $x++
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -gt 290)
        do
        {
            $x--
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -le 260)
        do
        {
            $x--
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -le 175)
        $x = 175
        $y = 175
        do
        {
            $x--
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -le 87)
        do
        {
            $x++
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -gt 117)
        do
        {
            $x--
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -le 87)
        do
        {
            $x++
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -gt 175)
        #---------
        do
        {
            $x--
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -le 87)
        do
        {
            $x--
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -le 57)
        do
        {
            $x++
            $y++
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -gt 87)
        do
        {
            $x++
            $y--
            $Panel.Location = New-Object System.Drawing.Point($x,$y)
            Start-Sleep -m 0.7
        }
        until ($x -gt 175)
        $x = 175
        $y = 175
        $PictureBox1.imageLocation = "C:\Users\arviwed0310\Pictures\WinBack.jpg"
        $Panel.Controls.Remove($PictureBox1)
        $Form.Controls.Remove($Panel)
    }
})

$Form.Controls.Add($Panel)
$Form.Controls.Add($Panel2)
$Form.Controls.Add($Panel3)
$Form.Controls.Add($Panel4)
$Form.Controls.Add($Panel5)
$Form.Controls.Add($Panel6)
$Form.Controls.Add($Panel7)
$Form.Controls.Add($Panel8)
$Form.Controls.Add($Panel9)
$Form.Controls.Add($Panel10)
$Form.ShowDialog()