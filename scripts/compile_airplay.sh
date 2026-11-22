#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
cd "$REPO_DIR"

PLATFORM="/opt/homebrew/share/android-commandlinetools/platforms/android-34/android.jar"
BUILD_TOOLS="/opt/homebrew/share/android-commandlinetools/build-tools/35.0.0"

echo "1/4 Compiling Java sources..."
rm -rf build_classes && mkdir -p build_classes
javac --release 8 -cp "$PLATFORM:src" -d build_classes \
  src/com/gathin/tvhome/qrcodegen/*.java \
  src/com/gathin/tvhome/R.java \
  src/com/gathin/tvhome/MainActivity.java \
  src/com/gathin/tvhome/AirPlayClickLambda.java \
  src/com/gathin/tvhome/AirPlayServer.java \
  src/com/gathin/tvhome/AirPlayMirrorActivity.java

echo "2/4 Dexing..."
rm -rf build_dex && mkdir -p build_dex
find build_classes -name "*.class" ! -name "MainActivity.class" ! -name "R*.class" > build_classes/class_list.txt
"$BUILD_TOOLS/d8" --lib "$PLATFORM" --output build_dex/ $(cat build_classes/class_list.txt)

echo "3/4 Disassembling into Smali via apktool..."
rm -rf dummy.apk dummy_out
(cd build_dex && zip ../dummy.apk classes.dex)
apktool d dummy.apk -o dummy_out

echo "4/4 Updating tvhome_src/smali..."
cp -r dummy_out/smali/com/gathin/tvhome/AirPlay* tvhome_src/smali/com/gathin/tvhome/
cp -r dummy_out/smali/com/gathin/tvhome/qrcodegen tvhome_src/smali/com/gathin/tvhome/
rm -rf dummy.apk dummy_out build_classes build_dex

echo "✅ AirPlay smali updated successfully!"
