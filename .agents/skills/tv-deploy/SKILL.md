---
name: tv-deploy
description: Connect, install, configure permissions, and test the MI TV Launcher on a live Android TV device over ADB.
---

# TV Deployment & Diagnostics Skill

Use this workflow whenever you need to deploy, verify, or troubleshoot the launcher on an Android TV device.

## Prerequisites
- Android device on the same local network with ADB debugging enabled.
- `adb` CLI installed.

## Workflow Steps

### 1. Device Discovery & Connection
```bash
# Check if device is connected
adb devices

# Connect if not connected
adb connect <TV_IP_ADDRESS>:5555
```

### 2. Deployment
```bash
./scripts/install.sh
```

### 3. Verification & Live Logcat
```bash
# Verify launcher is running
adb shell "dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp'"

# Check runtime logs for screensaver and hotkeys
adb logcat -d -s "TvKeyHandler" "ImdbScreensaverManager" "AppleTvScreensaver" | tail -n 50
```

### 4. Taking a Screenshot for Verification
```bash
adb shell screencap -p /sdcard/tv_verify.png
adb pull /sdcard/tv_verify.png ./screenshots/tv_verify.png
adb shell rm /sdcard/tv_verify.png
```
