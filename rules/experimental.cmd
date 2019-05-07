for %%i in (drivers\oem-drv64.sys xNtKrnl.exe xOsLoad.exe u-RU\xOsLoad.exe.mui en-US\xOsLoad.exe.mui) do if exist "%winDir%\System32\%%i" del /q "%winDir%\System32\%%i"

rem bcdedit /set {current} path \Windows\System32\winload.exe
rem bcdedit /deletevalue {current} kernel
rem bcdedit /deletevalue {current} nointegritychecks
rem bcdedit /deletevalue {current} custom:26000027

rem reg delete HKLM\SYSTEM\CurrentControlSet\services\oem-drv64 /va /f>>%log_debug%





rem netsh winsock reset