#!/bin/bash
set -e

echo "===================================================="
echo "  MI TV Launcher (Apple Style) - One-Click Installer"
echo "===================================================="

if ! command -v adb &> /dev/null; then
    echo "❌ Error: adb command not found. Please install Android Platform Tools."
    exit 1
fi

DEVICE=$(adb devices | grep -E -v "List of devices attached|^$" | head -n 1 | awk '{print $1}')

if [ -z "$DEVICE" ]; then
    echo "❌ No TV device detected via ADB."
    echo "   Please connect your TV using: adb connect <TV_IP_ADDRESS>:5555"
    exit 1
fi

echo "📺 Connected TV Device: $DEVICE"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
APK_PATH="$REPO_DIR/releases/MiTvLauncherAppleStyle-v1.0.apk"

if [ ! -f "$APK_PATH" ]; then
    echo "❌ Error: Release APK not found at $APK_PATH"
    exit 1
fi

echo "📦 1/4 Installing MiTvLauncherAppleStyle-v1.0.apk..."
adb -s "$DEVICE" install -r "$APK_PATH"

echo "🔑 2/4 Granting system permissions (WRITE_SECURE_SETTINGS & RECORD_AUDIO)..."
adb -s "$DEVICE" shell "pm grant com.gathin.tvhome android.permission.WRITE_SECURE_SETTINGS" || true
adb -s "$DEVICE" shell "pm grant com.gathin.tvhome android.permission.RECORD_AUDIO" || true

echo "🎮 3/4 Configuring Remote Hotkeys & Accessibility..."
adb -s "$DEVICE" shell "settings put secure enabled_accessibility_services com.gathin.tvhome/com.gathin.tvhome.HomeKeyService"
adb -s "$DEVICE" shell "settings put secure accessibility_enabled 1"

echo "🚀 4/4 Launching Apple Style TV Home..."
adb -s "$DEVICE" shell "am start -n com.gathin.tvhome/.MainActivity"

echo "===================================================="
echo "✅ Installation Complete! Enjoy your Apple Style TV!"
echo "===================================================="
