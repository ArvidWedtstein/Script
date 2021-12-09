Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNoCancel
$MessageIcon = [System.Windows.MessageBoxImage]::Warning
$MessageBody = "A Virus Has Been Found"
$MessageTitle = "Virus Warning"
 
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
 
Write-Host "Your choice is $Result  " -NoNewline -b Cyan ; Write-Host "  You choosed $Result" -b DarkCyan
switch  ($Result) {

  'Yes' {

  cls ; write-host "Virus Incomming╱╲" -f DarkCyan -b White 

  }

  'No' {

  cls ; write-host "$env:UserName excuse" -f DarkCyan -b White 

  }

  'Cancel' {

  cls ; write-host "..." -f DarkCyan -b White 

  }

  }
$msgBoxInput =  [System.Windows.MessageBox]::Show('Would you like to get more virus?','Game  input','YesNoCancel','Error')
$BoxCharacters = "╭╾╾╾╾╾╾╾╾╾╾╾╾╾╾╮"
$BoxCharactersa = "╽═══════════╽"
$BoxCharactersb = "╰╾╾╾╾╾╾╾╾╾╾╾╾╾╾╯"

  switch  ($msgBoxInput) {

  'Yes' {

  cls ; write-host "Virus Incomming!" -f DarkCyan -b White 

  }

  'No' {

  cls ; write-host "$env:UserName excuse" -f DarkCyan -b White 

  }

  'Cancel' {

  cls ; write-host "$BoxCharacters" -f DarkCyan -b White ; write-host "$BoxCharactersa" -f DarkCyan -b White ; write-host "$BoxCharactersb" -f DarkCyan -b White 

  }

  }