@echo off

title - Kalkulator -
echo ���������������Ŀ
echo �               �             
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
echo.
echo Skriv f�rste tall/tallene i regnestykke ditt:
set /p math=
cls
echo ���������������Ŀ
echo  %math%         
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
echo.
echo Skriv regneform (x/-/+)
set /p math1=
cls
echo ���������������Ŀ
echo  %math%%math1% 
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
echo.
echo Skriv hva du vil multiplisere, subtrahere eller addere med:
set /p math2=
cls
echo ���������������Ŀ
echo  %math%%math1%%math2% 
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
echo.
:svar
echo Skriv = for aa se svaret
set /p svar=
if %svar%== = (set /a svaar=%math%+%math2% & echo %svar%) else
 (goto svar) 
pause