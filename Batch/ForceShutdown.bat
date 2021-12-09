@echo off
title Shutdown
echo Computer will Shutdown in:
timeout /t 10 /nobreak
rundll32.exe user32.dll,LockWorkStation