@echo off
color 0f
title --- %username% --- %date% ------------------
:lock1
cls
echo Enter Password:
choice /c:123456789
if errorlevel 1 set /a l=1
if errorlevel 2 set /a l=2
if errorlevel 3 set /a l=3
if errorlevel 4 set /a l=4
if %l%==1 (goto lock2 & cls)
if %l%==2 (goto lock1 & cls)
if %l%==3 (goto lock1 & cls)
if %l%==4 (goto lock1 & cls)

:lock2
cls
echo Enter Password:*
choice /c:123456789
if errorlevel 1 set /a l1=1
if errorlevel 2 set /a l1=2
if errorlevel 3 set /a l1=3
if errorlevel 4 set /a l1=4
if errorlevel 5 set /a l1=5
if errorlevel 6 set /a l1=6
if errorlevel 7 set /a l1=7
if errorlevel 8 set /a l1=8
if errorlevel 9 set /a l1=9
if %l1%==1 (goto lock2 & cls)
if %l1%==2 (goto lock3 & cls)
if %l1%==3 (goto lock2 & cls)
if %l1%==4 (goto lock2 & cls)
if %l1%==5 (goto lock2 & cls)
if %l1%==6 (goto lock2 & cls)
if %l1%==7 (goto lock2 & cls)
if %l1%==8 (goto lock2 & cls)
if %l1%==9 (goto lock2 & cls)

:lock3
cls
echo Enter Password:**
choice /c:123456789
if errorlevel 1 set /a l3=1
if errorlevel 2 set /a l3=2
if errorlevel 3 set /a l3=3
if errorlevel 4 set /a l3=4
if errorlevel 5 set /a l3=5
if errorlevel 6 set /a l3=6
if errorlevel 7 set /a l3=7
if errorlevel 8 set /a l3=8
if errorlevel 9 set /a l3=9
if %l3%==1 (goto lock3 & cls)
if %l3%==2 (goto lock3 & cls)
if %l3%==3 (goto lock4 & cls)
if %l3%==4 (goto lock3 & cls)
if %l3%==5 (goto lock3 & cls)
if %l3%==6 (goto lock3 & cls)
if %l3%==7 (goto lock3 & cls)
if %l3%==8 (goto lock3 & cls)
if %l3%==9 (goto lock3 & cls)

:lock4
cls
echo Enter Password:***
choice /c:123456789
if errorlevel 1 set /a l4=1
if errorlevel 2 set /a l4=2
if errorlevel 3 set /a l4=3
if errorlevel 4 set /a l4=4
if errorlevel 5 set /a l4=5
if errorlevel 6 set /a l4=6
if errorlevel 7 set /a l4=7
if errorlevel 8 set /a l4=8
if errorlevel 9 set /a l4=9
if %l4%==1 (goto lock4 & cls)
if %l4%==2 (goto lock4 & cls)
if %l4%==3 (goto lock4 & cls)
if %l4%==4 (goto unlock & cls)
if %l4%==5 (goto lock4 & cls)
if %l4%==6 (goto lock4 & cls)
if %l4%==7 (goto lock4 & cls)
if %l4%==8 (goto lock4 & cls)
if %l4%==9 (goto lock4 & cls)

:unlock
echo Enter Password:****
echo.
echo Successfully unlocked.
>nul ping -n 3 localhost
cls
color 0a
echo.
cls
echo.
echo.
title --- %username% --- %date% --- Loading.   ---
echo Loading...
echo ----------------------------------
echo Progress: �������������������� 1%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading..  ---
echo Loading...
echo ----------------------------------
echo Progress: ۲������������������ 2%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading... ---
echo Loading...
echo ----------------------------------
echo Progress: ۲������������������ 3%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading.   ---
echo Loading...
echo ----------------------------------
echo Progress: �۲����������������� 10%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading..  ---
echo Loading...
echo ----------------------------------
echo Progress: ��۲���������������� 15%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading... ---
echo Loading...
echo ----------------------------------
echo Progress: ���۲��������������� 20%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading.   ---
echo Loading...
echo ----------------------------------
echo Progress: ����۲�������������� 25%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading..  ---
echo Loading...
echo ----------------------------------
echo Progress: �����۲������������� 50%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading... ---
echo Loading...
echo ----------------------------------
echo Progress: ������۲������������ 55%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading.   ---
echo Loading...
echo ----------------------------------
echo Progress: �������۲����������� 40%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading..  ---
echo Loading...
echo ----------------------------------
echo Progress: ��������۲���������� 45%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading... ---
echo Loading...
echo ----------------------------------
echo Progress: ���������۲��������� 50%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading.   ---
echo Loading...
echo ----------------------------------
echo Progress: ����������۲�������� 55%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading.. ---
echo Loading...
echo ----------------------------------
echo Progress: �����������۲������� 60%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading... ---
echo Loading...
echo ----------------------------------
echo Progress: ������������۲������ 65%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading.   ---
echo Loading...
echo ----------------------------------
echo Progress: �������������۲����� 70%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading..  ---
echo Loading...
echo ----------------------------------
echo Progress: ���������������۲��� 80%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading... ---
echo Loading...
echo ----------------------------------
echo Progress: ����������������۲�� 85%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading.   ---
echo Loading...
echo ----------------------------------
echo Progress: �����������������۲� 90%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading..  ---
echo Loading...
echo ----------------------------------
echo Progress: ������������������۲ 95%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
title --- %username% --- %date% --- Loading... ---
echo Loading...
echo �������������������������������������
echo �Progress: �������������������� 100%%�
echo ��������������������������������������
GOTO END
:END
cls
echo.
echo.
title --- %username% --- %date% ------------------
echo Login complete...
echo �����������������������������������Ŀ
echo �Progress: �������������������� 100%%�
echo �������������������������������������
echo.
>nul ping -n 2 localhost
pause