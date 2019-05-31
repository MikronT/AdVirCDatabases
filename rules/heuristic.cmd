rem for /f "delims=" %%i in (%dataDir%\databases\rewrited\dirs\shortcuts.db) do if exist "%%i" attrib /s -r -s "%%i\*.lnk"

reg add "HKLM\CLSID\{f414c260-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32" /ve /t REG_SZ /d "%WinDir%\system32\jscript.dll" /f
reg add "HKLM\CLSID\{f414c261-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32" /ve /t REG_SZ /d "%WinDir%\system32\jscript.dll" /f
reg add "HKLM\CLSID\{f414c262-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32" /ve /t REG_SZ /d "%WinDir%\system32\jscript.dll" /f

sfc /scannow