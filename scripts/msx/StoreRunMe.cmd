@REM [This code block detects if the script is running with ADMIN PRIVILEGES. If it isn't it pauses, and then quits.]echo OFF
cls
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Administrator PRIVILEGES Detected! 
) ELSE (
   echo ######## ########  ########   #######  ########  
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ######   ########  ########  ##     ## ########  
   echo ##       ##   ##   ##   ##   ##     ## ##   ##   
   echo ##       ##    ##  ##    ##  ##     ## ##    ##  
   echo ######## ##     ## ##     ##  #######  ##     ## 
   echo.
   echo.
   echo ####### ERROR: ADMINISTRATOR PRIVILEGES REQUIRED #########
   echo This script must be run as administrator to work properly!  
   echo If you are seeing this right click on All_In_One.CMD and select "Run As Administrator."
   echo ##########################################################
   echo.
   PAUSE
   EXIT /B 1
)
@echo ON


%~d0
cd %~d0%~p0
cls
regedit.exe /S Files\regedit1.reg
regedit.exe /S Files\regedit2.regS
takeown /F "%ProgramFiles%\WindowsApps"
icacls "%ProgramFiles%\WindowsApps" /grant "Everyone":F
xcopy Files\store_depends_from_enterprise "%ProgramFiles%\WindowsApps\"  /e /i /h /y /k /o /x
powershell "& "".\Files\StoreDependencies.ps1"""
icacls "%ProgramFiles%\WindowsApps" /grant "ALL APPLICATION PACKAGES":F
icacls "%ProgramFiles%\WindowsApps" /grant "NT SERVICE\TrustedInstaller":F
icacls "%ProgramFiles%\WindowsApps" /grant "System":F


pause