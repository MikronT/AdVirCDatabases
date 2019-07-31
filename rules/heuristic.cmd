(for /f "delims=" %%i in (%dataDir%\databases\rewrited\dirs\shortcuts.db) do if exist "%%i" for /f "delims=" %%j in ('dir /a:-d /b "%%i\*.lnk"') do attrib /s -h -r -s "%%i\%%j")>nul 2>nul

(reg add "HKLM\CLSID\{f414c260-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32" /ve /t REG_SZ /d "%WinDir%\system32\jscript.dll" /f)>nul 2>nul
(reg add "HKLM\CLSID\{f414c261-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32" /ve /t REG_SZ /d "%WinDir%\system32\jscript.dll" /f)>nul 2>nul
(reg add "HKLM\CLSID\{f414c262-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32" /ve /t REG_SZ /d "%WinDir%\system32\jscript.dll" /f)>nul 2>nul

sfc /scannow