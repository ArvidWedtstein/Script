@echo off
color 0a
:start1
mode con lines=50 cols=50
set nmb=0
echo %nmb%                %nmb%                   %nmb%
echo            %nmb%             %nmb%       %nmb%              
:start
echo %nmb%
echo             %nmb%                  %nmb%       %nmb%
echo  %nmb%           %nmb%     %nmb%         %nmb%           %nmb%
echo     %nmb%       %nmb%    %nmb%       %nmb%           %nmb%          %nmb%
echo         %nmb%             %nmb%             %nmb%          %nmb%
echo   %nmb%            %nmb%                    
echo                            %nmb%              %nmb%           %nmb%
set /a nmb=%nmb%+1
if %nmb%==99 goto start1
if %nmb%==50 cls
goto start

