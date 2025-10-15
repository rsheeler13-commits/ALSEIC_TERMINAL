:: Original Author: Kaijux Industries
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
call :setpassword
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Run As Administrator If Not Already.','My Popup Title',[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Information)"
net session >nul 2>&1
mode con: cols=105 lines=40
chcp 65001 >nul
cls
color 0E

setlocal enabledelayedexpansion


:: popup (Powershell)


color 09
cls
echo.
echo          Initializing Kaiju Industries Maintenance Core...
echo.
set "bar="
for /L %%i in (1,1,50) do (
    set "bar=!bar!█"
    cls
    echo.
    echo  [ SYSTEM BOOT SEQUENCE ]
    echo  -------------------------------------------------------------
    echo  Loading modules: %%i%%
    echo.
    echo  !bar!
    timeout /nobreak /t 1 >nul
)
cls
color 0A
echo.
echo  [✔] All systems initialized successfully.
echo  [✔] Loading UI components...
timeout /t 1 >nul


cls
color 0E
echo.
echo  ╔═══════════════════════════════════════════════════════════════════════════════╗
echo  ║                                                                               ║
echo  ║   ██╗  ██╗ █████╗ ██╗██╗     ██╗     ██╗     ██╗███╗   ██╗██████╗ ███████╗    ║
echo  ║   ██║ ██╔╝██╔══██╗██║██║     ██║     ██║     ██║████╗  ██║██╔══██╗██╔════╝    ║
echo  ║   █████╔╝ ███████║██║██║     ██║     ██║     ██║██╔██╗ ██║██║  ██║███████╗    ║
echo  ║   ██╔═██╗ ██╔══██║██║██║     ██║     ██║     ██║██║╚██╗██║██║  ██║╚════██║    ║
echo  ║   ██║  ██╗██║  ██║██║███████╗███████╗███████╗██║██║ ╚████║██████╔╝███████║    ║
echo  ║   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚══════╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝    ║
echo  ║                                                                               ║
echo  ╚═══════════════════════════════════════════════════════════════════════════════╝
color 0B
echo.
echo                Kaiju Industries Maintenance Terminal v2.0
echo.              © 2025 – 2026 All Systems Nominal (Pirating Is Not Allowed)
echo.
timeout /t 5 >nul

:MAINMENU
cls
color 0B
echo ╔══          SYSTEM MAINTENANCE MAIN MENU and Mods ETC                              
echo ╠══════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                  ║
color 0E
echo ║  [1]  ⚙️  Run Disk Cleanup Utility                                               ║
echo ║  [2]  🔍  Run System File Checker (SFC)                                          ║
echo ║  [3]  🧩  Repair Windows Image (DISM)                                            ║
echo ║  [4]  🗑️  Delete Temporary Files                                                 ║
echo ║  [5]  🌐  Network Diagnostics & Reset                                            ║
echo ║  [6]  🖥️  echo Hello World                                                       ║
echo ║  [7]  💾  System Information Dashboard                                           ║
echo ║  [8]  📲 install ALSEIC Mod Pack For Minecraft /not my mods but my mod pack      ║
echo ║  [9]  🌐 ALSEIC Website (note: alseic[1234]!)                                    ║
echo ║  [10] 💾 Exit                                                                    ║
echo ║  [11] 🌐Open a URL in your browser 
echo ║  [12] 👾 Remote Shutdown                                                         ║
echo ║  [13] 🔍Dll Injector #Part of HRTOC 
echo    [14] 🖥️Parrot Live Terminal Fun
echo ║  [15] 💾Terminall                  
echo ║ ╚══════════════════════════════════════════════════════════════════════════════════╝
echo.
color 0A
set /p choice=» Select an option [1-15]: 

if "%choice%"=="1" goto DISKCLEAN
if "%choice%"=="2" goto SFC
if "%choice%"=="3" goto DISM
if "%choice%"=="4" goto TEMP
if "%choice%"=="5" goto NET
if "%choice%"=="6" goto echos
if "%choice%"=="7" goto SYSINFO
if "%choice%"=="8" goto alseic
if "%choice%"=="9" goto alseicweb
if "%choice%"=="10" goto EXIT
if "%choice%"=="11" goto OPENURL
if "%choice%"=="12" goto rs
if "%choice%"=="13" goto HRtocDlLInjector
if "%choice%"=="14" goto parrot
if "%choice%"=="15" goto terminallog
goto MAINMENU

if "%choice%"== not "%choice%" (
echo Select a Valid Choice 
goto MAINMENU
)
::terminall
:terminallog
color 4
:loop
set /p usercmd=Enter command: 
if /i "%usercmd%"=="exit" goto end
if "%usercmd%"=="" goto loop
%usercmd%
goto loop
:end
echo Bye!
pause
goto MAINMENU


:parrot
curl parrot.live
pause
goto MAINMENU
:HRtocDlLInjector
color OE
echo False Postives are normal with this file, it is a known issue with most injectors.
start "" https://cdn.discordapp.com/attachments/1350628664211144714/1398176095668277321/Kaijux_Injector.zip?ex=68f12c36&is=68efdab6&hm=0a5ba1c688bc44225a934d6dc387ca44e11d7629df54b321a851b253df470564&
pause
goto MAINMENU 

rem echo world 
:echos
echo hello world
pause

rem Remote Shutdown
:rs
shutdown /i
pause
goto MAINMENU

rem open ALSEIC website
:alseicweb
start "" "https://new.express.adobe.com/webpage/zZAIv3RJnykK0"
pause
goto MAINMENU

rem Dowload ALSEIC Mod Pack For Minecraft On GitHub
:alseic
start "" "https://github.com/rsheeler13-commits/ALSEIC"
pause
goto MAINMENU

::Clean Disk
:DISKCLEAN
color 0E
echo Running Disk Cleanup Utility...
cleanmgr /sagerun:1
pause
goto MAINMENU

::SFC
:SFC
color 0B
echo Running System File Checker (sfc /scannow)...
sfc /scannow
pause
goto MAINMENU

::DISM
:DISM
color 0D
echo Running DISM /RestoreHealth...
DISM /Online /Cleanup-Image /RestoreHealth
pause
goto MAINMENU


rem clear temp files
:TEMP
color 0C
echo Deleting temporary files...
del /q /f /s "%TEMP%\*" 2>nul
echo Temp files cleared!
pause
goto MAINMENU

:: NET
:NET
color 0B
echo Resetting network stack...
ipconfig /flushdns
netsh int ip reset
netsh winsock reset
echo Network refreshed.
pause
goto MAINMENU

:: SYSM INFO
:SYSINFO
color 0B
echo Gathering system information...
echo.
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type" /C:"Total Physical Memory"
echo.
pause
goto MAINMENU

:: Exit Termoinal

::Password Protect Some Options
:setpassword
set "PASSWORD=alseickaijux%bat%"
set /p "USERPASS=Enter Password to Continue: "
if "%USERPASS%"=="%PASSWORD%" (
    echo Access Granted.
    timeout /t 2 >nul
) else (
    echo Access Denied.
    timeout /t 2 >nul
    goto MAINMENU
)
exit /b

:EXIT
color 0C
echo Shutting down Kaiju Terminal Interface...
timeout /t 2 >nul
cls
color 0F
echo.
echo  [ Goodbye, Operator. System Maintenance Terminal Offline. ]
echo.
timeout /t 3 >nul
exit

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
