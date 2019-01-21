for /f "delims=" %%i in (files\databases\rewrited\dirs\shortcuts.db) do attrib /s -r -s %desktopLocation%\*.lnk

sfc /scannow