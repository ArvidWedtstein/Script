@echo off
title Check Ping
echo Write name of webside you want to see ping off:
set /p web=
ipconfig /all
ping %web%
tracert %web%
pause