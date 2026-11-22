#!/usr/bin/env python3
import os
import sys
from reportlab.lib.pagesizes import letter
from reportlab.lib import colors
from reportlab.platypus import (
    SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle, PageBreak, Image, KeepTogether
)
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.pdfgen import canvas

class NumberedCanvas(canvas.Canvas):
    def __init__(self, *args, **kwargs):
        super(NumberedCanvas, self).__init__(*args, **kwargs)
        self._saved_page_states = []

    def showPage(self):
        self._saved_page_states.append(dict(self.__dict__))
        self._startPage()

    def save(self):
        num_pages = len(self._saved_page_states)
        for state in self._saved_page_states:
            self.__dict__.update(state)
            self.draw_page_decorations(num_pages)
            super(NumberedCanvas, self).showPage()
        super(NumberedCanvas, self).save()

    def draw_page_decorations(self, page_count):
        self.saveState()
        self.setFont("Helvetica-Bold", 8)
        self.setFillColor(colors.HexColor("#718096"))
        
        # Header (pages > 1)
        if self._pageNumber > 1:
            self.drawString(54, 752, "MI TV LAUNCHER (APPLE STYLE) — INSTALLATION & SETUP MANUAL")
            self.setFont("Helvetica", 8)
            self.drawRightString(letter[0] - 54, 752, "Online & Offline Guide")
            self.setStrokeColor(colors.HexColor("#CBD5E0"))
            self.setLineWidth(0.5)
            self.line(54, 744, letter[0] - 54, 744)
            
        # Footer (all pages)
        self.setFont("Helvetica", 8)
        self.drawString(54, 34, "Personal Reference Guide • GitHub: github.com/girindrag/MI-TV-launcher-apple-style")
        footer_text = f"Page {self._pageNumber} of {page_count}"
        self.drawRightString(letter[0] - 54, 34, footer_text)
        self.setStrokeColor(colors.HexColor("#E2E8F0"))
        self.setLineWidth(0.5)
        self.line(54, 46, letter[0] - 54, 46)
        self.restoreState()

def build_pdf(filename, repo_root):
    doc = SimpleDocTemplate(
        filename,
        pagesize=letter,
        leftMargin=54,
        rightMargin=54,
        topMargin=54,
        bottomMargin=54
    )
    
    styles = getSampleStyleSheet()
    
    primary_color = colors.HexColor("#1A202C")
    accent_blue = colors.HexColor("#2B6CB0")
    code_bg = colors.HexColor("#F7FAFC")
    box_bg = colors.HexColor("#EDF2F7")
    
    title_style = ParagraphStyle(
        'DocTitle',
        parent=styles['Heading1'],
        fontName='Helvetica-Bold',
        fontSize=21,
        leading=25,
        textColor=primary_color,
        spaceAfter=3
    )
    
    subtitle_style = ParagraphStyle(
        'DocSubtitle',
        parent=styles['Normal'],
        fontName='Helvetica',
        fontSize=11,
        leading=15,
        textColor=colors.HexColor("#4A5568"),
        spaceAfter=10
    )
    
    h1_style = ParagraphStyle(
        'SectionH1',
        parent=styles['Heading2'],
        fontName='Helvetica-Bold',
        fontSize=13,
        leading=16,
        textColor=accent_blue,
        spaceBefore=8,
        spaceAfter=4,
        keepWithNext=True
    )

    h2_style = ParagraphStyle(
        'SectionH2',
        parent=styles['Heading3'],
        fontName='Helvetica-Bold',
        fontSize=10.5,
        leading=13.5,
        textColor=primary_color,
        spaceBefore=6,
        spaceAfter=3,
        keepWithNext=True
    )
    
    body_style = ParagraphStyle(
        'BodyDark',
        parent=styles['Normal'],
        fontName='Helvetica',
        fontSize=9,
        leading=12.5,
        textColor=colors.HexColor("#2D3748"),
        spaceAfter=4
    )

    bullet_style = ParagraphStyle(
        'BulletDark',
        parent=body_style,
        leftIndent=12,
        firstLineIndent=-8,
        spaceAfter=2
    )

    code_style = ParagraphStyle(
        'CodeStyle',
        parent=styles['Code'],
        fontName='Courier',
        fontSize=8,
        leading=11,
        textColor=colors.HexColor("#2C5282")
    )
    
    callout_style = ParagraphStyle(
        'CalloutText',
        parent=styles['Normal'],
        fontName='Helvetica-Oblique',
        fontSize=8.5,
        leading=12,
        textColor=colors.HexColor("#2C5282")
    )

    caption_style = ParagraphStyle(
        'CaptionStyle',
        parent=styles['Normal'],
        fontName='Helvetica-Bold',
        fontSize=8,
        leading=10,
        alignment=1, # Center
        textColor=colors.HexColor("#4A5568"),
        spaceBefore=3
    )

    def code_box(code_text):
        p = Paragraph(code_text.replace('\n', '<br/>').replace(' ', '&nbsp;'), code_style)
        t = Table([[p]], colWidths=[letter[0] - 108])
        t.setStyle(TableStyle([
            ('BACKGROUND', (0,0), (-1,-1), code_bg),
            ('BOX', (0,0), (-1,-1), 0.5, colors.HexColor("#CBD5E0")),
            ('PADDING', (0,0), (-1,-1), 6),
            ('TOPPADDING', (0,0), (-1,-1), 4),
            ('BOTTOMPADDING', (0,0), (-1,-1), 4),
        ]))
        return t

    def callout_box(text, alert_type="note"):
        border_col = colors.HexColor("#3182CE") if alert_type == "note" else colors.HexColor("#DD6B20")
        bg_col = colors.HexColor("#EBF8FF") if alert_type == "note" else colors.HexColor("#FEEBC8")
        prefix = "<b>Note:</b> " if alert_type == "note" else "<b>Important:</b> "
        p = Paragraph(prefix + text, callout_style)
        t = Table([[p]], colWidths=[letter[0] - 108])
        t.setStyle(TableStyle([
            ('BACKGROUND', (0,0), (-1,-1), bg_col),
            ('BOX', (0,0), (-1,-1), 0.5, border_col),
            ('PADDING', (0,0), (-1,-1), 6),
        ]))
        return t

    story = []
    
    # =========================================================================
    # PAGE 1: Title, Meta, Overview, Visual Showcase
    # =========================================================================
    story.append(Paragraph("MI TV Launcher (Apple Style)", title_style))
    story.append(Paragraph("Complete Installation & Configuration Manual — Online & Offline Methods", subtitle_style))
    
    meta_data = [
        [
            Paragraph("<b>Target Hardware:</b> Xiaomi Mi TV (All models), Mi Box, Mi Stick, Android TV 9+", body_style),
            Paragraph("<b>Version:</b> v1.0 (Signed Release APK)", body_style)
        ],
        [
            Paragraph("<b>Package ID:</b> com.gathin.tvhome", body_style),
            Paragraph("<b>Repository:</b> github.com/girindrag/MI-TV-launcher-apple-style", body_style)
        ]
    ]
    meta_table = Table(meta_data, colWidths=[(letter[0]-108)*0.55, (letter[0]-108)*0.45])
    meta_table.setStyle(TableStyle([
        ('BACKGROUND', (0,0), (-1,-1), box_bg),
        ('BOX', (0,0), (-1,-1), 0.5, colors.HexColor("#CBD5E0")),
        ('INNERGRID', (0,0), (-1,-1), 0.5, colors.HexColor("#CBD5E0")),
        ('PADDING', (0,0), (-1,-1), 5),
    ]))
    story.append(meta_table)
    story.append(Spacer(1, 8))

    story.append(Paragraph("1. Overview & Core Features", h1_style))
    story.append(Paragraph(
        "This project replaces cluttered, ad-supported default TV launchers (such as Xiaomi PatchWall) "
        "with a clean, ultra-responsive <b>Apple TV (tvOS)</b> glassmorphism interface. Designed specifically for "
        "living room 10-foot interaction, it prioritizes speed, high visual elegance, and reliable remote control.",
        body_style
    ))
    story.append(Paragraph("• <b>Apple TV Aesthetics:</b> Translucent frost glass cards, smooth 1.1x D-Pad zoom, ambient dark blur backdrops.", bullet_style))
    story.append(Paragraph("• <b>Live IMDb Daily Sync:</b> Automatically fetches top trending movies and series via the open-source Cinemeta catalog and updates wallpapers daily.", bullet_style))
    story.append(Paragraph("• <b>Dynamic 4K Screensaver:</b> 14-second dual-layer crossfade engine with clean time and IMDb rating badge (no distracting location captions).", bullet_style))
    story.append(Paragraph("• <b>Remote Hotkey Interceptor:</b> Directly maps Xiaomi remote YouTube hotkey (keycodes 190, 288, 203) to YouTube TV / SmartTube, with instant HOME key return.", bullet_style))
    story.append(Paragraph("• <b>TV Control Center:</b> Built-in RAM booster, customizable sleep timer (15/30/60/120m), and 4-digit PIN child lock.", bullet_style))
    story.append(Spacer(1, 8))

    # Visual Showcase (Images)
    home_img_path = os.path.join(repo_root, "screenshots/home_screen_imdb.png")
    ss_img_path = os.path.join(repo_root, "screenshots/screensaver_imdb.png")
    
    img_w, img_h = 240, 135
    if os.path.exists(home_img_path) and os.path.exists(ss_img_path):
        img_table_data = [
            [Image(home_img_path, width=img_w, height=img_h), Image(ss_img_path, width=img_w, height=img_h)],
            [Paragraph("Live Apple TV Home Screen (Daily IMDb #1 Backdrop)", caption_style),
             Paragraph("Dynamic 4K Screensaver (Dual-Layer Crossfade)", caption_style)]
        ]
        img_table = Table(img_table_data, colWidths=[(letter[0]-108)*0.5, (letter[0]-108)*0.5])
        img_table.setStyle(TableStyle([
            ('ALIGN', (0,0), (-1,-1), 'CENTER'),
            ('VALIGN', (0,0), (-1,-1), 'MIDDLE'),
            ('PADDING', (0,0), (-1,-1), 2),
        ]))
        story.append(img_table)
    
    story.append(Spacer(1, 8))
    story.append(callout_box("The installer and signed APK match the exact production configuration currently active on the living room TV.", "note"))
    story.append(PageBreak())

    # =========================================================================
    # PAGE 2: Prerequisites & Method 1 (Wireless ADB)
    # =========================================================================
    story.append(Paragraph("2. Prerequisites & Device Preparation", h1_style))
    story.append(Paragraph(
        "Regardless of whether you choose online ADB installation or offline USB flashing, you must enable developer privileges on your Android TV.",
        body_style
    ))
    story.append(Paragraph("<b>Step 1 — Enable Developer Options:</b>", h2_style))
    story.append(Paragraph("1. Open TV <b>Settings</b> &rarr; <b>Device Preferences</b> &rarr; <b>About</b>.", bullet_style))
    story.append(Paragraph("2. Scroll down to <b>Build</b> (or Android TV OS build).", bullet_style))
    story.append(Paragraph("3. Press the <b>OK / Center button 7 times</b> rapidly until the TV displays <i>'You are now a developer!'</i>.", bullet_style))
    
    story.append(Paragraph("<b>Step 2 — Enable USB & Network Debugging:</b>", h2_style))
    story.append(Paragraph("1. Return to <b>Device Preferences</b> &rarr; <b>Developer Options</b>.", bullet_style))
    story.append(Paragraph("2. Toggle <b>USB Debugging</b> to <b>ON</b>.", bullet_style))
    story.append(Paragraph("3. (If present) Toggle <b>Network Debugging</b> to <b>ON</b>.", bullet_style))
    
    story.append(Paragraph("<b>Step 3 — Find the TV's IP Address:</b>", h2_style))
    story.append(Paragraph("Go to <b>Settings</b> &rarr; <b>Network & Internet</b> &rarr; Select your connected Wi-Fi or Ethernet network &rarr; Note the IP address (e.g., <code>192.168.1.3</code>).", bullet_style))
    story.append(Spacer(1, 10))

    story.append(Paragraph("3. Method 1: Automated Wireless ADB Install (Recommended)", h1_style))
    story.append(Paragraph(
        "This is the fastest, fully automated installation method. It requires a laptop or computer on the same Wi-Fi network.",
        body_style
    ))
    story.append(Paragraph("<b>Step 1 — Connect to TV over ADB:</b>", h2_style))
    story.append(code_box("adb connect <YOUR_TV_IP_ADDRESS>:5555\n# Example: adb connect 192.168.1.3:5555"))
    story.append(Paragraph("<i>Note: A prompt will appear on your TV screen: 'Allow USB debugging?'. Check 'Always allow from this computer' and select OK with your TV remote.</i>", body_style))
    
    story.append(Paragraph("<b>Step 2 — Run the 1-Click Installer:</b>", h2_style))
    story.append(code_box(
        "git clone https://github.com/girindrag/MI-TV-launcher-apple-style.git\n"
        "cd MI-TV-launcher-apple-style\n"
        "./scripts/install.sh"
    ))
    story.append(Paragraph(
        "<b>What the script does automatically:</b><br/>"
        "1. Installs <code>releases/MiTvLauncherAppleStyle-v1.0.apk</code>.<br/>"
        "2. Grants system-level privilege <code>android.permission.WRITE_SECURE_SETTINGS</code> for Control Center toggles.<br/>"
        "3. Enables and binds <code>HomeKeyService</code> accessibility service to intercept remote YouTube and Home hotkeys.<br/>"
        "4. Launches the Apple Style TV Home Activity directly onto the screen.",
        body_style
    ))
    story.append(Spacer(1, 8))
    story.append(callout_box("If adb is not found on your system, install Android Platform Tools (macOS: brew install android-platform-tools; Windows/Linux: download from developer.android.com).", "note"))
    story.append(PageBreak())

    # =========================================================================
    # PAGE 3: Method 2 (Offline USB), Method 3 (Mobile), Post-Installation
    # =========================================================================
    story.append(Paragraph("4. Method 2: Completely Offline Installation (USB Drive)", h1_style))
    story.append(Paragraph(
        "For TVs without internet access, or when a computer is not available, you can install the launcher entirely offline using a standard USB pen drive.",
        body_style
    ))
    story.append(Paragraph("<b>Step 1 — Copy APK to USB:</b>", h2_style))
    story.append(Paragraph("1. Format a USB drive as <b>FAT32</b> or <b>NTFS</b>.", bullet_style))
    story.append(Paragraph("2. Copy <code>releases/MiTvLauncherAppleStyle-v1.0.apk</code> into the root directory of the USB drive.", bullet_style))
    story.append(Paragraph("3. Plug the USB flash drive into the USB port of your Xiaomi TV or Android TV box.", bullet_style))

    story.append(Paragraph("<b>Step 2 — Sideload via File Manager:</b>", h2_style))
    story.append(Paragraph("1. Open the built-in <b>PatchWall File Manager</b> (or install <i>FX File Explorer</i> from the TV Play Store).", bullet_style))
    story.append(Paragraph("2. Browse to the USB drive and select <code>MiTvLauncherAppleStyle-v1.0.apk</code>.", bullet_style))
    story.append(Paragraph("3. If prompted with <i>'Install Unknown Apps'</i>, click <b>Settings</b> and toggle the permission to <b>Allow</b>.", bullet_style))
    story.append(Paragraph("4. Select <b>Install</b> and wait for confirmation.", bullet_style))
    story.append(Spacer(1, 8))

    story.append(Paragraph("5. Method 3: Smartphone Wireless Installation (No PC)", h1_style))
    story.append(Paragraph(
        "If you do not have a computer or USB drive, you can install wirelessly using an Android smartphone on the same Wi-Fi:",
        body_style
    ))
    story.append(Paragraph("• <b>Send Files to TV (SFTV):</b> Install <i>Send Files to TV</i> on both your phone and TV. Download the APK on your phone, send it wirelessly to the TV, open it in SFTV, and click Install.", bullet_style))
    story.append(Paragraph("• <b>Bugjaeger Mobile ADB:</b> Install <i>Bugjaeger</i> on your Android smartphone. Connect to the TV's IP address, navigate to the Packages tab, tap '+', select the APK, and deploy instantly.", bullet_style))
    story.append(Spacer(1, 8))

    story.append(Paragraph("6. Post-Installation Setup & Making it Permanent", h1_style))
    story.append(Paragraph(
        "To make this launcher your permanent home screen and disable Xiaomi's stock PatchWall advertisements:",
        body_style
    ))
    story.append(Paragraph("<b>1. Grant System Permissions & Remote Hotkeys (via ADB):</b>", h2_style))
    story.append(code_box(
        "adb shell \"pm grant com.gathin.tvhome android.permission.WRITE_SECURE_SETTINGS\"\n"
        "adb shell \"settings put secure enabled_accessibility_services com.gathin.tvhome/com.gathin.tvhome.HomeKeyService\"\n"
        "adb shell \"settings put secure accessibility_enabled 1\""
    ))
    story.append(Paragraph("<b>2. Disable Stock Xiaomi PatchWall Launcher:</b>", h2_style))
    story.append(code_box(
        "# Disable stock PatchWall launcher\n"
        "adb shell \"pm disable-user --user 0 com.mitv.tvhome\"\n\n"
        "# (Optional) Disable Google Leanback Launcher if installed\n"
        "adb shell \"pm disable-user --user 0 com.google.android.tvlauncher\""
    ))
    story.append(callout_box("To restore the factory Xiaomi PatchWall launcher at any time: adb shell \"pm enable com.mitv.tvhome\"", "note"))
    story.append(PageBreak())

    # =========================================================================
    # PAGE 4: Troubleshooting, FAQ & Hardware Compatibility
    # =========================================================================
    story.append(Paragraph("7. Troubleshooting & FAQs", h1_style))
    
    faq_data = [
        [Paragraph("<b>Symptom</b>", h2_style), Paragraph("<b>Root Cause & Solution</b>", h2_style)],
        [
            Paragraph("<b>ADB Connection Refused</b>", body_style),
            Paragraph("Verify that the TV and computer are on the same Wi-Fi network and Wi-Fi AP isolation is off. Re-toggle 'USB Debugging' in Developer Options and verify port 5555 is open.", body_style)
        ],
        [
            Paragraph("<b>YouTube Button Does Nothing</b>", body_style),
            Paragraph("Ensure the accessibility service is active. Run: <code>settings get secure enabled_accessibility_services</code>. If missing, re-run the <code>install.sh</code> script or enable it under TV Settings &rarr; Device Preferences &rarr; Accessibility.", body_style)
        ],
        [
            Paragraph("<b>Screensaver Shows Local Videos Only</b>", body_style),
            Paragraph("If the TV is offline, the screensaver automatically falls back to bundled 4K aerial video loops. Connect to Wi-Fi to sync live IMDb trending backdrops via Cinemeta.", body_style)
        ],
        [
            Paragraph("<b>TV Reverts to Stock Launcher after Reboot</b>", body_style),
            Paragraph("Xiaomi TVs occasionally re-enable PatchWall on system updates. Run: <code>adb shell \"pm disable-user --user 0 com.mitv.tvhome\"</code> to lock Apple TV style as permanent.", body_style)
        ]
    ]
    faq_table = Table(faq_data, colWidths=[(letter[0]-108)*0.32, (letter[0]-108)*0.68])
    faq_table.setStyle(TableStyle([
        ('BACKGROUND', (0,0), (-1,0), box_bg),
        ('BOX', (0,0), (-1,-1), 0.5, colors.HexColor("#CBD5E0")),
        ('INNERGRID', (0,0), (-1,-1), 0.5, colors.HexColor("#CBD5E0")),
        ('PADDING', (0,0), (-1,-1), 5),
        ('VALIGN', (0,0), (-1,-1), 'TOP'),
    ]))
    story.append(faq_table)
    story.append(Spacer(1, 10))

    story.append(Paragraph("8. Hardware Compatibility Matrix", h1_style))
    compat_data = [
        ["Device Model", "Android OS", "Status", "Notes"],
        ["Xiaomi Mi TV 4A / 4X / 5X / 5A", "Android 9 / 10 / 11", "Fully Verified", "Full remote hotkey & PatchWall bypass supported"],
        ["Xiaomi Mi TV Horizon / OLED / QLED", "Android 10 / 11", "Fully Verified", "Hardware acceleration & 4K screensaver crossfade"],
        ["Xiaomi Mi Box S 4K / Mi TV Stick", "Android 9 / 10 / 11", "Fully Verified", "RAM booster significantly improves system fluidness"],
        ["OnePlus TV / Sony Bravia / TCL / Vu", "Android TV 9 - 12", "Compatible", "Leanback launcher override fully working"],
        ["Chromecast with Google TV", "Google TV 10 / 12", "Compatible", "Requires adb disable for google tv launcher"]
    ]
    compat_table = Table(compat_data, colWidths=[155, 95, 85, 169])
    compat_table.setStyle(TableStyle([
        ('BACKGROUND', (0,0), (-1,0), colors.HexColor("#2B6CB0")),
        ('TEXTCOLOR', (0,0), (-1,0), colors.white),
        ('FONTNAME', (0,0), (-1,0), 'Helvetica-Bold'),
        ('FONTSIZE', (0,0), (-1,0), 8),
        ('FONTNAME', (0,1), (-1,-1), 'Helvetica'),
        ('FONTSIZE', (0,1), (-1,-1), 7.5),
        ('BACKGROUND', (0,1), (-1,-1), colors.white),
        ('ROWBACKGROUNDS', (0,1), (-1,-1), [colors.white, colors.HexColor("#F7FAFC")]),
        ('BOX', (0,0), (-1,-1), 0.5, colors.HexColor("#CBD5E0")),
        ('INNERGRID', (0,0), (-1,-1), 0.5, colors.HexColor("#CBD5E0")),
        ('PADDING', (0,0), (-1,-1), 4.5),
    ]))
    story.append(compat_table)
    story.append(Spacer(1, 10))

    story.append(Paragraph("9. Verification & Quick Reference Checklist", h1_style))
    story.append(Paragraph("✅ <b>Launch Test:</b> Press HOME on TV remote &rarr; Apple TV style grid appears instantly.", bullet_style))
    story.append(Paragraph("✅ <b>Remote Hotkey Test:</b> Press YouTube button on remote &rarr; YouTube TV client launches immediately.", bullet_style))
    story.append(Paragraph("✅ <b>Screensaver Test:</b> Leave TV idle for 5 minutes (or launch from Control Center) &rarr; 4K backdrops crossfade smoothly.", bullet_style))
    story.append(Paragraph("✅ <b>RAM Cleaner Test:</b> Open Control Center &rarr; Click Boost &rarr; Reclaimed memory is reported.", bullet_style))
    
    doc.build(story, canvasmaker=NumberedCanvas)
    print(f"Successfully generated: {filename}")

if __name__ == "__main__":
    repo_root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    out_path = sys.argv[1] if len(sys.argv) > 1 else os.path.join(repo_root, "docs/INSTALLATION_GUIDE.pdf")
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    build_pdf(out_path, repo_root)
