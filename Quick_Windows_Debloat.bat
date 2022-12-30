@echo off


REM --> Script Made By Joel Eagles




REM  --> this will run the script as admin

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------  

@echo on


REM --> get the appxpackage name based on the default display name, remove the package from all current users, and if its a provision package: remove it so it doesn't install for new users.

powershell -command "Get-AppxPackage -allusers -name "Microsoft.WindowsPhone" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "HoloCamera" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "HoloItemPlayerApp" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "HoloShell" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.MixedReality.Portal" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "MixedRealityLearning" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "RoomAdjustment" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "WhatsNew" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "26720RandomSaladGamesLLC.3899848563C1F" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "57540AMZNMobileLLC.AmazonAlexa" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "C27EB4BA.DropboxOEM" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.BingNews" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.BingWeather" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.GamingApp" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.MicrosoftJournal" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.MicrosoftOfficeHub" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.MicrosoftSolitaireCollection" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.People" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.Todos" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.Whiteboard" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "microsoft.windowscommunicationsapps" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.WindowsMaps" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.Xbox.TCUI" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.XboxGameOverlay" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.XboxGamingOverlay" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.XboxIdentityProvider" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.ZuneMusic" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "Microsoft.ZuneVideo" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "MicrosoftWindows.Client.WebExperience" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"
powershell -command "Get-AppxPackage -allusers -name "TopHatchInc.Concepts" | Remove-AppxPackage | Remove-AppXProvisionedPackage -Online"

pause