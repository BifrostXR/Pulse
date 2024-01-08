@echo off
echo Bifrost Driver Installer

FOR /F "usebackq tokens=3*" %%A IN (`REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Valve\Steam" /v InstallPath`) DO (
    set "STEAMVR_DIR=%%A %%B\steamapps\common\SteamVR"
)

set "PWD=%cd%"
set "DEVICE_NAME=bifrost"

set "DRIVER_DEST=%STEAMVR_DIR%\drivers\%DEVICE_NAME%"
set "DRIVER_SRC=%PWD%\%DEVICE_NAME%"

set "VRPATHREG_PATH=%STEAMVR_DIR%\bin\win64\vrpathreg.exe"

REM Create the destination directory if it doesn't exist
mkdir "%DRIVER_DEST%" 2>nul

REM Display the contents of the source and destination directories
echo Source Directory: "%DRIVER_SRC%"
echo Destination Directory: "%DRIVER_DEST%"

REM Copy the entire folder to the destination
echo Copying files...
xcopy /Q /E /Y "%DRIVER_SRC%" "%DRIVER_DEST%"

echo Installing Driver...
"%VRPATHREG_PATH%" adddriver "%DRIVER_DEST%"
"%VRPATHREG_PATH%"

echo Driver Installed!

pause