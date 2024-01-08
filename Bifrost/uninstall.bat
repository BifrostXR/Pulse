@echo off
echo Bifrost Driver Uninstaller

FOR /F "usebackq tokens=3*" %%A IN (`REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Valve\Steam" /v InstallPath`) DO (
    set "STEAMVR_DIR=%%A %%B\steamapps\common\SteamVR"
)

set "PWD=%cd%"
set "DEVICE_NAME=bifrost"

set "DRIVER_DEST=%STEAMVR_DIR%\drivers\%DEVICE_NAME%"
set "DRIVER_SRC=%PWD%\%DEVICE_NAME%"

set "VRPATHREG_PATH=%STEAMVR_DIR%\bin\win64\vrpathreg.exe"

echo Driver Directory: "%DRIVER_DEST%"

echo Uninstalling Driver...
"%VRPATHREG_PATH%" removedriver "%DRIVER_DEST%"
"%VRPATHREG_PATH%"

echo Removing Files...
rmdir /S /Q "%DRIVER_DEST%"

echo Driver Uninstalled!

pause