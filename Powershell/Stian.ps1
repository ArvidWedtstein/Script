
Add-Type -AssemblyName WindowsBase
Add-Type -AssemblyName PresentationCore


$continue = $true
while ($continue) {
      $wsh = New-Object -ComObject WScript.Shell
      $wsh.SendKeys('N')
      $isDown = [Windows.Input.Keyboard]::IsKeyDown([System.Windows.Input.Key]::LeftShift)
      if ($isDown)
      {
        $continue = $false
        Write-Warning "ABORTED!!"
        break
      }
}
