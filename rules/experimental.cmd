for %%i in (drivers\oem-drv64.sys xNtKrnl.exe xOsLoad.exe u-RU\xOsLoad.exe.mui en-US\xOsLoad.exe.mui) do if exist "%winDir%\System32\%%i" del /q "%winDir%\System32\%%i"

bcdedit /set {current} path \Windows\System32\winload.exe
bcdedit /deletevalue {current} kernel
bcdedit /deletevalue {current} nointegritychecks
bcdedit /deletevalue {current} custom:26000027

reg delete HKLM\SYSTEM\CurrentControlSet\services\oem-drv64 /va /f>>%log_debug%





netsh winsock reset