for /f "delims=" %%i in (%dataDir%\databases\rewrited\dirs\shortcuts.db) do if exist "%%i" attrib /s -r -s "%%i\*.lnk"

sfc /scannow