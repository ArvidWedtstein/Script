
function global:set-ConsolePosition ([int]$x,[int]$y) { 
# Get current cursor position and store away 
$position=$host.ui.rawui.cursorposition 
# Store new X and Y Co-ordinates away 
$position.x=$x 
$position.y=$y 
# Place modified location back to $HOST 
$host.ui.rawui.cursorposition=$position 
} 
function global:draw-line([int]$x, [int]$y, [int]$length,[int]$vertical){  
# Move to assigned X/Y position in Console  
set-ConsolePosition $x $y 
# Draw the Beginning of the line 
write-host “*” -nonewline  
# Is this vertically drawn?  Set direction variables and appropriate character to draw  
If ([boolean]$vertical)  
    { $linechar=“!”; $vert=1;$horz=0} 
else 
    { $linechar=“-“; $vert=0;$horz=1}  
# Draw the length of the line, moving in the appropriate direction  
    foreach ($count in 1..($length-1)) {  
        set-ConsolePosition (($horz*$count)+$x) (($vert*$count)+$y) 
        write-host $linechar -nonewline 
    } 
# Bump up the counter and draw the end 
$count++ 
    set-ConsolePosition (($horz*$count)+$x) (($vert*$count)+$y)  
write-host “*” -nonewline  
}  
function global:draw-box ([int]$width, [int]$length, [int]$x, [int] $y) {  
# Do the four sides  
foreach ($box in 0..3) {  
     # Variable to flip whether we’re on the left / top of the box or not 
     $side=$box%2  
     # Variable to switch whether it’s a vertical or horizontal line 
     $vert=[int](($box-.5)/2)  
     # compute the Width and Length so we can “switch them” 
     $totalside=$width+$length  
     # Length of line will be dependant on the Direction 
     # (vertical or Horizontal) 
     $linelength=($vert*$length)+([int](!$vert)*$width)  
     $result=$totalside-$linelength  
     # flip in the correct X Y coordinates for the maximum  
     $ypass=([int](!$vert)*$side*$result)+$y  
     $xpass=($vert*$side*$result)+$x  
     # Draw the line  
     draw-line $xpass $ypass $linelength $vert  
}  
} 