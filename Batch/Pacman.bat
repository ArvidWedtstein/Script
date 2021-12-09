@echo off
@title PacMan v 1
 @mode con cols=24 lines=24
 @::Juego Batch PacMan
 @::Another Batch Game
 @::by ::SmartGenius ::

if not exist "choice.com" (Goto :NoKey)

:load
call :Logo
setlocal enabledelayedexpansion
set LimX=16
set LimY=16
set NLevels=1

:init
for /l %%a in (0,1,%LimX%) do (
for /l %%b in (0,1,%LimY%) do (
set X%%aY%%b=.))
set Player=
set Bound=Û
set Box= 
set Ghost=

:Levels
set /a L+=1
Call :Level%L%
Call :Graphic
set P%L%=%Movs%
if "%NXL%"=="True" Goto :End
if "%L%"=="%NLevels%" Goto :Win
ping -n 1 0.0.0.0 >nul
Goto :Init

:Graphic
Call :Clear
cls
for /l %%d in (0,1,%LimY%) do (
for /l %%e in (0,1,%LimX%) do (
set Lin_%%d=!Lin_%%d!!X%%eY%%d!))
echo.
echo.  Pacman v 1 by Smart
echo.
echo.  Lives:%Lives%   Points:%Points%
echo.   ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
for /l %%f in (0,1,%LimY%) do (echo.   º!Lin_%%f!º)
echo.   ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
CHOICE /C:WASDX /N /T:%Dir%,1 >nul
if "%errorlevel%"=="1" (call :MovY- "%CurPos%" CurPos&set Dir=W)
if "%errorlevel%"=="2" (call :MovX- "%CurPos%" CurPos&set Dir=A)
if "%errorlevel%"=="3" (call :MovY+ "%CurPos%" CurPos&set Dir=S)
if "%errorlevel%"=="4" (call :MovX+ "%CurPos%" CurPos&set Dir=D)
if "%errorlevel%"=="5" (set NXL=True&Goto :Eof)
Call :MovGhost
for %%w in (%Boxes%) do (
if not "!%%w!"=="%Box%" (
if "!%%w!"=="." (set %%w=%Box%)))
set /a NCK=%Points% %% 7
if "%NCK%"=="0" set Cki=False
if "%EOG%"=="True" (msg * You Lost&Goto :Eof)
Goto :Graphic

:MovX+
for /f "tokens=1,2 delims=X,Y" %%p in ("%~1") do (
set /a MovX=%%p+1
call set NMovX=%%X!MovX!Y%%q%%

if "!NMovX!"=="%Bound%" (Goto :Eof)

if "!NMovX!"=="%Ghost%" (
if !%~1!==%Player% (
if "%Cki%"=="True" (
set %~1= 
set X!MovX!Y%%q=%Player%
set %2=X!MovX!Y%%q
set /a Points+=10
call :UnGhost "X!MovX!Y%%q"
)
if "%Cki%"=="False" (
set %~1= 
set /a Lives-=1
set %Init%=%Player%
set %2=%Init%
if "!Lives!"=="0" (set EOG=True)
)))

if "!NMovX!"=="." (
if !%~1!==%Player% (
set %~1= 
set /a Points+=2
set X!MovX!Y%%q=%Player%
set %2=X!MovX!Y%%q)
if !%~1!==%Ghost% (
set %~1=.
set X!MovX!Y%%q=%Ghost%
set %2=X!MovX!Y%%q))

if "!NMovX!"==" " (
if !%~1!==%Player% (
set %~1= 
set X!MovX!Y%%q=%Player%
set %2=X!MovX!Y%%q)
if !%~1!==%Ghost% (
set %~1= 
set X!MovX!Y%%q=%Ghost%
set %2=X!MovX!Y%%q))


if "!NMovX!"=="%Box%" (
if !%~1!==%Player% (
set %~1= 
set /a Points+=5
set Cki=True
set X!MovX!Y%%q=%Player%
set %2=X!MovX!Y%%q)
if !%~1!==%Ghost% (
set %~1=.
set X!MovX!Y%%q=%Ghost%
set %2=X!MovX!Y%%q)))

if !%~1!==%Player% set /a Movs+=1
Goto :Eof


:MovX-
for /f "tokens=1,2 delims=X,Y" %%p in ("%~1") do (
set /a MovX=%%p-1
call set NMovX=%%X!MovX!Y%%q%%

if "!NMovX!"=="%Bound%" (Goto :Eof)

if "!NMovX!"=="%Ghost%" (
if !%~1!==%Player% (
if "%Cki%"=="True" (
set %~1= 
set X!MovX!Y%%q=%Player%
set %2=X!MovX!Y%%q
set /a Points+=10
call :UnGhost "X!MovX!Y%%q"
)
if "%Cki%"=="False" (
set %~1= 
set /a Lives-=1
set %Init%=%Player%
set %2=%Init%
if "!Lives!"=="0" (set EOG=True)
)))

if "!NMovX!"=="." (
if !%~1!==%Player% (
set %~1= 
set /a Points+=2
set X!MovX!Y%%q=%Player%
set %2=X!MovX!Y%%q)
if !%~1!==%Ghost% (
set %~1=.
set X!MovX!Y%%q=%Ghost%
set %2=X!MovX!Y%%q))

if "!NMovX!"==" " (
if !%~1!==%Player% (
set %~1= 
set X!MovX!Y%%q=%Player%
set %2=X!MovX!Y%%q)
if !%~1!==%Ghost% (
set %~1= 
set X!MovX!Y%%q=%Ghost%
set %2=X!MovX!Y%%q))


if "!NMovX!"=="%Box%" (
if !%~1!==%Player% (
set %~1= 
set /a Points+=5
set Cki=True
set X!MovX!Y%%q=%Player%
set %2=X!MovX!Y%%q)
if !%~1!==%Ghost% (
set %~1=.
set X!MovX!Y%%q=%Ghost%
set %2=X!MovX!Y%%q)))

if !%~1!==%Player% set /a Movs+=1
Goto :Eof


:MovY+
for /f "tokens=1,2 delims=X,Y" %%p in ("%~1") do (
set /a MovY=%%q+1
call set NMovY=%%X%%pY!MovY!%%

if "!NMovY!"=="%Bound%" (Goto :Eof)

if "!NMovY!"=="%Ghost%" (
if !%~1!==%Player% (
if "%Cki%"=="True" (
set %~1= 
set X%%pY!MovY!=%Player%
set %2=X%%pY!MovY!
set /a Points+=10
call :UnGhost "X%%pY!MovY!"
)
if "%Cki%"=="False" (
set %~1= 
set /a Lives-=1
set %Init%=%Player%
set %2=%Init%
if "!Lives!"=="0" (set EOG=True)
)))

if "!NMovY!"=="." (
if !%~1!==%Player% (
set %~1= 
set /a Points+=2
set X%%pY!MovY!=%Player%
set %2=X%%pY!MovY!)
if !%~1!==%Ghost% (
set %~1=.
set X%%pY!MovY!=%Ghost%
set %2=X%%pY!MovY!))

if "!NMovY!"==" " (
if !%~1!==%Player% (
set %~1= 
set X%%pY!MovY!=%Player%
set %2=X%%pY!MovY!)
if !%~1!==%Ghost% (
set %~1= 
set X%%pY!MovY!=%Ghost%
set %2=X%%pY!MovY!))


if "!NMovY!"=="%Box%" (
if !%~1!==%Player% (
set %~1= 
set /a Points+=5
set Cki=True
set X%%pY!MovY!=%Player%
set %2=X%%pY!MovY!)
if !%~1!==%Ghost% (
set %~1=.
set X%%pY!MovY!=%Ghost%
set %2=X%%pY!MovY!)))

if !%~1!==%Player% set /a Movs+=1
Goto :Eof


:MovY-
for /f "tokens=1,2 delims=X,Y" %%p in ("%~1") do (
set /a MovY=%%q-1
call set NMovY=%%X%%pY!MovY!%%

if "!NMovY!"=="%Bound%" (Goto :Eof)

if "!NMovY!"=="%Ghost%" (
if !%~1!==%Player% (
if "%Cki%"=="True" (
set %~1= 
set X%%pY!MovY!=%Player%
set %2=X%%pY!MovY!
set /a Points+=10
call :UnGhost "X%%pY!MovY!"
)
if "%Cki%"=="False" (
set %~1= 
set /a Lives-=1
set %Init%=%Player%
set %2=%Init%
if "!Lives!"=="0" (set EOG=True)
)))

if "!NMovY!"=="." (
if !%~1!==%Player% (
set %~1= 
set /a Points+=2
set X%%pY!MovY!=%Player%
set %2=X%%pY!MovY!)
if !%~1!==%Ghost% (
set %~1=.
set X%%pY!MovY!=%Ghost%
set %2=X%%pY!MovY!))

if "!NMovY!"==" " (
if !%~1!==%Player% (
set %~1= 
set X%%pY!MovY!=%Player%
set %2=X%%pY!MovY!)
if !%~1!==%Ghost% (
set %~1= 
set X%%pY!MovY!=%Ghost%
set %2=X%%pY!MovY!))


if "!NMovY!"=="%Box%" (
if !%~1!==%Player% (
set %~1= 
set /a Points+=5
set Cki=True
set X%%pY!MovY!=%Player%
set %2=X%%pY!MovY!)
if !%~1!==%Ghost% (
set %~1=.
set X%%pY!MovY!=%Ghost%
set %2=X%%pY!MovY!)))

if !%~1!==%Player% set /a Movs+=1
Goto :Eof


:MovGhost
set NGG=0
for %%z in (%Ghosts%) do (
set /a NG+=1
set Ghost!NG!=%%z)
:MovGhost2
set /a NGG+=1
set /a GoMov=%random:~-1% %% 4
if "!GoMov!"=="0" Call :MovX+ %%Ghost!NGG!%% Ghost!NGG!
if "!GoMov!"=="1" Call :MovX- %%Ghost!NGG!%% Ghost!NGG!
if "!GoMov!"=="2" Call :MovY+ %%Ghost!NGG!%% Ghost!NGG!
if "!GoMov!"=="3" Call :MovY- %%Ghost!NGG!%% Ghost!NGG!
)
if "%NGG%"=="4" ( 
set Ghosts=%Ghost1%,%Ghost2%,%Ghost3%,%Ghost4%
set NG=0
Goto :Eof)
Goto :MovGhost2

:UnGhost
set Ghosts=!Ghosts:%~1=X8Y7!
for %%g in (%Ghosts%) do (set %%g=%Ghost%)
Goto :Eof

:Clear
for /l %%m in (0,1,%LimY%) do (set Lin_%%m=)
Goto :Eof

:Win

:End
msg * Thx for Playing PacMan v1 by :: SmartGenius::
endlocal
exit

:Level1
set Movs=0
set Points=0
set X2Y15=%Player%
set CurPos=X2Y15
set Init=X2Y15
set Lives=3
set Cki=False
set Dir=D
set Ghosts=X2Y11,X6Y9,X6Y7,X10Y6
set Boxes=X2Y1,X2Y9,X14Y1,X14Y9,X14Y15
for %%g in (%Ghosts%) do (set %%g=%Ghost%)
for %%h in (%Boxes%) do (set %%h=%Box%)
for /l %%i in (0,1,16) do (
set X0Y%%i=%Bound%
set X1Y%%i=%Bound%
set X15Y%%i=%Bound%
set X16Y%%i=%Bound%
set X%%iY0=%Bound%
set X%%iY16=%Bound%)
for %%j in (3,4,5,6,10,11,12,13) do (
set X%%jY2=%Bound%
set X%%jY3=%Bound%
set X%%jY10=%Bound%
set X%%jY14=%Bound%)
for %%k in (X8Y1,X8Y2,X8Y3,X3Y5,X3Y6,X3Y7,X3Y8,X5Y5,X5Y6,X5Y7,X5Y8,X6Y5,X7Y5) do (set %%k=%Bound%)
for %%l in (X6Y8,X7Y8,X8Y8,X9Y8,X10Y8,X9Y5,X10Y5,X11Y5,X11Y6,X11Y7,X11Y8,X13Y5) do (set %%l=%Bound%)
for %%m in (X13Y6,X13Y7,X13Y8,X7Y10,X9Y10,X3Y12,X3Y13,X5Y12,X6Y12,X7Y12,X8Y12) do (set %%m=%Bound%)
for %%n in (X9Y12,X10Y12,X11Y12,X8Y13,X8Y14,X13Y12,X13Y13) do (set %%n=%Bound%)
for %%o in (X6Y6,X7Y6,X8Y5,X8Y6,X9Y6,X7Y7,X8Y7,X9Y7,X10Y7) do (set %%o= )
Goto :Eof

::Fin Nivel 1

::Fin de Coordenadas

:Logo
color 0a
cls
echo.
echo. °°°°°°°°°°°°°°°°°°°°°°
echo. °°°°°°°°°°°°°°°°°°°°°°
echo. °ÛÛÛÛÛ°ÛÛÛÛÛ°°ÛÛÛÛÛÛ°°
echo. °Û°°°Û°Û°°°Û°ÛÛÛÛÛÛ°°°
echo. °Û°°°Û°Û°°°Û°ÛÛÛÛ°°°°°
echo. °ÛÛÛÛÛ°ÛÛÛÛÛ°ÛÛÛ°°°°°°
echo. °Û°°°°°Û°°°Û°ÛÛÛÛ°°°°°
echo. °Û°°°°°Û°°°Û°ÛÛÛÛÛÛ°°°
echo. °Û°°°°°Û°°°Û°°ÛÛÛÛÛÛ°°
echo. °°°°°°°°°°°°°°°°°°°°°°
echo. °°ÛÛ°ÛÛ°ÛÛÛÛÛ°Û°°°°Û°°
echo. °°Û°Û°Û°Û°°°Û°ÛÛ°°°Û°°
echo. °°Û°°°Û°Û°°°Û°Û°Û°°Û°°
echo. °°Û°°°Û°ÛÛÛÛÛ°Û°°Û°Û°°
echo. °°Û°°°Û°Û°°°Û°Û°°Û°Û°°
echo. °°Û°°°Û°Û°°°Û°Û°°°ÛÛ°°
echo. °°Û°°°Û°Û°°°Û°Û°°°°Û°°
echo. °°°°°°°°°°°°°°°°°°°°°°
echo. °°°°°°°°°°°°°°°°°°°°°°
echo. °°°: SmartGenius :°°°°
echo. °°°  Corp.  2009  °°°°
echo. °°°°°°°°°°°°°°°°°°°°°°
ping -n 3 0.0.0.0 >nul
color 0e
Goto :Eof


:NoKey
 @mode con cols=30 lines=20
cls
echo.
echo  A file needed for the correct function
echo  of this Script is missing....
echo.
echo  CHOICE.COM
echo.
echo  Please Download it from Internet. ;)
pause
exit