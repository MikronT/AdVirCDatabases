for /f "delims=" %%i in (files\databases\rewrited\dirs\shortcuts.db) do attrib /s -r -s %location_desktop%\*.lnk

sfc /scannow