del "%winDir%\System32\drivers\oem-drv64.sys"
del "%winDir%\System32\xNtKrnl.exe"
del "%winDir%\System32\xOsLoad.exe"
del "%winDir%\System32\ru-RU\xOsLoad.exe.mui"
del "%winDir%\System32\en-US\xOsLoad.exe.mui"

bcdedit /set {current} path \Windows\System32\winload.exe
bcdedit /deletevalue {current} kernel
bcdedit /deletevalue {current} nointegritychecks
bcdedit /deletevalue {current} custom:26000027

reg delete HKLM\SYSTEM\CurrentControlSet\services\oem-drv64 /va /f





netsh winsock reset