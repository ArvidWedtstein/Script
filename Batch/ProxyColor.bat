@echo off
cls
echo.
echo.
echo.
echo      .########..########....#####...##.....##.##....##
echo      .##.....##.##.....##..##...##...##...##...##..##.
echo      .##.....##.##.....##.##.....##...##.##.....####..
echo      .########..########..##.....##....###.......##...
echo      .##........##...##...##.....##...##.##......##...
echo      .##........##....##...##...##...##...##.....##...
echo      .##........##.....##...#####...##.....##....##...
:colors 
Set /a num=(%Random% %%9)+1
color %num%
PING 127.0.0.1 -n 2 > NUL
goto colors