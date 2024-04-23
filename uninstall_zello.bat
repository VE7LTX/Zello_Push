@echo off

:: Ensures the script uses the ADB executable in the current directory or one defined in the system path
echo Uninstalling Zello (com.loudtalks)...

:: List connected devices to ensure device connectivity
adb devices

:: Attempt to uninstall the Zello application
adb uninstall com.loudtalks

:: Check the status of the uninstallation
if %errorlevel% == 0 (
    echo Uninstallation successful.
) else (
    echo Uninstallation failed. Please check device connection and app package name.
)

:: Pause the script to view the output
pause
