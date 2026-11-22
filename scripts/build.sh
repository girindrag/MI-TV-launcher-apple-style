#!/bin/bash
set -e

echo "===================================================="
echo "  MI TV Launcher (Apple Style) - Build & Sign APK"
echo "===================================================="

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
SRC_DIR="$REPO_DIR/tvhome_src"
OUTPUT_APK="$REPO_DIR/releases/MiTvLauncherAppleStyle-v1.0.apk"
KEYSTORE="$HOME/.android/debug.keystore"

if ! command -v apktool &> /dev/null; then
    echo "❌ Error: apktool not found in PATH."
    exit 1
fi

APKSIGNER=$(which apksigner 2>/dev/null || find /opt/homebrew/share/android-commandlinetools/build-tools -name apksigner 2>/dev/null | head -n 1 || find "$HOME/Library/Android" -name apksigner 2>/dev/null | head -n 1)

if [ -z "$APKSIGNER" ]; then
    echo "⚠️ Warning: apksigner not found in default paths. Attempting build only."
fi

mkdir -p "$REPO_DIR/releases"

echo "🔨 Building APK from $SRC_DIR..."
apktool b "$SRC_DIR" -o "$OUTPUT_APK.unsigned"

if [ -n "$APKSIGNER" ] && [ -x "$APKSIGNER" ]; then
    if [ ! -f "$KEYSTORE" ]; then
        echo "🔑 Creating debug keystore..."
        mkdir -p "$HOME/.android"
        keytool -genkey -v -keystore "$KEYSTORE" -alias androiddebugkey -storepass android -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"
    fi
    echo "✍️ Signing APK..."
    "$APKSIGNER" sign --ks "$KEYSTORE" --ks-pass pass:android --key-pass pass:android --out "$OUTPUT_APK" "$OUTPUT_APK.unsigned"
    rm -f "$OUTPUT_APK.unsigned"
    echo "✅ Signed APK created at: $OUTPUT_APK"
else
    mv "$OUTPUT_APK.unsigned" "$OUTPUT_APK"
    echo "⚠️ Unsigned APK created at: $OUTPUT_APK (Sign manually before installing)"
fi

echo "===================================================="
echo "🎉 Build Finished Successfully!"
echo "===================================================="
