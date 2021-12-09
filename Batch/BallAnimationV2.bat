@ECHO off

set ip=google.com

set /A ms=50

set direction=0

set /A p=0+1

goto main

:DOWN

CLS

ECHO ______________________

FOR /L %%G IN (1,1,10) DO (

if "%%G" EQU "%p%" (

ECHO ^| O ^|

set /A p=%p%+1

if "%p%" EQU "10" (

set direction=1

)

) else (

ECHO ^| ^|

)

)

ECHO ``````````````````````

ping %ip% -n 1 -w %ms% >nul

if "%p%" NEQ "11" goto DOWN

set /A p=0+9

goto main

:UP

CLS

::ECHO %direction%, %p%

ECHO ______________________

FOR /L %%G IN (1,1,10) DO (

if "%%G" EQU "%p%" (

ECHO ^| 0 ^|

set /A p=%p%-1

if "%p%" EQU "1" (

set direction=0

)

) else (

ECHO ^| ^|

)

)

ECHO ``````````````````````

ping %ip% -n 1 -w %ms% >nul

if "%p%" NEQ "0" goto UP

set /A p=0+2

goto main

:main

if "%direction%" EQU "0" goto DOWN

if "%direction%" EQU "1" goto UP