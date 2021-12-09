@echo off
:ping loop
color 0f
ping 10.65.56.125 -l 65500 -w 1 -n 1
goto :ping loop