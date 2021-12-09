@echo off
title 1.April
mshta javascript:alert("Error\n\nYou don't\nhave permission\nto use chrome");close(); && rundll32.exe cmdext.dll,MessageBeepStub
>nul ping -n 1 localhost
mshta javascript:alert("Error\n\nInternet explorer\nis better for you");close()
>nul ping -n 1 localhost
start iexplore.exe







