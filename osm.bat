@echo off
chcp 65001
title Oculus Service Manager
cls

fltmc >nul 2>&1 || (
    echo ╔══════════════════════════════════════════╗
    echo ║  Administrator privileges are required.  ║
    echo ╚══════════════════════════════════════════╝
    PowerShell Start -Verb RunAs '%0' 2> nul || (
	cls
	color 47
        echo Administrator privileges are required to run this script,
	echo Please run this script again and agreeing to the UAC
        pause > NUL
	exit 1
    )
    exit 0
)

:menu
color 17
cls
echo.
echo.
echo ╔═════════════════════════════════════════════╗
echo ║            Oculus Service Manager           ║
echo ╠═════════════════════════════════════════════╣
echo ║    Press a number to pick your selection    ║
echo ║                                             ║
echo ║ 1. Disable Oculus Service                   ║
echo ║ 2. Enable Oculus Service                    ║
echo ╠═════════════════════════════════════════════╣
echo ║ 3. Disable Oculus Service Autostart         ║
echo ║ 4. Enable Oculus Service Autostart          ║
echo ╠═════════════════════════════════════════════╣
echo ║ 5. Exit without making changes              ║
echo ╚═════════════════════════════════════════════╝
echo.

set /p M=Enter your choice: 

if %M%==1 goto sc_stop
if %M%==2 goto sc_start
if %M%==3 goto sc_enable_autostart
if %M%==4 goto sc_disable_autostart
if %M%==5 exit

:sc_stop
sc stop "OVRService"
cls
echo.
echo ╔══════════════════════════════╗
echo ║           SUCCESS            ║
echo ╠══════════════════════════════╣
echo ║             Ran              ║
echo ║    (sc stop "OVRService")    ║
echo ╠══════════════════════════════╣
echo ║   Press any key to exit...   ║
echo ╚══════════════════════════════╝
pause > NUL
exit

:sc_start
sc start "OVRService"
cls
echo.
echo ╔══════════════════════════════╗
echo ║           SUCCESS            ║
echo ╠══════════════════════════════╣
echo ║             Ran              ║
echo ║    (sc start "OVRService")   ║
echo ╠══════════════════════════════╣
echo ║   Press any key to exit...   ║
echo ╚══════════════════════════════╝
pause > NUL
exit

:sc_enable_autostart
sc config "OVRService" start="demand"
cls
echo.
echo ╔═════════════════════════════════════════════╗
echo ║                   SUCCESS                   ║
echo ╠═════════════════════════════════════════════╣
echo ║                     Ran                     ║
echo ║   (sc config "OVRService" start="demand")   ║
echo ╠═════════════════════════════════════════════╣
echo ║           Press any key to exit...          ║
echo ╚═════════════════════════════════════════════╝
pause > NUL
exit

:sc_disable_autostart
sc config "OVRService" start="auto"
cls
echo.
echo ╔═════════════════════════════════════════════╗
echo ║                   SUCCESS                   ║
echo ╠═════════════════════════════════════════════╣
echo ║                     Ran                     ║
echo ║    (sc config "OVRService" start="auto")    ║
echo ╠═════════════════════════════════════════════╣
echo ║           Press any key to exit...          ║
echo ╚═════════════════════════════════════════════╝
pause > NUL
exit