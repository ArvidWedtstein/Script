@echo off

title - Kalkulator -
echo 旼컴컴컴컴컴컴컴�
echo �               �             
echo 쳐컴컴컴컴컴컴컴�
echo � 7 � 8 � 9 � x �
echo 쳐컴컴컴컴컴컴컴�
echo � 4 � 5 � 6 � - �
echo 쳐컴컴컴컴컴컴컴�
echo � 1 � 2 � 3 � + �
echo 쳐컴컴컴컴컴컴컴�
echo � ! � 0 � , � = �
echo 읕컴컴컴컴컴컴컴�
echo.
echo Skriv f�rste tall/tallene i regnestykke ditt:
set /p math=
cls
echo 旼컴컴컴컴컴컴컴�
echo  %math%         
echo 쳐컴컴컴컴컴컴컴�
echo � 7 � 8 � 9 � x �
echo 쳐컴컴컴컴컴컴컴�
echo � 4 � 5 � 6 � - �
echo 쳐컴컴컴컴컴컴컴�
echo � 1 � 2 � 3 � + �
echo 쳐컴컴컴컴컴컴컴�
echo � ! � 0 � , � = �
echo 읕컴컴컴컴컴컴컴�
echo.
echo Skriv regneform (x/-/+)
set /p math1=
cls
echo 旼컴컴컴컴컴컴컴�
echo  %math%%math1% 
echo 쳐컴컴컴컴컴컴컴�
echo � 7 � 8 � 9 � x �
echo 쳐컴컴컴컴컴컴컴�
echo � 4 � 5 � 6 � - �
echo 쳐컴컴컴컴컴컴컴�
echo � 1 � 2 � 3 � + �
echo 쳐컴컴컴컴컴컴컴�
echo � ! � 0 � , � = �
echo 읕컴컴컴컴컴컴컴�
echo.
echo Skriv hva du vil multiplisere, subtrahere eller addere med:
set /p math2=
cls
echo 旼컴컴컴컴컴컴컴�
echo  %math%%math1%%math2% 
echo 쳐컴컴컴컴컴컴컴�
echo � 7 � 8 � 9 � x �
echo 쳐컴컴컴컴컴컴컴�
echo � 4 � 5 � 6 � - �
echo 쳐컴컴컴컴컴컴컴�
echo � 1 � 2 � 3 � + �
echo 쳐컴컴컴컴컴컴컴�
echo � ! � 0 � , � = �
echo 읕컴컴컴컴컴컴컴�
echo.
:svar
echo Skriv = for aa se svaret
set /p svar=
if %svar%== = (set /a svaar=%math%+%math2% & echo %svar%) else
 (goto svar) 
pause