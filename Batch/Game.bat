@echo off 
color 0b
set title=Game Of Gamers
title %title%
:Menu
start Welcome.vbs
cls
echo.
echo Velkommen
echo.
echo Vennligst oppgi ditt navn:
set /p navn=

cls
echo.
echo Vennligst velg en ting %navn% og trykk deretter enter
echo -----------------------------------------------------
echo 1) Start
echo 2) Laget av...
echo 3) Matrix
echo 4) Tetris
echo 5) Dragon Game
echo 6) Pokemon
echo 7) Batman!
echo 8) Logo Quiz
echo 9) Exit
set /p svar=Skriv inn et nummer og trykk enter: 
if %svar%==1 goto start
if %svar%==2 goto makers
if %svar%==3 goto matrix
if %svar%==4 goto tetris
if %svar%==5 goto dragon
if %svar%==6 goto pokemon
if %svar%==7 goto batman
if %svar%==8 goto quiz
if %svar%==9 goto Exit
:exit
cls
echo.
echo Takk for at du ville spille %title% %navn%!
pause >nul
goto eof
:start
if %navn%==Adolf goto nazi
if %navn%==Hitler goto nazi
cls
echo Kjapp deg %navn%! Noen sinte menn har omringet deg.
echo De ser svært brutale ut. 
echo Om du kjemper mot dem vil du mest sannsynlig vinne
set /p answer=Vil du kjempe som en helt eller loope vekk som en reddhare?

if %answer%==kjempe goto Fight_1
if %answer%==løpe goto Run_1
pause
:Run_1
cls
echo Du klarte å komme deg i sikkerhet!
pause
goto menu
:Fight_1
echo Gjor deg klar for et stort slag %navn%.
echo Slaget blir mer og mer spennende...
echo Mange tropper dauer av skadene...
pause >nul Press Enter to Continue
goto Fight_1_Loop
:Fight_1_Loop
set /a num=%random%
if %num% gtr 4 goto Fight_1_Loop
if %num% lss 1 goto Fight_1_Loop
if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1
:Lose_Fight_1
cls
echo Uheldigvis, tapte du slaget, %navn%
set /p Quit = Vil du ragequite eller fortsette?
if %Quit%==ragequit goto exit
if %Quit%==continue goto Menu
:Win_Fight_1
cls
echo Gratulerer, du vant slaget!!!
set /p answer='Would you like to save?' Type yes to save or type no .
if %answer%=='yes' goto 'Save'
if %answer%=='no' goto 'Start_2'
:Save
goto Start_2
:nazi
cls
echo Fort deg %navn%! Noen idioter har omringet det Tyske Riket!
echo De er totalt 136 russiske soldater
echo På grunn av dine gode krigsstrategier har du en høy sjanse til å sikre det Tyske Riket fra russerene. 
set /p answer=Vil du, Mein Fuhrer kjempe som en helt eller gi det Tyske Riket til russerene?
if %answer%==kjempe goto Fight_1
if %answer%==gi goto RunNazi
pause
:RunNazi
cls
echo oh nei, du gidde det Tyske Riket til russerne...
set /p qut = Vil du ragequite eller fortsette?
if %Qut%==ragequit goto exit
if %Qut%==fortsette goto Menu
:makers
color 04
cls
echo.
echo Dette spillet er laget av
echo Arvid
echo. 
echo Følg meg på:
echo   :osyyhhhhddddddddddhhhhyyso/`    ...`   `..`                `.........         :++.               
echo  ymmmmmmmmmmmmmmmmmmmmmmmmmmmmd.   +mmo  `dmd`                /mmmmmmmmh         smm:               
echo :mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmo   `hmd` +mm/                  ``:mmy```         smm:               
echo ommmmmmmmmmmd:ohmmmmmmmmmmmmmmmh    :mm/ hmh `+syys/` `sss  +ss- :mmy `oss` +ss- smm/oyyo`  .+syys: 
echo smmmmmmmmmmmd   ./ymmmmmmmmmmmmd     ymh:mm:`hmd//mmy .mmm  ymm: :mmy `mmm` ymm/ smmy:smmy .dmy-omm/
echo ymmmmmmmmmmmd      `ommmmmmmmmmd     -mmhmy :mmy  dmm..mmm  ymm: :mmy `mmm` ymm/ smm: .mmd`+mm+ -mmy
echo smmmmmmmmmmmd   ./ymmmmmmmmmmmmd      smmm. /mmy  dmm-.mmm  ymm: :mmy `mmm` ymm/ smm: `mmm`+mmhsymmy
echo ommmmmmmmmmmd:ohmmmmmmmmmmmmmmmh      -mmy  /mmy  dmm-.mmm  ymm: :mmy `mmm` ymm/ smm: .mmm`+mmo----.
echo :mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmo      -mmy  -mmh  mmd``mmm` hmm: :mmy `dmm. ymm/ smm: :mmh :mmo .dh+
echo  ymmmmmmmmmmmmmmmmmmmmmmmmmmmmd.      -mmy   +dmhdmd:  ymmdhomm: :mmy  smmdhomm/ smmshmmd:  ommhdmh.
echo   :osyyhhhhdddddddddddhhhyyso/`        ..`     .--.     .-.  ..` `..`   .-.  ..` `.` `-.     `.--`  

pause >nul
goto menu
:matrix 
set loop=0
:start
echo.
:: create a backspace character
for /f %%i in ('"prompt $H &for %%b in (1) do rem"') do set "bs=%%i"

:: animate the string
for %%i in ( L o a d i n g "","") do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo:
echo ---------------
:: create a backspace character
for /f %%l in ('"prompt $H &for %%b in (1) do rem"') do set "bs=%%l"

:: animate the string
for %%l in ( Û Û Û Û Û Û Û Û Û Û Û Û Û ) do (<nul set /p "=.%bs%%%~l" & >nul ping -n 1 localhost)
echo:
echo ---------------
>nul ping -n 2 localhost
set /a loop=%loop%+1 
if "%loop%"=="1" goto next
cls
:next
echo.
echo Loading Complete...
>nul ping -n 2 localhost
cls
color 0a
set looop=0
:looop
echo. 
echo %random% %random%   %random%    %random%     %random%  %random%   %random%    %random%  %random%    %random%          %random%      %random%    %random%
set /a looop=%looop%+1
if "%looop%"=="100" >nul ping -n 2 localhost & goto menu
goto looop
:tetris
start tetris.bat
goto menu
:dragon
start DragonGame.bat
goto menu
:pokemon 
start Pokemon.bat
goto menu
:batman
cls
echo                                     `.-::/++oooooooo++/::-.`                                      
echo                             `-:+sydmNMMMNNNmdddhhhhdddmNNNMMMNmdys+:-`                             
echo                        -/shNMMNmhso+:-.``                ``.-:+oshmNMMmhs/-                        
echo                   `/sdNMNhs+-.  .`                              `.  .-+shNMNds/`                   
echo                :smMMds/. `-+shmN+          do        od          +Nmhs+-` ./sdMMms:                
echo             :yNMms:` -+ymMMMMMN-          `NMd++++++dMN`          -NMMMMMmy+- `:smMNy:             
echo          .sNMmo. .+hNMMMMMMMMM-           -MMMMMMMMMMMM-           -MMMMMMMMMNh+. -omMNs.          
echo        -yMMy- .odMMMMMMMMMMMMs            +MMMMMMMMMMMM+            sMMMMMMMMMMMMdo. -yMMy-        
echo      .yMNs` :hMMMMMMMMMMMMMMM.            yMMMMMMMMMMMMy            .MMMMMMMMMMMMMMMh: `sNMy.      
echo     +NMy. /mMMMMMMMMMMMMMMMMM`            mMMMMMMMMMMMMm            `MMMMMMMMMMMMMMMMMm/ .yMN+     
echo    yMN/ .hMMMMMMMMMMMMMMMMMMM/           .NMMMMMMMMMMMMN.           /MMMMMMMMMMMMMMMMMMMh. /NMy    
echo   yMN- /NMMMMMMMMMMMMMMMMMMMMm.          hMMMMMMMMMMMMMMh          .mMMMMMMMMMMMMMMMMMMMMN/ -NMy   
echo  oMM: /MMMMMMMMMMMMMMMMMMMMMMMN/       .dMMMMMMMMMMMMMMMMd.       /NMMMMMMMMMMMMMMMMMMMMMMM/ :MMo  
echo .NMs .NMMMMMMMMMMMMMMMMMMMMMMMMMNy+/+ohMMMMMMMMMMMMMMMMMMMMho+/+yNMMMMMMMMMMMMMMMMMMMMMMMMMN. sMN. 
echo /MM- +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM+ -MM/ 
echo oMN. yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy .NMo 
echo /MM- oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMo -MM/ 
echo .NMs .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM. sMN. 
echo  oMM: oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMo :MMo  
echo   yMN- oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMo -NMy   
echo    yMN/ :mMMMMMMMMMMMNs+//+sdNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNds+//+sNMMMMMMMMMMMm: /NMy    
echo     /NMy.`oNMMMMMMMMh`       `/dMMMMMMdssymMMMMMMMMMMMMmyssdMMMMMMd/`       `hMMMMMMMMNo`.yMN/     
echo      .yMNs``oNMMMMMM:           :dMMh.     .sMMMMMMMMs.     .hMMd:           :MMMMMMNo``sNMy.      
echo        -yMMy- :hMMMMs             sy         -mMMMMm-         ys             sMMMMh: -yMMy-        
echo          .sNMmo-`/ymM/                        `hMMh`                        /Mmy/`-omMNs.          
echo             :yNMms:`./.                        `dd`                        ./.`:smMNy:             
echo                :smMMds/.                        ..                        ./sdMMms:                
echo                   `/sdNMNhs+-.                                      .-+shNMNds/`                   
echo                        -/shmMMNmhso/:-.``                ``.-:/oshmNMMmhs/-                        
echo                             `-:+sydmNMMMNNNmdddhhhhdddmNNNMMMNmdys+:-`                             
echo                                      `.-://++oooooooo++//:-.`       
pause
goto menu   
                            

