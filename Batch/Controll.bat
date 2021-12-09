@setlocal enableextensions enabledelayedexpansion
@echo off
color 0a
title Movement 2 ~ Grid
cls
goto data

:data
set lespa=         
set rispa=         
set space=5
set err=0
set right=10
set left=10

:hud
cls
echo Move your character (X) with the WASD keys. Press R to reset
echo #######################
if %space% equ 0 if %err% neq 1 (
echo #%lespa%X%rispa%#
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     # )
if %space% equ 1 if %err% neq 1 (
echo #                     #
echo #%lespa%Û%rispa%#
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     # )
if %space% equ 2 if %err% neq 1 (
echo #                     #
echo #                     #
echo #%lespa%Û%rispa%#
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     # )
if %space% equ 3 if %err% neq 1 (
echo #                     #
echo #                     #
echo #                     #
echo #%lespa%Û%rispa%#
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     # )
if %space% equ 4 if %err% neq 1 (
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #%lespa%X%rispa%#
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     # )
if %space% equ 5 if %err% neq 1 (
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #%lespa%X%rispa%#
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     # )
if %space% equ 6 if %err% neq 1 (
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #%lespa%X%rispa%#
echo #                     #
echo #                     #
echo #                     #
echo #                     # )
if %space% equ 7 if %err% neq 1 (
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #%lespa%X%rispa%#
echo #                     #
echo #                     #
echo #                     # )
if %space% equ 8 if %err% neq 1 (
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #%lespa%X%rispa%#
echo #                     #
echo #                     # )
if %space% equ 9 if %err% neq 1 (
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #%lespa%X%rispa%#
echo #                     # )
if %space% equ 10 if %err% neq 1 (
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #                     #
echo #%lespa%X%rispa%# )
echo #######################
echo.
echo.
choice /c wasdr /n
if %errorlevel% equ 1 goto w
if %errorlevel% equ 2 goto a
if %errorlevel% equ 3 goto s
if %errorlevel% equ 4 goto d
if %errorlevel% equ 5 goto data

:w
set /a space=%space%-1
if %space% lss 0 set space=0
goto hud

:a
set lespa=!lespa:~0,-1!
set /a left=%left%-1
if %left% lss 1 set left=1 && set lespa=%lespa%
set rispa=%rispa%
set /a right=%right%+1
if %right% gtr 19 set right=19 && set rispa=!rispa:~0,-1!
goto hud

:s
set /a space=%space%+1
if %space% gtr 10 set space=10
goto hud

:d
set rispa=!rispa:~0,-1!
set /a right=%right%-1
if %right% lss 1 set right=1 && set rispa=%rispa%
set lespa=%lespa%
set /a left=%left%+1
if %left% gtr 19 set left=19 && set lespa=!lespa:~0,-1!
goto hud