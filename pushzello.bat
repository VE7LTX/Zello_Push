@echo off

:: Ensure ADB is connected and devices are listed
adb devices

:: Remove any existing instance of the Zello-5.34.2.apk file from the specified directory
adb shell rm -f /sdcard/.poc/Zello-5.34.2.apk

:: Set the system setting `mdmMenu` to 1
adb shell settings put system mdmMenu 1

:: Create the .poc directory if it doesn't exist
adb shell mkdir -p /sdcard/.poc

:: Push the Zello-5.34.2.apk file to the .poc directory on the device
adb push Zello-5.34.2.apk /sdcard/.poc/Zello-5.34.2.apk

:: Enter ADB shell
adb shell
echo "Switched to ADB Shell. Attempting to install APK..."
cd /sdcard/.poc
pm install -r Zello-5.34.2.apk
exit

:: Optional: Check the installation status
echo APK Installation completed.

:: End of script
pause
