@echo off
for /f "tokens=1-4 delims=:.," %%a in ("!time: =0!") do set /a "time2=(((1%%a*60)+1%%b)*60+1%%c)*100+1%%d-36610100, tDiff=time2-time1"
  if %tDiff% lss 0 set /a tDiff+=24*60*60*100
  if /i %tDiff% geq %delay% endlocal&goto :eof
pause