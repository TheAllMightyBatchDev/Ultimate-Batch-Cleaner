@echo off
mode 300
title Dustclean
color 0b
SET BROWSER=chrome.exe
SET WAIT_TIME=2

setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" exit
if "%version%" == "6.3" echo You're running this on Windows 8.1, right? haha, otherwise this program would've closed already.
if "%version%" == "6.2" exit
if "%version%" == "6.1" exit
if "%version%" == "6.0" exit
rem etc etc
endlocal

echo Hello %username%! Welcome
echo Dustclean will clean your temp files (ej, %temp%, %WinDir%\Temp).
echo WARNING! This program is safe, all those strange numbers and letters are just the temp files.
echo WARNING! Do NOT Run this tool while installing any program, game nor during software updates, your PC must be in idle state before you run it.
echo Press any key to Continue.
pause > nul
rd /s /q %temp%
cls
md %temp%
cls
deltree /y c:\Windows\tempor~1
cls
deltree /y c:\Windows\Temp
cls
ipconfig /flushdns
cls
del /s /f /q %WinDir%\Temp\*.*
cls
del /s /f /q %Temp%\*.*
cls
del /s /f /q %AppData%\Temp\*.*
cls
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*
cls
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
cls
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
cls
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*
cls
deltree /y c:\windows\history
cls
deltree /y c:\windows\cookies
cls
deltree /y c:\windows\recent
cls
deltree /y c:\windows\spool\printers
cls
sfc /scannow
cls
You can chill while this is doing its thing.
wevtutil.exe cl %1
cls
reg add "HKCU\Control Panel\Desktop" /v HungAppTimeout /t REG_SZ /d 100 /f
cls
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f
cls
reg add "HKCU\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 300 /f
cls
reg add "HKCU\Control Panel\Desktop" /v LowLevelHooksTimeout /t REG_SZ /d 1000 /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 300 /f
cls
title Done Cleaning - Dustclean
echo PC Cleaned
cd C:\Users\Usuario\Desktop\Batch Code\Assets
color 0c
type ASCII.txt
echo Press any key to exit...
pause>null