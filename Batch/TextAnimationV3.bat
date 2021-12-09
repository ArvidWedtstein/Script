@ECHO OFF

SETLOCAL ENABLEDELAYEDEXPANSION
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "$BS=%%a"
SET /A SpinCount=7,MaxSpinCount=30,Spin_Delay=4,ctr=0
SET "_MSG=ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
IF NOT [%1]==[] (
  SET "_MSG=%~1"
  if defined %~1 set "_msg=!%~1!"
)
IF NOT [%2]==[] SET /A SpinCount=%~2
IF NOT [%3]==[] SET /A Spin_Delay=%~3
IF %SpinCount% GTR %MaxSpinCount% SET /A SpinCount=MaxSpinCount
SET "Spinner=³/Ä\"
call :strln _msg slen
set/a slen-=1
FOR /L %%a in (0 1 %slen%) DO (
  FOR /L %%A IN (1,1,%SpinCount%) DO (
    CALL :Delay %Spin_Delay%
    <nul CALL SET/P="%$BS%%%Spinner:~!ctr!,1%%"
    SET /A CTR=%%A %% 4
  )
  <nul set/p="%$BS%!_MSG:~%%a,1! "
)
ENDLOCAL & EXIT /B

:Strln
( SetLocal
  set "str=A!%~1!"
  set "len=0"
  for /L %%A in (12,-1,0) do (
    set /a "len|=1<<%%A"
    for %%B in (!len!) do if "!str:~%%B,1!"=="" set /a "len&=~1<<%%A"
  )
)
EndLocal&( REM RETURN VALUES
  if "%~2" NEQ "" set/a %~2=%len%
)&exit /b %len%

:Delay centiseconds
setlocal
set/a delay=%~1
for /f "tokens=1-4 delims=:.," %%a in ("!time: =0!") do set /a "time1=(((1%%a*60)+1%%b)*60+1%%c)*100+1%%d-36610100
:wait
  for /f "tokens=1-4 delims=:.," %%a in ("!time: =0!") do set /a "time2=(((1%%a*60)+1%%b)*60+1%%c)*100+1%%d-36610100, tDiff=time2-time1"
  if %tDiff% lss 0 set /a tDiff+=24*60*60*100
  if /i %tDiff% geq %delay% endlocal&goto :eof
goto :wait
