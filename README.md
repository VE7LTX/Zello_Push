# Zello_Push - Zello Management
ADB Pusher for Zello for the Hytera Radio Line
This repository contains scripts for managing the installation and uninstallation of the Zello app on Android devices via Android Debug Bridge (ADB). These scripts facilitate automated handling of the app, including setting system settings, managing APK files, and controlling app installation and uninstallation.

## Prerequisites

Before using these scripts, ensure you have the following:

- ADB installed on your computer.
- An Android device with USB debugging enabled.
- Proper drivers installed for your Android device on your computer.

## Installation

1. **Clone the Repository:**

git clone https://github.com/yourusername/adb-zello-management.git
   
Navigate to the Repository:


cd adb-zello-management
Ensure your device is connected:
adb devices
This command should list your connected device(s).

2. **Usage**
Installing Zello APK
Run the installation script:

./install_zello.bat
This script performs the following actions:
Checks for connected devices.
Removes any existing Zello APK.
Sets the required system settings.
Pushes the new APK to the device and installs it.
Uninstalling Zello

Run the uninstallation script:

./uninstall_zello.bat
This script attempts to uninstall the Zello app and provides feedback on whether the uninstallation was successful.

###Troubleshooting
Device Not Recognized:
Ensure USB debugging is enabled on your Android device.
Check if the proper drivers are installed on your computer.
Try reconnecting the device or using a different USB port.
ADB Not Recognized:
Ensure ADB is properly installed on your system.
Add ADB to your system's PATH environment variable.
Installation/Uninstallation Failures:
Ensure the APK file name and path are correct in the installation script.
Confirm the package name is correct in the uninstallation script.
