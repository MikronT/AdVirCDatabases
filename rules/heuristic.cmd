(for /f "delims=" %%i in (%dataDir%\databases\rewrited\dirs\shortcuts.db) do if exist "%%i" for /f "delims=" %%j in ('dir /a:-d /b "%%i\*.lnk"') do attrib /s -h -r -s "%%i\%%j")>nul 2>nul



(reg add "HKLM\CLSID\{f414c260-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32" /ve /t REG_SZ /d "%WinDir%\system32\jscript.dll" /f)>nul 2>nul
(reg add "HKLM\CLSID\{f414c261-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32" /ve /t REG_SZ /d "%WinDir%\system32\jscript.dll" /f)>nul 2>nul
(reg add "HKLM\CLSID\{f414c262-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32" /ve /t REG_SZ /d "%WinDir%\system32\jscript.dll" /f)>nul 2>nul



(reg add "HKLM\Software\Clients\StartMenuInternet\Firefox-308046B0AF4A39CB\shell\open\command" /ve /t REG_SZ /d "%programFiles%\Mozilla Firefox\firefox.exe" /f)>nul 2>nul
(reg add "HKLM\Software\Clients\StartMenuInternet\Google Chrome\shell\open\command" /ve /t REG_SZ /d "%programFiles%\Google\Chrome\Application\chrome.exe" /f)>nul 2>nul
(reg add "HKLM\Software\Clients\StartMenuInternet\IExplore.exe\shell\open\command" /ve /t REG_SZ /d "%programFiles%\Internet Explorer\iexplore.exe" /f)>nul 2>nul
(reg add "HKLM\Software\Clients\StartMenuInternet\Opera\shell\open\command" /ve /t REG_SZ /d "%programFiles%\Opera\launcher.exe" /f)>nul 2>nul
(reg add "HKLM\Software\Clients\StartMenuInternet\OperaStable\shell\open\command" /ve /t REG_SZ /d "%programFiles%\Opera\launcher.exe" /f)>nul 2>nul



(reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "explorer.exe" /f)>nul 2>nul
(reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Userinit" /t REG_SZ /d "C:\Windows\system32\userinit.exe," /f)>nul 2>nul



echo.System scan runned. Please wait...
sfc /scannow