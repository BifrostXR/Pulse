@echo off
echo Bifrost Driver Uninstaller

FOR /F "usebackq tokens=3*" %%A IN (`REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Valve\Steam" /v InstallPath`) DO (
    set "STEAMVR_DIR=%%A %%B\steamapps\common\SteamVR"
)

set "STEAMVR_DIR=%STEAMVR_DIR:Steam =Steam%"

set "PWD=%cd%"
set "DEVICE_NAME=bifrost"

set "DRIVER_DEST=%STEAMVR_DIR%\drivers\%DEVICE_NAME%"
set "DRIVER_SRC=%PWD%\%DEVICE_NAME%"

set "VRPATHREG_PATH=%STEAMVR_DIR%\bin\win64\vrpathreg.exe"

echo Driver Directory: "%DRIVER_DEST%"

echo Removing Files...
rmdir /S /Q "%DRIVER_DEST%"

rem Check the exit code of rmdir
if %errorlevel% neq 0 (
    echo File Removal Failed! Error Code: %errorlevel%
    pause
    exit /b %errorlevel%
) else (
    echo Driver Removed Successfully!
)

rem echo Uninstalling Driver...
rem "%VRPATHREG_PATH%" removedriver "%DRIVER_DEST%"

rem Check the exit code
rem if %errorlevel% neq 0 (
rem     echo Removal failed! Error code: %errorlevel%
rem     pause
rem     exit /b %errorlevel%
rem ) else (
rem     echo Driver Uninstalled!
rem )

pause