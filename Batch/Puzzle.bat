@Echo off&title Sliding Puzzle
@mode con cols=24 lines=21
 
::Batch Game Sliding Puzzle
::Coded by SmartGenius
 
SetLocal EnableDelayedExpansion
 
Call :LoadKeyboard
 
:Vars
Set /a "LimX=17,LimY=15,IniX=0,IniY=0,MovX=0,MovY=0"
Set "Bound=Û"
Set "Space=ฐ"
Set "Player=O"
Set "Limit= "
Set "Exit=X"
 
Call :How
 
:Init
For /l %%a in (%IniX%,1,%LimX%) do (
For /l %%b in (%IniY%,1,%LimY%) do (
Set "X%%aY%%b=%Limit%"))
Call :Level
Set "X1Y1=%Player%"
Set "Curpos=X1Y1"
Goto :Graphic
 
:Graphic
Call :Clear
For /l %%d in (%IniX%,1,%LimY%) do (
For /l %%e in (%IniX%,1,%LimX%) do (
Set "Lin_%%d=!Lin_%%d!!X%%eY%%d!"))
Echo.
Echo.
Echo.  ษออออออออออออออออออป
For /l %%f in (0,1,%LimY%) do (Echo.  บ!Lin_%%f!บ)
Echo.  ศออออออออออออออออออผ
Echo.
If Defined MovL (
Ping -n 1 localhost >nul
Call :%MovL% "%CurPos%"
Goto :Graphic
) Else (
Keyboard
)
If "%Errorlevel%"=="77" (call :MovX "+" "%CurPos%")
If "%Errorlevel%"=="75" (call :MovX "-" "%CurPos%")
If "%Errorlevel%"=="80" (call :MovY "+" "%CurPos%")
If "%Errorlevel%"=="72" (call :MovY "-" "%CurPos%")
If "%Errorlevel%"=="88" (Pause&exit)
If "%Errorlevel%"=="120" (Pause&exit)
Goto :Graphic
 
:MovY
For /f "tokens=1,2 delims=X,Y" %%p in ("%~2") do (
if "%%q"=="%LimY%" Goto :Eof
Set /a MovY=%%q%~11
Call Set NMovY=%%X%%pY!MovY!%%
If "!NMovY!"=="%Bound%" (Set "MovL="&Goto :Eof)
If "!NMovY!"=="%Exit%" (Call :getKey&Goto :Win)
If "!NMovY!"=="%Limit%" (Goto :Lose)
Set X%%pY!MovY!=%Player%
Set CurPos=X%%pY!MovY!
Set MovL=MovY "%~1"
Set "%~2=%Space%")
Goto :Eof
 
:MovX
For /f "tokens=1,2 delims=X,Y" %%p in ("%~2") do (
If "%%p"=="%LimX%" Goto :Eof
Set /a MovX=%%p%~11
Call Set NMovX=%%X!MovX!Y%%q%%
If "!NMovX!"=="%Bound%" (Set "MovL="&Goto :Eof)
If "!NMovX!"=="%Exit%" (Call :getKey&Goto :Win)
If "!NMovX!"=="%Limit%" (Goto :Lose)
Set "X!MovX!Y%%q=%Player%"
Set "CurPos=X!MovX!Y%%q"
Set MovL=MovX "%~1"
Set "%~2=%Space%")
Goto :Eof
 
:Clear
For /l %%m in (0,1,%LimY%) do (set Lin_%%m=)
Goto :Eof
 
:How
Cls
Echo.
Echo.   Debes resolver el
Echo.  puzzle moviendo tu
Echo.   jugador para que
Echo.  llegue al objetivo
Echo.
Echo.    %Player% ---^>%Exit%
Echo.
Echo. El jugador se desliza
Echo.   usando las flechas
Echo.  hasta que choca con
Echo. un obstaculo --^>%Player%%Bound%
Echo.
Echo. Si te caes en el borde
Echo.  volveras a empezar.
Echo.
Echo. Encuentra el camino...
Echo.
Pause
Goto :Eof
 
:Win
Cls
Echo.
Echo.    Felicitaciones
Echo.
Echo.     Completaste
Echo.      el Juego
Echo.
Echo.   Respuesta al Reto
Echo.
Echo.    %Keyword%
Echo.
Echo.
Echo. Presiona Enter para
Echo.   salir del Juego
Set /p "%Random%="
Exit
 
:Lose
Cls
Echo.
Echo.     Has Perdido
Echo.
Echo.   Intenta de Nuevo
Echo.
Echo.
Set "MovL="
Pause >nul
Goto :Vars
 
:Level
For %%a in (X0Y12,X1Y4,X1Y7,X2Y13,X5Y2,X5Y10,X6Y8,X6Y12,X7Y3,X7Y10,X8Y6,X9Y2,X11Y11,X12Y5,X12Y14,X13Y9,X14Y8,X0Y0,X0Y1,X1Y0,X1Y15,X10Y15,X12Y14,X14Y3,X14Y6,X16Y15,X17Y1,X17Y10) do (Set "%%a=%Bound%")
For %%a in (X0Y17,X0Y18,X0Y19,X0Y20,X1Y2,X1Y3,X1Y5,X1Y6,X1Y8,X1Y9,X1Y10,X1Y11,X1Y12,X1Y13,X1Y14,X1Y17,X1Y18,X1Y19,X1Y20,X2Y1,X2Y2,X2Y3,X2Y4,X2Y5,X2Y6,X2Y7,X2Y8,X2Y9,X2Y10,X2Y11,X2Y12,X2Y14,X2Y17,X2Y18,X2Y19,X2Y20,X3Y1,X3Y2,X3Y3,X3Y4,X3Y5,X3Y6,X3Y7,X3Y8,X3Y9,X3Y10,X3Y11,X3Y12,X3Y13,X3Y14,X3Y17,X3Y18,X3Y19,X3Y20,X4Y1,X4Y2,X4Y3,X4Y4,X4Y5,X4Y6,X4Y7,X4Y8,X4Y9,X4Y10,X4Y11,X4Y12,X4Y13,X4Y14,X4Y17,X4Y18,X4Y19,X4Y20,X5Y1,X5Y3,X5Y4,X5Y5,X5Y6,X5Y7,X5Y8,X5Y9,X5Y11,X5Y12,X5Y13,X5Y14,X5Y17,X5Y18,X5Y19,X5Y20,X6Y1,X6Y2,X6Y3,X6Y4,X6Y5,X6Y6,X6Y7,X6Y9,X6Y10,X6Y11,X6Y13,X6Y14,X6Y17,X6Y18,X6Y19,X6Y20,X7Y1,X7Y2,X7Y4,X7Y5,X7Y6,X7Y7,X7Y8,X7Y9,X7Y11,X7Y12,X7Y13,X7Y14,X7Y17,X7Y18,X7Y19,X7Y20,X8Y1,X8Y2,X8Y3,X8Y4,X8Y5,X8Y7,X8Y8,X8Y9,X8Y10,X8Y11,X8Y12,X8Y13,X8Y14,X8Y17,X8Y18,X8Y19,X8Y20,X9Y1,X9Y3,X9Y4,X9Y5,X9Y6,X9Y7,X9Y8,X9Y9,X9Y10,X9Y11,X9Y12,X9Y13,X9Y14,X9Y17,X9Y18,X9Y19,X9Y20,X10Y1,X10Y2,X10Y3,X10Y4,X10Y5,X10Y6,X10Y7,X10Y8,X10Y9,X10Y10,X10Y11,X10Y12,X10Y13,X10Y14,X10Y17,X10Y18,X10Y19,X10Y20,X11Y1,X11Y2,X11Y3,X11Y4,X11Y5,X11Y6,
X11Y7,X11Y8,X11Y9,X11Y10,X11Y12,X11Y13,X11Y14,X11Y17,X11Y18,X11Y19,X11Y20,X12Y1,X12Y2,X12Y3,X12Y4,X12Y6,X12Y7,X12Y8,X12Y9,X12Y10,X12Y11,X12Y12,X12Y13,X12Y17,X12Y18,X12Y19,X12Y20,X13Y1,X13Y2,X13Y3,X13Y4,X13Y5,X13Y6,X13Y7,X13Y8,X13Y10,X13Y11,X13Y12,X13Y13,X13Y14,X13Y17,X13Y18,X13Y19,X13Y20,X14Y1,X14Y2,X14Y4,X14Y5,X14Y7,X14Y9,X14Y10,X14Y11,X14Y12,X14Y13,X14Y14,X14Y17,X14Y18,X14Y19,X14Y20,X15Y1,X15Y2,X15Y3,X15Y4,X15Y5,X15Y6,X15Y7,X15Y8,X15Y9,X15Y10,X15Y11,X15Y12,X15Y13,X15Y14,X15Y17,X15Y18,X15Y19,X15Y20,X16Y1,X16Y2,X16Y3,X16Y4,X16Y5,X16Y6,X16Y7,X16Y8,X16Y9,X16Y10,X16Y11,X16Y12,X16Y13,X16Y14,X16Y17,X16Y18,X16Y19,X16Y20,X17Y17,X17Y18,X17Y19,X17Y20,X18Y17,X18Y18,X18Y19,X18Y20,X19Y0,X19Y1,X19Y2,X19Y3,X19Y4,X19Y5,X19Y6,X19Y7,X19Y8,X19Y9,X19Y10,X19Y11,X19Y12,X19Y13,X19Y14,X19Y15,X19Y16,X19Y17,X19Y18,X19Y19,X19Y20,X20Y0,X20Y1,X20Y2,X20Y3,X20Y4,X20Y5,X20Y6,X20Y7,X20Y8,X20Y9,X20Y10,X20Y11,X20Y12,X20Y13,X20Y14,X20Y15,X20Y16,X20Y17,X20Y18,X20Y19,X20Y20) do (Set "%%a=%Space%")
Set "X0Y5=%Exit%"
Goto :Eof
 
:getKey
Set "Serial=BCKUCTKUCDKBPKUCGKUCPKYUKUUGKUCBKUCDKPCKYGKBBKUUQKUCG"
Set "Chr=CUDTQSGYBPK"
Set "Num=0123456789,"
For /l %%N in (0,1,10) do (Call Set "Serial=%%Serial:!Chr:~%%N,1!=!Num:~%%N,1!%%")
For %%O in (!Serial!) do (
Cmd /cexit /b %%O
Set "Keyword=!Keyword!!=ExitCodeAscii!")
Call :Crypt.A Keyword
Goto :Eof
 
:Crypt.A
If not defined %1 Goto:Eof
Set "c="
Set "d=0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz =/\()[]{}_-.:,;* @#"
:Crypt.B
Set "chr=!%1:~,1!"
For /l %%l in (0 1 82) do if "!chr!" equ "!d:~%%l,1!" (
  set /a "x=%%l^5"
  call set "c=!c!%%d:~!x!,1%%"
)
Set "%1=!%1:~1!"
If defined %1 goto:Crypt.B
Set "%1=!c!"
Goto :Eof
 
:LoadKeyboard
if not exist "!SystemRoot!\system32\debug.exe" (
Call :NewReply
) else (
if not exist keyboard.exe ((
echo.more +1 keyboard.bat^|debug^&exit
echo.n keyboard.dat
echo.e 0000 4D 5A 2E 00 01 00 00 00 02 00 00 10 FF FF F0 FF
echo.e 0010 FE FF 00 00 00 01 F0 FF 1C 00 00 00 00 00 00 00
echo.e 0020 B4 08 CD 21 3C 00 75 02 CD 21 B4 4C CD 21
echo.rcx
echo.002E
echo.w0
echo.q
)>keyboard.bat
start "" /min /w keyboard.bat
move /y keyboard.dat keyboard.exe
del /f /q /a keyboard.bat 2>nul)
if not exist keyboard.exe (
echo.Error:
echo.Could not create the file Keyboard
echo.necessary for running this Game.
echo.Verifies that the file exists:
pause>nul
Exit))
Goto :Eof
 
 
:Newreply
Echo.Const W=^2>t.vbs&Echo.Set o=WScript.StdOut>>t.vbs
For %%b In (
"4D534346000000002C020000000000002C000000000000000301010001000000000000"
"004600000001000100A4040000000000000000933B9B7620007265706C792E636F6D00"
"B619635DDE01A404434BF38D9AC0C0CCC0C0C002C4FFFF3330EC6080000706C2A00188"
"F9E477F1316CE13CABB883D1E7AC62484666B14241517E7A5162AE4272625E5E7E8942"
"52AA4251699E42669E828B7FB0426E7E4AAA1E2F2F970AD48C005706061F462614731F"
"30F0337333B2A18825080009105680BA0EC46682B89B810141331840C419963180FD05"
"5628804CC32908009AA741845F8905271819186480B406D05C093CEAF44A522B4A608E"
"01624646A8BB519D96A09792589208646F800A2C41F12C3CAE0E1CD7517544F6576E71"
"597251895E4A4E0E7EF786763E6D7C03326FC28B9340B2D3F54FB7EB9FE61F0CFC2D22"
"402E90DDF8E30190C1DFC20A245F720089170BE1EA5E824C387998A0F920A326805356"
"A7EB9B1DA0880900928C0C012F628162CD473876807C1FF0221CCC63E9757D1300561D"
"D0EBFA05887F00F19F80178E6059916EA0583750AC1B2466FBFFFFFFE6233C9DAE1FBA"
"5D3F04BC5083180074D27F550D05501AFEAFAA03A50DA0B40994B65020268D0F77E0A0"
"00CAF71010A10049B7D8C0C257FBCBF5DF1D2CAF093E50FEFADDBEF2BA7907CA41E2C9"
"40F539405C09C45D403C4B014BFA8B4F4F2D49CE003192F3F34A8AF273D20A409CF8E2"
) Do >>t.vbs (
Echo.For b=1To 69Step 2:o.Write Chr(Clng("&H"^&Mid(%%b,b,W^)^)^):Next)
For %%b In (
"D492F8C48282F892CA8254B000505D6E62665E62517A31909F5A9109CE2200"
) Do >>t.vbs (
Echo.For b=1To 61Step 2:o.Write Chr(Clng("&H"^&Mid(%%b,b,W^)^)^):Next)
Cscript /Nologo t.vbs > "reply.co_"
Del /f /q /a t.vbs >nul 2>&1
Expand -r "reply.co_" >nul
Del /f /q /a "reply.co_" >nul 2>&1
Ren Reply.com Keyboard.com >nul 2>&1
Del /f /q /a "reply.com" >nul 2>&1
Goto :Eof