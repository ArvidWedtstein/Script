@echo off
set num=1
:start
echo.
@powershell write-host "�" -f DarkRed -b Black -NoNewLine 
>nul ping -n 1 localhost 
@powershell write-host "�" -f Red -b Black -NoNewLine 
>nul ping -n 1 localhost 
@powershell write-host "�" -f DarkYellow -b Black -NoNewLine
>nul ping -n 1 localhost  
@powershell write-host "�" -f Yellow -b Black -NoNewLine 
>nul ping -n 1 localhost 
@powershell write-host "�" -f DarkBlue -b Black -nonewline
>nul ping -n 1 localhost 
@powershell write-host "�" -f Blue -b Black -nonewline
>nul ping -n 1 localhost 
@powershell write-host "�" -f DarkCyan -b Black -nonewline
>nul ping -n 1 localhost 
@powershell write-host "�" -f Cyan -b Black -nonewline
>nul ping -n 1 localhost 
@powershell write-host "�" -f Green -b Black -nonewline
>nul ping -n 1 localhost 
@powershell write-host "�" -f DarkGreen -b Black -nonewline
>nul ping -n 1 localhost  
set /a num=%num%+1 & title - %num -     
goto :start     