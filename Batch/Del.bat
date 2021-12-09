@echo off
echo 1) Få mange mapper.
echo 2) Slett alle word filer
set /p valg=

if %valg%==1 goto mappe
if %valg%==2 goto slettword
set mappe=0
:mappe
mkdir %random%
set /a mappe=%mappe%+1
if %mappe%==10 goto eof
goto mappe

:slettword
del *.doxc
