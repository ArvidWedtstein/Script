@echo off
set num=1
:start
echo.
@powershell write-host "Û" -f DarkRed -b Black -NoNewLine 
>nul ping -n 1 localhost 
@powershell write-host "Û" -f Red -b Black -NoNewLine 
>nul ping -n 1 localhost 
@powershell write-host "Û" -f DarkYellow -b Black -NoNewLine
>nul ping -n 1 localhost  
@powershell write-host "Û" -f Yellow -b Black -NoNewLine 
>nul ping -n 1 localhost 
@powershell write-host "Û" -f DarkBlue -b Black -nonewline
>nul ping -n 1 localhost 
@powershell write-host "Û" -f Blue -b Black -nonewline
>nul ping -n 1 localhost 
@powershell write-host "Û" -f DarkCyan -b Black -nonewline
>nul ping -n 1 localhost 
@powershell write-host "Û" -f Cyan -b Black -nonewline
>nul ping -n 1 localhost 
@powershell write-host "Û" -f Green -b Black -nonewline
>nul ping -n 1 localhost 
@powershell write-host "Û" -f DarkGreen -b Black -nonewline
>nul ping -n 1 localhost  
set /a num=%num%+1 & title - %num -     
goto :start     