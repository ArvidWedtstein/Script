@echo off
powershell write-host -f Black -NoNewLine "////////" ; powershell write-host -f Red "В"
powershell write-host -f Black -NoNewLine "/////" ; powershell write-host -f Blue -NoNewLine "л" ; powershell write-host -f Black -nonewline "//" ; powershell write-host -f Red -nonewline "В" ; powershell write-host -f Black -nonewline "//" ; powershell write-host -f Yellow "л"
powershell write-host -f Black -NoNewLine "/////" ; powershell write-host -f Blue -NoNewLine "л" ; powershell write-host -f Black -nonewline "//" ; powershell write-host -f Red -nonewline "В" ; powershell write-host -f Black -nonewline "/" ; powershell write-host -f Yellow "лл"
powershell write-host -f Black -NoNewLine "/////" ; powershell write-host -f Blue -NoNewLine "л" ; powershell write-host -f Black -nonewline "///" ; powershell write-host -f Black -nonewline "//" ; powershell write-host -f Yellow "л"
powershell write-host -f Black -NoNewLine "/////" ; powershell write-host -f Blue -NoNewLine "лл" ; powershell write-host -f Black -nonewline "//" ; powershell write-host -f Black "/"
echo/
pause