Function MenuMaker{
    param(
        [string]$Title = $null,
        [parameter(Mandatory=$true,
        ValueFromPipeline = $true)][String[]]$Selections
        )

    $Width = if($Title){$Length = $Title.Length;$Length2 = $Selections|%{$_.length}|Sort -Descending|Select -First 1;$Length2,$Length|Sort -Descending|Select -First 1}else{$Selections|%{$_.length}|Sort -Descending|Select -First 1}
    $Buffer = if(($Width*1.5) -gt 78){(78-$width)/2}else{$width/4}
    if($Buffer -gt 6){$Buffer = 6}
    $MaxWidth = $Buffer*2+$Width+$($Selections.count).length
    $Menu = @()
    $Menu += "+"+"-"*$maxwidth+"+"
    if($Title){
        $Menu += "�"+" "*[Math]::Floor(($maxwidth-$title.Length)/2)+$Title+" "*[Math]::Ceiling(($maxwidth-$title.Length)/2)+"�"
        $Menu += "�"+"-"*$maxwidth+"�"
    }
    For($i=1;$i -le $Selections.count;$i++){
        $Item = "$i`. "
        $Menu += "�"+" "*$Buffer+$Item+$Selections[$i-1]+" "*($MaxWidth-$Buffer-$Item.Length-$Selections[$i-1].Length)+"�"
    }
    $Menu += "+"+"-"*$maxwidth+"+"
    $menu
}
MenuMaker -Title "Test Menu" -Selections @("Dog","Horse","Squirrel")
pause