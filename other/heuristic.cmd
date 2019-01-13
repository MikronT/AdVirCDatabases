for /f "delims=" %%i in (files\databases\rewrited\dirs\shortcuts.db) (
  attrib /s -r -s %desktopLocation%\*.lnk
)

sfc /scannow