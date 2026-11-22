---
name: apk-patch
description: Compile custom Java sources, convert to smali with d8/apktool, inject bytecode, and re-sign the APK.
---

# APK Patching & Bytecode Injection Skill

Use this workflow when adding new Java modules or modifying existing smali files in `tvhome_src/`.

## Workflow Steps

### 1. Compile Java Source to Java 8 Bytecode
```bash
javac --release 8 \
  -cp /opt/homebrew/share/android-commandlinetools/platforms/android-34/android.jar \
  -d /tmp/classes \
  src/com/gathin/tvhome/<TargetFile>.java
```

### 2. Convert to Dalvik Executable (DEX)
```bash
/opt/homebrew/share/android-commandlinetools/build-tools/35.0.0/d8 \
  --output /tmp/dex_out \
  /tmp/classes/com/gathin/tvhome/*.class
```

### 3. Disassemble DEX to Smali
```bash
cd /tmp/dex_out
zip target.zip classes.dex
apktool d target.zip -o smali_out -f
cp -r smali_out/smali/com/gathin/tvhome/* tvhome_src/smali/com/gathin/tvhome/
```

### 4. Build and Sign APK
```bash
./scripts/build.sh
```
