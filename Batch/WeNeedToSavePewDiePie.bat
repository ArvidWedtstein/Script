@echo off
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Har du abonnert paa PewDiePie? ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³ 1. Ja                          ³
echo À 2. Nei                         Ù
choice /c:12
if errorlevel 1 set a=1
if errorlevel 2 set a=2
if %a%==1 goto t-series
if %a%==2 goto abonner
pause

:t-series
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Abonnerer du paa T-Series? ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³ 1. Ja                      ³
echo À 2. Nei                     Ù
choice /c:12
if errorlevel 1 set a=1
if errorlevel 2 set a=2
if %a%==1 goto unsub
if %a%==2 goto eof

:unsub
start https://www.youtube.com/channel/UCq-Fj5jknLsUf-MWSy4_brA
>>T.vbs echo H=MsgBox("Unsubscribe Now",1+16,"T-Series has aids. Dont get infected")
>>Ts.vbs echo Set Sapi = Wscript.CreateObject("SAPI.SpVoice")
>>Ts.vbs echo dim str
>>Ts.vbs echo Sapi.speak " Unsubscribe Now! "
start T.vbs 
start Ts.vbs
>nul ping -n 5 localhost
del T.vbs
del Ts.vbs
goto eof

:abonner
start https://www.youtube.com/channel/UC-lHJZR3Gqxm24_Vd_AJ5Yw
>>PEW.vbs echo H=MsgBox("Subscribe Now!",1+16,"Subscribtion Required")
>>PEWDS.vbs echo Set Sapi = Wscript.CreateObject("SAPI.SpVoice")
>>PEWDS.vbs echo dim str
>>PEWDS.vbs echo Sapi.speak " Subscribe now! "
start PEW.vbs
start PEWDS.vbs
>nul ping -n 3 localhost
del PEW.vbs
del PEWDS.vbs
goto t-series
