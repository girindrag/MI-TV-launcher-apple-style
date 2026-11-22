# 📋 Architecture Decision Records (ADRs)

This document records the architectural and engineering decisions made during the development and customization of the **MI TV Launcher (Apple Style)**.

---

## 📑 Index
- [ADR-001: Smali Bytecode Modification vs. Complete App Rewrite](#adr-001-smali-bytecode-modification-vs-complete-app-rewrite)
- [ADR-002: Stremio Cinemeta Open-Source API vs. Authenticated TMDB/IMDb API](#adr-002-stremio-cinemeta-open-source-api-vs-authenticated-tmdbimdb-api)
- [ADR-003: Dual-Layer Crossfade Architecture for Dynamic Screensaver](#adr-003-dual-layer-crossfade-architecture-for-dynamic-screensaver)
- [ADR-004: Android Accessibility Service for Hardware Hotkey Interception](#adr-004-android-accessibility-service-for-hardware-hotkey-interception)
- [ADR-005: Clutter-Free Ambient Screensaver (Clock-Only, No Captions)](#adr-005-clutter-free-ambient-screensaver-clock-only-no-captions)
- [ADR-006: Apple Siri / Alexa Style Voice Assistant Subsystem](#adr-006-apple-siri--alexa-style-voice-assistant-subsystem)

---

### ADR-001: Smali Bytecode Modification vs. Complete App Rewrite
- **Status**: Accepted
- **Context**: Creating an entire Android TV launcher from scratch requires weeks of implementing Leanback TV APIs, D-Pad focus navigation, package listeners, wallpaper managers, and rendering engines.
- **Decision**: Decompile the mature, lightweight `com.gathin.tvhome` base APK using `apktool`, inject modular custom Java logic compiled to smali bytecode, and package/sign as a standalone customized release.
- **Consequences**:
  - ✅ Retains battle-tested D-Pad focus physics, system event listeners, and Leanback compatibility.
  - ✅ Fast iteration and deterministic deployment.
  - ⚠️ Requires smali register tracking when hooking into existing lifecycle methods.

---

### ADR-002: Stremio Cinemeta Open-Source API vs. Authenticated TMDB/IMDb API
- **Status**: Accepted
- **Context**: The launcher needs daily trending movie and TV show posters. Official IMDb or TMDB APIs require developer API keys, rate-limiting tokens, or user authentication.
- **Decision**: Integrate the open-source Stremio Cinemeta catalog API (`https://v3-cinemeta.strem.io/catalog/movie/top.json` and `/series/top.json`).
- **Consequences**:
  - ✅ Zero configuration or API keys needed by end users.
  - ✅ Extremely fast response times with globally distributed CDN-cached backdrops.
  - ✅ Open-source, stable, and freely accessible without authentication.

---

### ADR-003: Dual-Layer Crossfade Architecture for Dynamic Screensaver
- **Status**: Accepted
- **Context**: Single-layer video or image switching causes noticeable black screen flickers or frame drops during transition on budget Android TV hardware (1GB–2GB RAM).
- **Decision**: Implement a dual-layer view architecture (`layerA` and `layerB`). While the active layer displays content, the hidden layer preloads and renders the next frame before executing an asynchronous `ObjectAnimator` crossfade.
- **Consequences**:
  - ✅ Completely flicker-free, smooth 1.2-second crossfade transitions.
  - ✅ Graceful fallback if a network image fails to load.
  - ⚠️ Slightly higher memory footprint during the 1.2s transition window (managed by recycling obsolete bitmaps).

---

### ADR-004: Android Accessibility Service for Hardware Hotkey Interception
- **Status**: Accepted
- **Context**: Xiaomi Mi TV remotes broadcast custom vendor keycodes (`190`, `288`, `203`) directly to the system. Normal Android applications cannot capture global key presses when in the background.
- **Decision**: Implement an `AccessibilityService` (`HomeKeyService`) with `android:canRequestFilterKeyEvents="true"`.
- **Consequences**:
  - ✅ Captures physical remote key events globally across the system.
  - ✅ Redirects YouTube hotkeys immediately to YouTube TV or SmartTube.
  - ✅ Enables instant return to the launcher on HOME key press.
  - ⚠️ Requires granting accessibility permission once during initial install (`settings put secure enabled_accessibility_services ...`).

---

### ADR-005: Clutter-Free Ambient Screensaver (Clock-Only, No Captions)
- **Status**: Accepted
- **Context**: Traditional screensavers often overlay large location text, weather badges, and detailed paragraphs, obstructing 4K imagery and creating visual distraction in living rooms.
- **Decision**: Strip all location captions and dense metadata. Retain only a minimal, elegant time display (HH:mm) and a subtle translucent IMDb badge showing only the title, release year, and star rating.
- **Consequences**:
  - ✅ Premium Apple TV ambient aesthetic.
  - ✅ High visual clarity without living room screen clutter.

---

### ADR-006: Apple Siri / Alexa Style Voice Assistant Subsystem
- **Status**: Accepted
- **Context**: Controlling Android TV purely with directional buttons can be tedious when searching for content, boosting performance, or adjusting sleep timers. Users expect conversational voice control similar to Apple Siri, Alexa, or Google Assistant.
- **Decision**: Implement `VoiceAssistantActivity` and `TvVoiceAssistant`:
  - Translucent Apple Siri glassmorphism overlay with dynamic pulsing gradient orb.
  - Android `SpeechRecognizer` integration with system recognition engine (`Katniss`).
  - Natural spoken audio feedback via Google `TextToSpeech` (TTS).
  - Multi-intent parser for TV control: app launching, RAM cleaner, sleep timer, volume mute, weather, and time queries.
  - D-Pad focusable glass suggestion chips for quiet or noisy environments.
- **Consequences**:
  - ✅ Fast, hands-free voice control across the entire television.
  - ✅ Graceful audio and visual feedback.
  - ✅ Remote-friendly D-Pad fallback chips if microphone is unavailable.
