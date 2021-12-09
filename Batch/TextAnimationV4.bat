@Echo Off & SetLocal EnableDelayedExpansion
:start
Set "txt=Hello"
For /L %%# in (0,1,4) Do (Set /P "=!txt:~%%#,1!" <Nul
Ping.exe -l 0 -n 1 -w 500 1.0.0.0 >nul
)
Echo(
PAUSE
Goto :start
