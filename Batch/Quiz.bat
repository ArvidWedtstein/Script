@echo off
for /f %%i in ('"prompt $H &for %%b in (1) do rem"') do set "bs=%%i"
rem Field dimensions
set /A cols=120, lines=50

set /A col=cols+0, lin=lines+0
%F16x8% set /A lin+=lines+0
mode CON: cols=%col% lines=%lin%
if %errorlevel% neq 0 (
   echo Configuration error^^^!
   echo You must select a font size that allows to set
   echo a text window of %col% columns X %lin% lines
   pause
  
)
:quiz
set rscore=0
color 0b
for %%i in ( Ú Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä ¿ ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( ³ V e l k o m m e n " " t i l " " Q u i z m a s k i n e n " " %username% ³ ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
:quizmenu
echo.
for %%i in ( Ã Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Â Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä ´ ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( ³ V e l g " " e n " " k a t e g o r i : " " ³ "     " S c o r e " = " %rscore% "     " ³) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( Ã Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Å Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ù ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( ³ 1 . " " L o g o "           " ³ ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( ³ 2 . " " W W 2 "            " ³ ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( ³ 3 . " " M a t t e "          " ³ ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( ³ 4 . " " H v o r d a n " " s p i l l e ? " " ³ ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( ³ 5 . " " H o v e d m e n y "      " ³ ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
for %%i in ( À Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ù ) do (<nul set /p "=.%bs%%%~i" & >nul ping -n 1 localhost)
echo.
set /p quiztype=

if %quiztype%==1 goto logo
if %quiztype%==2 goto ww2
if %quiztype%==3 goto math
if %quiztype%==4 goto tutorial
if %quiztype%==5 goto Menu
:logo
cls
echo.
echo Du valgte kategori %quiztype%!
echo Hver logo vil vises i 5 sekunder.
>nul ping -n 3 localhost
set /a cuont=%random%
if %cuont%==4 goto batman
if %cuont%==2 goto windows
if %cuont%==1 goto youtube
:batman
cls
echo. 
echo      Hvilket logo er dette?
echo      Score = %rscore%
echo.
echo                                      `.-::/++oooooooo++/::-.`                                      
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
>nul ping -n 5 localhost
cls 
echo.
echo a) YouTube b) Batman c) Clash Of Clans d) Farcry 
set /p batmn= 
if %batmn%==b set /a rscore=%rscore%+1 & echo Riktig Svar
if %batmn%==a set /a rscore=%rscore%-1 & echo Feil Svar. Det riktige svaret er Batman
if %batmn%==c set /a rscore=%rscore%-1 & echo Feil Svar. Det riktige svaret er Batman
if %batmn%==d set /a rscore=%rscore%-1 & echo Feil Svar. Det riktige svaret er Batman
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto windows
if %fm%==nei (cls & goto quizmenu)
:windows
cls
echo.
echo Hvilket logo er dette?
echo Score = %rscore%
echo.
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMNmdhyyssooooossyyhmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMmdhso+++++++++++++++++++++oshmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMs++++++++++++++++++++++++++++++++sdNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMd++++++++++++++++++++++++++++++++++++hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMNo+++++++++++++++++++++++++++++++++++oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMh++++++++++++++++++++++++++++++++++++hMMMMMysdNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMN++++++++++++++++++++++++++++++++++++oMMMMMm++++shmNMMMMMMMMMMMMMMMMMMMMMMMMNmhyyMM
echo MMMMMMMMMMMMMMMMMs++++++++++++++++++++++++++++++++++++mMMMMMs++++++++syhdmNMMMMMMMMMNNmmdhyso++++NMM
echo MMMMMMMMMMMMMMMMm++++++++++++++++++++++++++++++++++++sMMMMMd+++++++++++++++oooooooooo+++++++++++yMMM
echo MMMMMMMMMMMMMMMMo++++++++++++++++++++++++++++++++++++NMMMMNo+++++++++++++++++++++++++++++++++++oNMMM
echo MMMMMMMMMMMMMMMh++++++++++++++++++++++++++++++++++++yMMMMMh++++++++++++++++++++++++++++++++++++dMMMM
echo MMMMMMMMMMMMMMNo+++++++++++++++++++++++++++++++++++oNMMMMN++++++++++++++++++++++++++++++++++++sMMMMM
echo MMMMMMMMMMMMMMy++++++++++++++++++++++++++++++++++++dMMMMMs++++++++++++++++++++++++++++++++++++mMMMMM
echo MMMMMMMMMMMMMm++++++++++++++++++++++++++++++++++++sMMMMMm++++++++++++++++++++++++++++++++++++yMMMMMM
echo MMMMMMMMMMMMMs++++++++++++++++++++++++++++++++++++mMMMMMo++++++++++++++++++++++++++++++++++++NMMMMMM
echo MMMMMMMMMMMMd++++++++++++++++++++++++++++++++++++yMMMMMd++++++++++++++++++++++++++++++++++++hMMMMMMM
echo MMMMMMMMMMMMo++++++ossyhddmmmmmmddhysso+++++++++oNMMMMNo+++++++++++++++++++++++++++++++++++oNMMMMMMM
echo MMMMMMMMMMMh+osyhmNNMMMMMMMMMMMMMMMMMNNmhso+++++hMMMMMy++++++++++++++++++++++++++++++++++++dMMMMMMMM
echo MMMMMMMMMMMmmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmys+oMMMMMm++++++++++++++++++++++++++++++++++++sMMMMMMMMM
echo MMMMMMMMMMMMMMMMNNmmdhhyyysssyyyhhdmNMMMMMMMMNmmMMMMMs++++++++++++++++++++++++++++++++++++mMMMMMMMMM
echo MMMMMMMMMMNNmdhyssoooooooooooooooooossydmNMMMMMMMMMMd++++++++++++++++++++++++++++++++++++yMMMMMMMMMM
echo MMMMMMMMMhssooooooooooooooooooooooooooooosymNMMMMMMMmyo++++++++++++++++++++++++++++++++++NMMMMMMMMMM
echo MMMMMMMMmooooooooooooooooooooooooooooooooooosdMMMMMMMMNdyso+++++++++++++++++++++++++ooshmMMMMMMMMMMM
echo MMMMMMMMsooooooooooooooooooooooooooooooooooooNMMMMNMMMMMMMNdhsoo+++++++++++++ooosyhmNNMMMMMMMMMMMMMM
echo MMMMMMMdoooooooooooooooooooooooooooooooooooohMMMMMs+ymNMMMMMMMMNmmddhhhhhddmmmNNMMMMMMNMMMMMMMMMMMMM
echo MMMMMMNsooooooooooooooooooooooooooooooooooosNMMMMm::::+sdmNMMMMMMMMMMMMMMMMMMMMMMNmdyosMMMMMMMMMMMMM
echo MMMMMMhoooooooooooooooooooooooooooooooooooodMMMMM+:::::::/+oyhmmNNNNNNNNNNmmdhyo+/::::dMMMMMMMMMMMMM
echo MMMMMNoooooooooooooooooooooooooooooooooooosMMMMMh::::::::::::::://++++++///::::::::::oMMMMMMMMMMMMMM
echo MMMMMyoooooooooooooooooooooooooooooooooooomMMMMN/::::::::::::::::::::::::::::::::::::NMMMMMMMMMMMMMM
echo MMMMmooooooooooooooooooooooooooooooooooooyMMMMMy::::::::::::::::::::::::::::::::::::yMMMMMMMMMMMMMMM
echo MMMMsooooooooooooooooooooooooooooooooooooNMMMMN::::::::::::::::::::::::::::::::::::/NMMMMMMMMMMMMMMM
echo MMMdoooooooooooooooooooooooooooooooooooohMMMMMo::::::::::::::::::::::::::::::::::::hMMMMMMMMMMMMMMMM
echo MMNsooooooooooooooooooooooooooooooooooosMMMMMd::::::::::::::::::::::::::::::::::::+MMMMMMMMMMMMMMMMM
echo MMhoooooooooooooooooooooooooooooooooooodMMMMM+::::::::::::::::::::::::::::::::::::mMMMMMMMMMMMMMMMMM
echo MNooooooooooooooooooooooooooooooooooooyMMMMMh::::::::::::::::::::::::::::::::::::sMMMMMMMMMMMMMMMMMM
echo MyoooooooossyyhhhhhhhhyysoooooooooooooNMMMMN/:::::::::::::::::::::::::::::::::::/NMMMMMMMMMMMMMMMMMM
echo moosyhdmmNMMMMMMMMMMMMMMMNNmhyooooooohMMMMMs::::::::::::::::::::::::::::::::::::yMMMMMMMMMMMMMMMMMMM
echo dmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMmhsoooNMMMMm::::::::::::::::::::::::::::::::::::+MMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNddMMMMMo::::::::::::::::::::::::::::::::::::dMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd::::::::::::::::::::::::::::::::::::oMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmy+::::::::::::::::::::::::::::::::::mMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmho/::::::::::::::::::::::::::+oymMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmhso/::::::::::::::/+sydmMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmdddddddmmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
>nul ping -n 5 localhost
cls
echo.
echo a) Apple b) Chrome c) Microsoft d) Windows
set /p winsvar=
if %winsvar%==a set /a rscore=%rscore%-1 & echo Feil. Det riktige svaret var Windows
if %winsvar%==b set /a rscore=%rscore%-1 & echo Feil. Det riktige svaret var Windows
if %winsvar%==c set /a rscore=%rscore%-1 & echo Feil. Det riktige svaret var Windows
if %winsvar%==d set /a rscore=%rscore%+1 & echo Riktig Svar! 
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto youtube
if %fm%==nei goto quizmenu & cls
>nul ping -n 2 localhost
:youtube
cls 
echo.
echo Hvilket logo er dette?
echo Score = %rscore%
echo.
echo   :osyyhhhhddddddddddhhhhyyso/`        
echo  ymmmmmmmmmmmmmmmmmmmmmmmmmmmmd.               
echo :mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmo              
echo ommmmmmmmmmmd:ohmmmmmmmmmmmmmmmh     
echo smmmmmmmmmmmd   ./ymmmmmmmmmmmmd     
echo ymmmmmmmmmmmd      `ommmmmmmmmmd     
echo smmmmmmmmmmmd   ./ymmmmmmmmmmmmd      
echo ommmmmmmmmmmd:ohmmmmmmmmmmmmmmmh      
echo :mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmo      
echo  ymmmmmmmmmmmmmmmmmmmmmmmmmmmmd.      
echo   :osyyhhhhdddddddddddhhhyyso/`          
>nul ping -n 5 localhost
cls
echo.
echo a) Youtube b) Facebook c) Snapchat d) Twitter e) Messenger
set /p ytsvar=

if %ytsvar%==a set /a rscore=%rscore%+1 & echo Riktig Svar!
if %ytsvar%==b set /a rscore=%rscore%-1 & echo Feil. Det riktige svaret var Youtube
if %ytsvar%==c set /a rscore=%rscore%-1 & echo Feil. Det riktige svaret var Youtube
if %ytsvar%==d set /a rscore=%rscore%-1 & echo Feil. Det riktige svaret var Youtube
if %ytsvar%==e set /a rscore=%rscore%-1 & echo Feil. Det riktige svaret var Youtube
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto 
if %fm%==nei goto quizmenu & cls
>nul ping -n 2 localhost
goto quizmenu

:ww2

cls
echo.
echo Du valgte kategori %quiztype%!
echo Hvert spoorsmaal vil vises i 5 sekunder.
>nul ping -n 3 localhost
cls
echo. 
echo Hvor kom Adolf Hitler fra?
echo Score = %rscore%
>nul ping -n 5 localhost
cls
echo.
echo a) Tyskland b) Sveits c) Norge d) Storbritannia e) Østerrike
set /p ahsvar=

if %ahsvar%==a set /a rscore=%rscore%-1 % echo Feil svar. Det riktige svaret var Østerrike
if %ahsvar%==b set /a rscore=%rscore%-1 & echo Feil svar. Det riktige svaret var Østerrike
if %ahsvar%==c set /a rscore=%rscore%-1 & echo Feil svar. Det riktige svaret var Østerrike
if %ahsvar%==d set /a rscore=%rscore%-1 & echo Feil svar. Det riktige svaret var Østerrike
if %ahsvar%==e set /a rscore=%rscore%+1 & echo Riktig Svar!
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto wwstart
if %fm%==nei goto quizmenu & cls
:wwstart
cls
echo.
echo Nar startet andre verdenskrig?
echo Score = %rscore%
>nul ping -n 5 localhost
cls
echo.
echo a) 1940 b) 1939 c) 1945 d) 1943
set /p wwsvar=

if %wwsvar%==a set /a rscore=%rscore%-1 & echo Feil. Det riktige svaret var 1939
if %wwsvar%==b set /a rscore=%rscore%+1 & echo Riktig svar!
if %wwsvar%==c set /a rscore=%rscore%-1 & echo Feil. Det riktige svaret var 1939
if %wwsvar%==d set /a rscore=%rscore%-1 & echo Feil. Det riktige svaret var 1939
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto wwend
if %fm%==nei goto quizmenu & cls
:wwend
cls
echo.
echo Naar sluttet andre verdenskrig?
echo Score = %rscore%
>nul ping -n 5 localhost
cls
echo.
echo a) 1940 b) 1939 c) 1945 d) 1943
set /p wwendsvar=

if %wwendsvar%==a set /a rscore=%rscore%+1 & echo Du svarte dessverre feil. Det riktige svaret er 1945
if %wwendsvar%==b set /a rscore=%rscore%+1 & echo Du svarte dessverre feil. Det riktige svaret er 1945
if %wwendsvar%==c set /a rscore=%rscore%+1 & echo Riktig svar!
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto ch
if %fm%==nei goto quizmenu & cls

:ch
cls
echo.
echo Hvem var Winston Churchill?
echo Score = %rscore%
>nul ping -n 5 localhost
cls
echo.
echo a) Faren til Adolf Hitler b) Hitlers raadgiver c) Britisk statsminister under andre verdenskrig.
set /p chsvar=

if %chsvar%==a set /a rscore=%rscore%-1 & echo Dette er feil svar. Det riktige svaret er c
if %chsvar%==b set /a rscore=%rscore%-1 & echo Du svarte dessverre feil. Det riktige svaret var c
if %chsvar%==c set /a rscore=%rscore%+1 & echo Korrekt!
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto 
if %fm%==nei goto quizmenu & cls

:tutorial
cls
echo.
echo Maalet ditt, %navn% er aa faa hooyest mulig Score.
echo Hver oppgave vil vises i 5 sekunder. 
echo For hver oppgave du faar riktig vil scoren din stige med 1
echo For hver gang du faar feil vil det trekkes -1 fra scoren din
pause >nul
cls
goto quizmenu

:math
cls
echo.
echo Du valgte kategori %quiztype%!
echo Hver oppgave vil vises i 5 sekunder.
>nul ping -n 3 localhost
:935
cls 
echo.
echo Hva er 9*3*5?
echo Score = %rscore%
>nul ping -n 5 localhost
cls
echo.
echo a) 135 b) 685 c) 480 d) 935 e) 593 
set /p 935svar=
if %935svar%==135 set /a rscore=(%rscore%+1 & echo Korrekt!) else (%rscore%-1 & echo FEIL)
if %935svar%==a set /a rscore=%rscore%+1 & echo Korrekt!
if %935svar%==b set /a rscore=%rscore%-1 & echo Dette stemmer ikke. Rett svar er 135.
if %935svar%==c set /a rscore=%rscore%-1 & echo Dette stemmer ikke. Rett svar er 135.
if %935svar%==d set /a rscore=%rscore%-1 & echo Dette stemmer ikke. Rett svar er 135.
if %935svar%==e set /a rscore=%rscore%-1 & echo Dette stemmer ikke. Rett svar er 135.
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto 853
if %fm%==nei goto quizmenu & cls

:853
cls
echo.
echo Hva er 853:5?
echo Score = %rscore%
>nul ping -n 5 localhost
cls
echo.
echo a) 214 b) 170,6 c) 171,8
set /p 853svar=

if %853svar%==214 set /a rscore=%rscore%-1 & echo WRONG. Rett svar er 170,6
if %853svar%==170,6 set /a rscore=%rscore%+1 & echo Korrekt! 
if %853svar%==171,8 set /a rscore=%rscore%-1 & echo Feil, det rette svaret er 170,6
if %853svar%==a set /a rscore=%rscore%-1 & echo Feil, det rette svaret er 170,6
if %853svar%==b set /a rscore=%rscore%+1 & echo Korrekt!
if %853svar%==c set /a rscore=%rscore%-1 & echo Feil, det rette svaret er 170,6
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto 1001
if %fm%==nei goto quizmenu & cls

:1001
cls
echo.
echo Hva er 1001+4026?
echo Score = %rscore% 
>nul ping -n 5 localhost
cls
echo.
echo a) 5021 b) 3042 c) 6390 d) 5027
set /p 1001svar=

if %1001svar%==5021 set /a rscore=%rscore%-1 & echo Dette er feil. Det riktige svaret var 5027
if %1001svar%==3042 set /a rscore=%rscore%-1 & echo Dette er feil. Det riktige svaret var 5027.
if %1001svar%==6390 set /a rscore=%rscore%-1 & echo Dette er feil. Det riktige svaret var 5027.
if %1001svar%==5027 set /a rscore=%rscore%+1 & echo Riktig! 
if %1001svar%==a set /a rscore=%rscore%-1 & echo Dette er feil. Det riktige svaret var 5027.
if %1001svar%==b set /a rscore=%rscore%-1 & echo Dette er feil. Det riktige svaret var 5027.
if %1001svar%==c set /a rscore=%rscore%-1 & echo Dette er feil. Det riktige svaret var 5027.
if %1001svar%==d set /a rscore=%rscore%+1 & echo Riktig!
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto 56396
if %fm%==nei goto quizmenu & cls

:56396
cls
echo. 
echo Hva er 56396-103833
echo Score = %rscore%
>nul ping -n 5 localhost
cls 
echo.
echo a) -47437 b) 47438 c) 74783
set /p 56396svar=

if 56396svar==-47437 set /a rscore=%rscore%+1 & echo Helt rett!
if 56396svar==47438 set /a rscore=%rscore%-1 & echo Du svarte feil. Det riktige svaret var -47437
if 56396svar==74783 set /a rscore=%rscore%-1 & echo Dette er feil. Det riktige svaret er -47437
if 56396svar==a set /a rscore=%rscore%+1 & echo Helt rett! 
if 56396svar==b set /a rscore=%rscore%-1 & echo Du svarte feil. Det riktige svaret var -47437
if 56396svar==c set /a rscore=%rscore%-1 & echo Feil Svar. Det riktige svaret var -47437
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto 103
if %fm%==nei goto quizmenu & cls

:103
cls
echo.
echo Hva er 103*6?
echo Score = %rscore%
>nul ping -n 5 localhost
cls
echo.
echo a) 6018 b) 402 c) 516 d) 600 e) 620 f) 618
set /p 103svar=

if %103svar%==6018 set /a rscore=%rscore%-1 & echo Feil. Rett svar er 618
if %103svar%==402 set /a rscore=%rscore%-1 & echo Feil. Rett svar er 618
if %103svar%==516 set /a rscore=%rscore%-1 & echo Feil. Rett svar er 618
if %103svar%==600 set /a rscore=%rscore%-1 & echo Feil. Rett svar er 618
if %103svar%==620 set /a rscore=%rscore%-1 & echo Feil. Rett svar er 618
if %103svar%==618 set /a rscore=%rscore%+1 & echo Rett!
if %103svar%==a set /a rscore=%rscore%-1 & echo Feil. Bare 618 kan være rett
if %103svar%==b set /a rscore=%rscore%-1 & echo Feil. Rett svar er 618
if %103svar%==c set /a rscore=%rscore%-1 & echo Dette stemmer ikke. Rett svar er 618
if %103svar%==d set /a rscore=%rscore%-1 & echo Feil. Det rette svaret er 618
if %103svar%==e set /a rscore=%rscore%-1 & echo Feil. Rett svar er 618
if %103svar%==f set /a rscore=%rscore%+1 & echo Korrekt!
if %rscore%==-1 goto GAMEOVER
echo Din score er %rscore%. Vil du fortsette?
set /p fm=

if %fm%==ja goto 
if %fm%==nei goto quizmenu & cls

:GAMEOVER
color 0a
echo  ________  ________  _____ ______   _______           ________  ___      ___ _______   ________     
echo |\   ____\|\   __  \|\   _ \  _   \|\  ___ \         |\   __  \|\  \    /  /|\  ___ \ |\   __  \    
echo \ \  \___|\ \  \|\  \ \  \\\__\ \  \ \   __/|        \ \  \|\  \ \  \  /  / | \   __/|\ \  \|\  \   
echo  \ \  \  __\ \   __  \ \  \\|__| \  \ \  \_|/__       \ \  \\\  \ \  \/  / / \ \  \_|/_\ \   _  _\  
echo   \ \  \|\  \ \  \ \  \ \  \    \ \  \ \  \_|\ \       \ \  \\\  \ \    / /   \ \  \_|\ \ \  \\  \| 
echo    \ \_______\ \__\ \__\ \__\    \ \__\ \_______\       \ \_______\ \__/ /     \ \_______\ \__\\ _\ 
echo     \|_______|\|__|\|__|\|__|     \|__|\|_______|        \|_______|\|__|/       \|_______|\|__|\|__|
pause >nul
goto quizmenu & set rscore=0
                                                                                                    
                                                                                                    
                                                                                                    




















    
                      
