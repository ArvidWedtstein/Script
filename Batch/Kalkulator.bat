@echo off

title - Kalkulator -
echo зддддддддддддддд©
echo Ё               Ё             
echo цддддддддддддддд╢
echo Ё 7 Ё 8 Ё 9 Ё x Ё
echo цддддддддддддддд╢
echo Ё 4 Ё 5 Ё 6 Ё - Ё
echo цддддддддддддддд╢
echo Ё 1 Ё 2 Ё 3 Ё + Ё
echo цддддддддддддддд╢
echo Ё ! Ё 0 Ё , Ё = Ё
echo юддддддддддддддды
echo.
echo Skriv fЬrste tall/tallene i regnestykke ditt:
set /p math=
cls
echo зддддддддддддддд©
echo  %math%         
echo цддддддддддддддд╢
echo Ё 7 Ё 8 Ё 9 Ё x Ё
echo цддддддддддддддд╢
echo Ё 4 Ё 5 Ё 6 Ё - Ё
echo цддддддддддддддд╢
echo Ё 1 Ё 2 Ё 3 Ё + Ё
echo цддддддддддддддд╢
echo Ё ! Ё 0 Ё , Ё = Ё
echo юддддддддддддддды
echo.
echo Skriv regneform (x/-/+)
set /p math1=
cls
echo зддддддддддддддд©
echo  %math%%math1% 
echo цддддддддддддддд╢
echo Ё 7 Ё 8 Ё 9 Ё x Ё
echo цддддддддддддддд╢
echo Ё 4 Ё 5 Ё 6 Ё - Ё
echo цддддддддддддддд╢
echo Ё 1 Ё 2 Ё 3 Ё + Ё
echo цддддддддддддддд╢
echo Ё ! Ё 0 Ё , Ё = Ё
echo юддддддддддддддды
echo.
echo Skriv hva du vil multiplisere, subtrahere eller addere med:
set /p math2=
cls
echo зддддддддддддддд©
echo  %math%%math1%%math2% 
echo цддддддддддддддд╢
echo Ё 7 Ё 8 Ё 9 Ё x Ё
echo цддддддддддддддд╢
echo Ё 4 Ё 5 Ё 6 Ё - Ё
echo цддддддддддддддд╢
echo Ё 1 Ё 2 Ё 3 Ё + Ё
echo цддддддддддддддд╢
echo Ё ! Ё 0 Ё , Ё = Ё
echo юддддддддддддддды
echo.
:svar
echo Skriv = for aa se svaret
set /p svar=
if %svar%== = (set /a svaar=%math%+%math2% & echo %svar%) else
 (goto svar) 
pause