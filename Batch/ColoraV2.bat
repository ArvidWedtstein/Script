@echo off
set loop=0
mode con lines=100 cols=24
powershell write-host -fore darkred ۱����������������������
:colored
powershell write-host -fore red �۱���������������������
powershell write-host -fore darkyellow ��۱������������������۱
powershell write-host -fore yellow ���۱����������������۱�
powershell write-host -fore darkgreen ����۱��������������۱��
powershell write-host -fore green �����۱������������۱���
powershell write-host -fore darkcyan ������۱����������۱����
powershell write-host -fore cyan �������۱��������۱�����
powershell write-host -fore darkblue ��������۱������۱������
powershell write-host -fore blue ���������۱����۱�������
powershell write-host -fore darkmagenta ����������۱��۱��������
powershell write-host -fore magenta �������������۱���������
powershell write-host -fore darkmagenta ����������۱��۱��������
powershell write-host -fore blue ���������۱����۱�������
powershell write-host -fore darkblue ��������۱������۱������
powershell write-host -fore cyan �������۱��������۱�����
powershell write-host -fore darkcyan ������۱����������۱����
powershell write-host -fore green �����۱������������۱���
powershell write-host -fore darkgreen ����۱��������������۱��
powershell write-host -fore yellow ���۱����������������۱�
powershell write-host -fore darkyellow ��۱������������������۱
powershell write-host -fore red �۱���������������������
powershell write-host -fore darkred ۱����������������������
set /a loop=%loop%+1
title Runde %loop%
goto colored