@echo off

:s
title --- Live Time --- %username% --- %time% --- %date% ---
>nul ping -n 1 localhost
goto s