@echo off
 :start
cls
Echo Press 1 for Addition
echo Press 2 for Subtraction
echo Press 3 for Multiplication
echo Press 4 for Division
echo Press 5 to Quit
set /p type=
if %type%==1 goto a
if %type%==2 goto b
if %type%==3 goto c
if %type%==4 goto d
if %type%==5 goto e
 :a
echo Addition
echo Please choose the 2 numbers you wish to add
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
set /p num1=
cls
echo ���������������Ŀ
echo �%num1% +                     
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
set /p num2=
cls
echo ���������������Ŀ
echo �%num2%                     
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
pause
set /a Answer=%num1%+%num2%
cls
echo ���������������Ŀ
echo �= %Answer%                           
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������

pause
goto start
 :b
echo Subtraction
echo Please choose the 2 numbers you wish to subtract
set /p num1=
echo ���������������Ŀ
echo �%num1% -                         
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
set /p num2=
cls
echo ���������������Ŀ
echo �%num2%                          
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
pause
set /a Answer=%num1%-%num2%
cls
echo ���������������Ŀ
echo �= %Answer%             
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
pause
goto start
 :c
echo Multiplication
echo Please choose the 2 numbers you wish to multiply
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
set /p num1=
cls
echo ���������������Ŀ
echo �%num1% *                            
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
set /p num2=
cls
echo ���������������Ŀ
echo �%num1% * %num2%                            
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
pause
set /a Answer=%num1%*%num2%
cls
echo ���������������Ŀ
echo �= %Answer%                            
echo ���������������Ĵ
echo � 7 � 8 � 9 � x �
echo ���������������Ĵ
echo � 4 � 5 � 6 � - �
echo ���������������Ĵ
echo � 1 � 2 � 3 � + �
echo ���������������Ĵ
echo � ! � 0 � , � = �
echo �����������������
pause
goto start
 :d
echo Division
echo Please choose the 2 numbers you wish to divide
set /p num1=
set /p num2=
echo %num1%/%num2%?
pause
set /a Answer=%num1%/%num2%
echo %Answer%
pause
goto start
 :e
echo. Done!