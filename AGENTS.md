# 🤖 Agent Instructions & Constraints — MI TV Launcher (Apple Style)

This document defines always-on guidelines, architecture constraints, and operational procedures for any AI assistant or developer working on this codebase.

---

## 🎯 Repository Purpose & Scope
This project maintains a customized **Apple TV (tvOS)** style launcher for Xiaomi Android TV and general Android TV devices (`com.gathin.tvhome`).
It features:
1. Glassmorphism Apple TV UI layout.
2. Hardware remote key intercepting (e.g. YouTube button remapping).
3. Live daily IMDb trending sync using the open-source Cinemeta API.
4. Dual-layer dynamic 4K screensaver with seamless crossfade.
5. TV Control Center with RAM cleaner, Sleep Timer, and Child Lock.

---

## 🛡️ Guardrails & Constraints

### 1. Android TV 10-Foot UI Rules
- All interactive controls must support D-Pad navigation (`DPAD_UP`, `DPAD_DOWN`, `DPAD_LEFT`, `DPAD_RIGHT`, `DPAD_CENTER` / Enter).
- Focus states must be unmistakably clear (scale effect 1.05x - 1.1x with elevation/halo glow).
- Avoid small touch-oriented UI elements; font sizes must remain legible from 3–4 meters distance.

### 2. Bytecode & Smali Patching Rules
- Never blindly rewrite decompiled smali classes. Preserve existing register allocations and local variables (`.locals vX`).
- When writing custom Java logic, compile using Java 8 compatibility (`javac --release 8`) and convert with `d8` before decompiling to smali or injecting.
- Verify manifest changes carefully before rebuilding. Do not strip existing permissions needed for system launcher functionality (`SYSTEM_ALERT_WINDOW`, `WRITE_SECURE_SETTINGS`, `ACCESS_NETWORK_STATE`).

### 3. Remote Hotkey & Service Guardrails
- Remote button handling must never crash the UI thread. Always handle key events with fallbacks (`try/catch`).
- Accessibility services (`HomeKeyService`) must remain lightweight to avoid UI stutter or sluggish D-Pad inputs.

### 4. Network & Resource Limits
- Cinemeta IMDb API requests must be cached locally to avoid unneeded HTTP queries on every launcher startup.
- Network calls must run asynchronously off the main UI thread (`ExecutorService` or background threads).
- Image memory caching must respect Android TV low-RAM constraints (typically 1GB–2GB total device RAM).

---

## 🔧 Build & Deploy Commands

- **Build & Sign APK**:
  ```bash
  ./scripts/build.sh
  ```
- **Install & Configure TV**:
  ```bash
  ./scripts/install.sh
  ```
- **Live Device ADB Logs**:
  ```bash
  adb logcat -s "TvKeyHandler" "ImdbScreensaverManager" "AppleTvScreensaver"
  ```
