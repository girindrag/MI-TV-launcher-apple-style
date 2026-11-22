.class public final Lcom/gathin/tvhome/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final advancedEffects:Z

.field public final alwaysShowNames:Z

.field public final ambientGlow:Z

.field public final animations:Z

.field public final appBanners:Ljava/util/Map;

.field public final appGlow:Z

.field public final appKeys:Ljava/util/List;

.field public final appLabels:Ljava/util/Map;

.field public final appLibrary:Z

.field public final appLibrarySelection:Z

.field public final backgroundColor:I

.field public final bootToLiveTv:Z

.field public final cinematicArt:I

.field public final cinematicDots:Z

.field public final cinematicHome:Z

.field public final cinematicScrim:I

.field public final cinematicWhiteFocus:Z

.field public final clockGlow:Z

.field public final clockWallpaper:Z

.field public final clockWallpaperDim:I

.field public final columns:I

.field public final consumeVolumeKeys:Z

.field public final coocaaSources:Z

.field public final dockApps:Ljava/util/List;

.field public final dockBandAll:Z

.field public final dockEvenPadding:Z

.field public final dockGlass:Z

.field public final dockOpacity:I

.field public final dockRow:Z

.field public final dockTitle:Z

.field public final fadeRows:Z

.field public final festival:Lcom/gathin/tvhome/Festival;

.field public final fillDock:Z

.field public final focusOvershoot:Z

.field public final gamepadPassthrough:Z

.field public final glassStyle:Ljava/lang/String;

.field public final glowStyle:Ljava/lang/String;

.field public final greetingName:Ljava/lang/String;

.field public final handleViewInputs:Z

.field public final headerWhite:Z

.field public final hiddenApps:Ljava/util/List;

.field public final homeIdleClockMinutes:I

.field public final iconOnlyButtons:Z

.field public final iconOnlyInputs:Z

.field public final inputAction:Ljava/lang/String;

.field public final inputKeycodes:[I

.field public final inputUriScheme:Ljava/lang/String;

.field public final keyFilter:Z

.field public final launchActions:Ljava/util/Map;

.field public final launcherSettingsButton:Z

.field public final libraryApps:Ljava/util/List;

.field public final libraryButton:Z

.field public final liveTvAction:Ljava/lang/String;

.field public final liveTvInputId:Ljava/lang/String;

.field public final liveTvPackage:Ljava/lang/String;

.field public final lunarDate:Z

.field public final lunarUtcOffset:I

.field public final moduleCards:Z

.field public final openOnStartChoice:Z

.field public final raceCalendar:Ljava/util/List;

.field public final reducedMotion:Z

.field public final reorderButton:Z

.field public final restoreKeyServices:Z

.field public final rowsBelowDock:I

.field public final settingsKeycodes:[I

.field public final shamsiDate:Z

.field public final showGreeting:Z

.field public final showHomeSettingsShortcut:Z

.field public final showInputsPill:Z

.field public final showNetworkPill:Z

.field public final showStats:Z

.field public final singleRow:Z

.field public final skyIntensity:I

.field public final sourcePanelAction:Ljava/lang/String;

.field public final sourcePanelExtra:Ljava/lang/String;

.field public final sourcePanelService:Ljava/lang/String;

.field public final stockHomeRedirect:Ljava/lang/String;

.field public final tileMenu:Z

.field public final topBarApps:Ljava/util/List;

.field public final topMenu:Z

.field public final uniformTiles:Z

.field public final vpnApp:Ljava/lang/String;

.field public final wallpaper:Ljava/io/File;

.field public final wallpaperCaptions:Z

.field public final wallpaperDim:I

.field public final wallpaperEnabled:Z

.field public final wallpaperMoods:Ljava/util/Map;

.field public final wallpaperOrder:Ljava/lang/String;

.field public final wallpaperRotationMinutes:I

.field public final wallpaperTrueColor:Z

.field public final wallpapers:Ljava/util/List;

.field public final wifiLabelWidth:I

.field public final wifiStatusColor:Z

.field public final wifiStatusWarnings:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;ZZZZZZZZZZZZZZIZZZLjava/lang/String;ZZZZZII[IZZZLjava/io/File;Ljava/util/ArrayList;IIILjava/lang/String;Lcom/gathin/tvhome/Festival;[ILjava/util/List;Ljava/lang/String;Ljava/util/List;ZZZZIZZLjava/lang/String;ZZZZZZZIILjava/util/Map;ZZZLjava/util/List;ZZZIZLjava/lang/String;ZZZI)V
    .locals 5

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p73

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->handleViewInputs:Z

    move/from16 v1, p74

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->tileMenu:Z

    move-object/from16 v1, p60

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->inputKeycodes:[I

    invoke-static/range {p61 .. p61}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->appKeys:Ljava/util/List;

    move/from16 v1, p69

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->keyFilter:Z

    move-object/from16 v1, p62

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->stockHomeRedirect:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->dockApps:Ljava/util/List;

    move v1, p2

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->fillDock:Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->hiddenApps:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->libraryApps:Ljava/util/List;

    move-object v1, p5

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->liveTvPackage:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->liveTvAction:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->liveTvInputId:Ljava/lang/String;

    invoke-static {p8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->launchActions:Ljava/util/Map;

    invoke-static {p9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->appLabels:Ljava/util/Map;

    invoke-static {p10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->appBanners:Ljava/util/Map;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->sourcePanelService:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->sourcePanelAction:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->sourcePanelExtra:Ljava/lang/String;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->coocaaSources:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->inputAction:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->inputUriScheme:Ljava/lang/String;

    move/from16 v1, p17

    iput v1, v0, Lcom/gathin/tvhome/Config;->columns:I

    move/from16 v1, p18

    iput v1, v0, Lcom/gathin/tvhome/Config;->rowsBelowDock:I

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->animations:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->advancedEffects:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->shamsiDate:Z

    move/from16 v1, p94

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->lunarDate:Z

    move/from16 v1, p95

    iput v1, v0, Lcom/gathin/tvhome/Config;->lunarUtcOffset:I

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->greetingName:Ljava/lang/String;

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->moduleCards:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->reducedMotion:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->bootToLiveTv:Z

    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->openOnStartChoice:Z

    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->dockTitle:Z

    move/from16 v1, p28

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->dockRow:Z

    move/from16 v1, p29

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->topMenu:Z

    move/from16 v1, p30

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->launcherSettingsButton:Z

    move/from16 v1, p31

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->reorderButton:Z

    move/from16 v1, p32

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->showNetworkPill:Z

    move/from16 v1, p33

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->showInputsPill:Z

    move/from16 v1, p34

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->iconOnlyButtons:Z

    move/from16 v1, p35

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->iconOnlyInputs:Z

    move/from16 v1, p36

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->libraryButton:Z

    move/from16 v1, p37

    iput v1, v0, Lcom/gathin/tvhome/Config;->wifiLabelWidth:I

    move/from16 v1, p38

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->alwaysShowNames:Z

    move/from16 v1, p39

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->wallpaperTrueColor:Z

    move/from16 v1, p40

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->focusOvershoot:Z

    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->vpnApp:Ljava/lang/String;

    move/from16 v1, p42

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->showHomeSettingsShortcut:Z

    move/from16 v1, p43

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->showStats:Z

    move/from16 v1, p44

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->appLibrary:Z

    move/from16 v1, p45

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->appLibrarySelection:Z

    move/from16 v1, p46

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->uniformTiles:Z

    move/from16 v1, p47

    iput v1, v0, Lcom/gathin/tvhome/Config;->backgroundColor:I

    move/from16 v1, p48

    iput v1, v0, Lcom/gathin/tvhome/Config;->skyIntensity:I

    move-object/from16 v1, p49

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->settingsKeycodes:[I

    move/from16 v1, p51

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->restoreKeyServices:Z

    move/from16 v1, p52

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->wallpaperEnabled:Z

    move-object/from16 v1, p53

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->wallpaper:Ljava/io/File;

    invoke-static/range {p54 .. p54}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->wallpapers:Ljava/util/List;

    move/from16 v1, p55

    iput v1, v0, Lcom/gathin/tvhome/Config;->wallpaperRotationMinutes:I

    move/from16 v1, p56

    iput v1, v0, Lcom/gathin/tvhome/Config;->wallpaperDim:I

    move/from16 v1, p57

    iput v1, v0, Lcom/gathin/tvhome/Config;->dockOpacity:I

    move-object/from16 v1, p58

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->wallpaperOrder:Ljava/lang/String;

    move-object/from16 v1, p59

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->festival:Lcom/gathin/tvhome/Festival;

    invoke-static/range {p63 .. p63}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->raceCalendar:Ljava/util/List;

    move/from16 v1, p64

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->cinematicHome:Z

    move/from16 v1, p65

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->ambientGlow:Z

    move/from16 v1, p66

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->appGlow:Z

    move/from16 v1, p67

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->fadeRows:Z

    move/from16 v1, p68

    iput v1, v0, Lcom/gathin/tvhome/Config;->homeIdleClockMinutes:I

    move/from16 v1, p70

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->dockGlass:Z

    move/from16 v1, p75

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->dockEvenPadding:Z

    move/from16 v1, p76

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->cinematicDots:Z

    move/from16 v1, p77

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->cinematicWhiteFocus:Z

    move/from16 v1, p78

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->wifiStatusColor:Z

    move/from16 v1, p80

    iput v1, v0, Lcom/gathin/tvhome/Config;->cinematicArt:I

    move/from16 v1, p79

    iput v1, v0, Lcom/gathin/tvhome/Config;->cinematicScrim:I

    move-object/from16 v1, p81

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->wallpaperMoods:Ljava/util/Map;

    move/from16 v1, p82

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->gamepadPassthrough:Z

    move/from16 v1, p83

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->consumeVolumeKeys:Z

    move/from16 v1, p84

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->wifiStatusWarnings:Z

    invoke-static/range {p85 .. p85}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/Config;->topBarApps:Ljava/util/List;

    move/from16 v1, p86

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->showGreeting:Z

    move/from16 v1, p87

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->headerWhite:Z

    move/from16 v1, p88

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->clockWallpaper:Z

    move/from16 v1, p89

    iput v1, v0, Lcom/gathin/tvhome/Config;->clockWallpaperDim:I

    move/from16 v1, p90

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->clockGlow:Z

    move/from16 v1, p92

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->singleRow:Z

    move/from16 v1, p93

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->dockBandAll:Z

    if-eqz p71, :cond_0

    invoke-virtual/range {p71 .. p71}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "horizon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "radial"

    :goto_0
    iput-object v2, v0, Lcom/gathin/tvhome/Config;->glowStyle:Ljava/lang/String;

    move/from16 v1, p72

    iput-boolean v1, v0, Lcom/gathin/tvhome/Config;->wallpaperCaptions:Z

    const-string v1, "glass"

    if-nez p91, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p91 .. p91}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rim"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    const-string v3, "halo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iput-object v1, v0, Lcom/gathin/tvhome/Config;->glassStyle:Ljava/lang/String;

    return-void
.end method

.method public static bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    return p2
.end method

.method public static intArray(Lorg/json/JSONObject;Ljava/lang/String;[I)[I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/json/JSONArray;

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Number;

    if-nez v2, :cond_1

    return-object p2

    :cond_1
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aput v1, p1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    return-object p2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static integer(Lorg/json/JSONObject;Ljava/lang/String;III)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-nez p1, :cond_0

    return p2

    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-lt p0, p3, :cond_2

    if-le p0, p4, :cond_1

    goto :goto_0

    :cond_1
    move p2, p0

    :cond_2
    :goto_0
    return p2
.end method

.method public static load(Landroid/content/Context;)Lcom/gathin/tvhome/Config;
    .locals 195

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const v3, 0x7f020003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v3, 0x7f040016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    const v5, 0x7f020004

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    const v6, 0x7f020008

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v6, 0x7f10004e

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f10004c

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f10004d

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    const v10, 0x7f020007

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    const v11, 0x7f020002

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Ljava/util/ArrayList;

    const/high16 v12, 0x7f020000

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v12, 0x7f10008c

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f10008a

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f10008b

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f04000e

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v16, v15

    const v15, 0x7f10003a

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    const v15, 0x7f10003c

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    const v15, 0x7f0a0003

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move/from16 v19, v15

    const v15, 0x7f0a0005

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move/from16 v20, v15

    const v15, 0x7f040003

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v21, v15

    const/high16 v15, 0x7f040000

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v22, v15

    const v15, 0x7f040029

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v23, v15

    const v15, 0x7f040020

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v24, v15

    const v15, 0x7f100034

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v15

    const v15, 0x7f040021

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v26, v15

    const v15, 0x7f040023

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v27, v15

    const v15, 0x7f040007

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v28, v15

    const v15, 0x7f040022

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v29, v15

    const v15, 0x7f040014

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v30, v15

    const v15, 0x7f040013

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v31, v15

    const v15, 0x7f040031

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v32, v15

    const v15, 0x7f04001e

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v33, v15

    const v15, 0x7f040024

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v34, v15

    const v15, 0x7f04002d

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v35, v15

    const v15, 0x7f04002c

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v36, v15

    const v15, 0x7f04001b

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v37, v15

    const v15, 0x7f04001c

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v38, v15

    const v15, 0x7f04001f

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v39, v15

    const v15, 0x7f0a0008

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move/from16 v40, v15

    const v15, 0x7f040001

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v41, v15

    const v15, 0x7f040034

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v42, v15

    const v15, 0x7f040017

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v43, v15

    const v15, 0x7f040033

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v44, v15

    const v15, 0x7f040030

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v45, v15

    const v15, 0x7f10009a

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v46, v15

    const v15, 0x7f04002b

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v47, v15

    const v15, 0x7f04002e

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v48, v15

    const v15, 0x7f040005

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v49, v15

    const v15, 0x7f040006

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v50, v15

    const v15, 0x7f040032

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v51, v15

    const v15, 0x7f0a0006

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move/from16 v52, v15

    const v15, 0x7f02000c

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    move-object/from16 v53, v15

    const v15, 0x7f040028

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v54, v15

    const v15, 0x7f040025

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v55, v15

    const v15, 0x7f020005

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    move-object/from16 v56, v15

    const v15, 0x7f040019

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move/from16 v57, v15

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v58, v14

    const v14, 0x7f020001

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v14, 0x7f100092

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v59, v14

    const v14, 0x7f040009

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v60, v14

    const v14, 0x7f040002

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v61, v14

    const v14, 0x7f040004

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v62, v14

    const v14, 0x7f040015

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v63, v14

    const v14, 0x7f0a0004

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move/from16 v64, v14

    const v14, 0x7f04001d

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v65, v14

    const v14, 0x7f040018

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v66, v14

    const v14, 0x7f04000d

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v67, v14

    const v14, 0x7f040012

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v68, v14

    const v14, 0x7f040011

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v69, v14

    const v14, 0x7f040008

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v70, v14

    const v14, 0x7f04000a

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v71, v14

    const v14, 0x7f040035

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v72, v14

    const/high16 v14, 0x7f0a0000

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move/from16 v73, v14

    const v14, 0x7f0a0001

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move/from16 v74, v14

    const v14, 0x7f10009e

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/String;->isEmpty()Z

    move-result v75

    if-eqz v75, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    move-object/from16 v75, v15

    goto :goto_0

    :cond_0
    move-object/from16 v75, v15

    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/gathin/tvhome/Config;->moods(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    :goto_0
    const v15, 0x7f10002f

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v76, v14

    const v14, 0x7f040036

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v77, v15

    new-instance v15, Ljava/util/ArrayList;

    move/from16 v78, v14

    const v14, 0x7f02000e

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v14, 0x7f04002a

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v79, v14

    const v14, 0x7f04001a

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v80, v14

    const v14, 0x7f04000c

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v81, v14

    const v14, 0x7f0a0002

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move/from16 v82, v14

    const v14, 0x7f04000b

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v83, v14

    const v14, 0x7f10002e

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v84, v14

    const v14, 0x7f04002f

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v85, v14

    const v14, 0x7f040010

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move/from16 v86, v14

    const/4 v14, 0x0

    move-object/from16 v87, v15

    invoke-virtual {v1, v14}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    const-string v0, "config.json"

    if-eqz v15, :cond_1

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v88, v15

    goto :goto_1

    :cond_1
    move-object/from16 v88, v15

    const/4 v14, 0x0

    :goto_1
    const-string v15, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v15, Ljava/io/File;

    move-object/from16 v89, v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-direct {v15, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez v1, :cond_2

    invoke-static {v15}, Lcom/gathin/tvhome/Config;->read(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v13, v0

    :goto_2
    move/from16 v90, v1

    goto :goto_5

    :cond_2
    invoke-static {v14}, Lcom/gathin/tvhome/Config;->read(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v13

    if-nez v13, :cond_3

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_3
    move/from16 v90, v1

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v15, v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_5
    invoke-virtual {v15, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v15
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v15, "could not keep a copy of "

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvHome.Config"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const-string v15, "advanced_effects"

    const-string v1, "animations"

    move-object/from16 v91, v14

    const-string v14, "rows_below_dock"

    move-object/from16 v92, v15

    const-string v15, "columns"

    move-object/from16 v93, v1

    const/high16 v96, -0x1000000

    if-eqz v13, :cond_6

    const-string v0, "dock_apps"

    invoke-static {v13, v0, v2}, Lcom/gathin/tvhome/Config;->stringList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    const-string v0, "fill_dock"

    invoke-static {v13, v0, v3}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "hidden_apps"

    invoke-static {v13, v0, v4}, Lcom/gathin/tvhome/Config;->stringList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    const-string v0, "library_apps"

    invoke-static {v13, v0, v5}, Lcom/gathin/tvhome/Config;->stringList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    const-string v0, "live_tv_package"

    invoke-static {v13, v0, v6}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "live_tv_action"

    invoke-static {v13, v0, v7}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "live_tv_input_id"

    invoke-static {v13, v0, v8}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "launch_actions"

    invoke-static {v13, v0, v9}, Lcom/gathin/tvhome/Config;->stringList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v9

    const-string v0, "app_labels"

    invoke-static {v13, v0, v10}, Lcom/gathin/tvhome/Config;->stringList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v10

    const-string v0, "app_banners"

    invoke-static {v13, v0, v11}, Lcom/gathin/tvhome/Config;->stringList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v11

    const-string v0, "source_panel_service"

    invoke-static {v13, v0, v12}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "source_panel_action"

    move-object/from16 v1, v89

    invoke-static {v13, v0, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "source_panel_extra"

    move-object/from16 v89, v2

    move-object/from16 v2, v58

    invoke-static {v13, v1, v2}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coocaa_sources"

    move-object/from16 v58, v1

    move/from16 v1, v16

    invoke-static {v13, v2, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "input_action"

    move/from16 v16, v1

    move-object/from16 v1, v17

    invoke-static {v13, v2, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "input_uri_scheme"

    move-object/from16 v17, v1

    move-object/from16 v1, v18

    invoke-static {v13, v2, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    move-object/from16 v18, v1

    move/from16 v1, v19

    move/from16 v19, v3

    const/4 v3, 0x1

    invoke-static {v13, v15, v1, v3, v2}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v1

    move/from16 v2, v20

    const/4 v3, 0x3

    move/from16 v20, v1

    const/4 v1, 0x0

    invoke-static {v13, v14, v2, v1, v3}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v2

    move/from16 v1, v21

    move-object/from16 v3, v93

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    move/from16 v21, v1

    move/from16 v1, v22

    move/from16 v22, v2

    move-object/from16 v2, v92

    invoke-static {v13, v2, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v92, v0

    const-string v0, "shamsi_date"

    move/from16 v93, v1

    move/from16 v1, v23

    invoke-static {v13, v0, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "lunar_date"

    move-object/from16 v23, v3

    move/from16 v3, v24

    invoke-static {v13, v1, v3}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "lunar_utc_offset"

    move/from16 v24, v0

    const/16 v0, 0xe

    move/from16 v97, v1

    const/4 v1, -0x1

    invoke-static {v13, v3, v1, v1, v0}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    const-string v1, "greeting_name"

    move-object/from16 v3, v25

    invoke-static {v13, v1, v3}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "module_cards"

    move-object/from16 v25, v1

    move/from16 v1, v26

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "reduced_motion"

    move/from16 v26, v1

    move/from16 v1, v27

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "boot_to_live_tv"

    move/from16 v27, v1

    move/from16 v1, v28

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "open_on_start_choice"

    move/from16 v28, v1

    move/from16 v1, v29

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "dock_title"

    move/from16 v29, v1

    move/from16 v1, v30

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "dock_row"

    move/from16 v30, v1

    move/from16 v1, v31

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "top_menu"

    move/from16 v31, v1

    move/from16 v1, v32

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "launcher_settings_button"

    move/from16 v32, v1

    move/from16 v1, v33

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "reorder_button"

    move/from16 v33, v1

    move/from16 v1, v34

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "show_network_pill"

    move/from16 v34, v1

    move/from16 v1, v35

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "show_inputs_pill"

    move/from16 v35, v1

    move/from16 v1, v36

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "icon_only_buttons"

    move/from16 v36, v1

    move/from16 v1, v37

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "icon_only_inputs"

    move/from16 v37, v1

    move/from16 v1, v38

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "library_button"

    move/from16 v38, v1

    move/from16 v1, v39

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "wifi_label_width"

    move/from16 v39, v0

    const/16 v0, 0x12c

    move/from16 v98, v1

    move/from16 v1, v40

    move-object/from16 v40, v4

    const/4 v4, 0x0

    invoke-static {v13, v3, v1, v4, v0}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    const-string v1, "always_show_names"

    move/from16 v3, v41

    invoke-static {v13, v1, v3}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "wallpaper_true_color"

    move/from16 v4, v42

    invoke-static {v13, v3, v4}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "focus_overshoot"

    move/from16 v41, v1

    move/from16 v1, v43

    invoke-static {v13, v4, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "wallpaper_captions"

    move/from16 v42, v1

    move/from16 v1, v44

    invoke-static {v13, v4, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "tile_menu"

    move/from16 v43, v1

    move/from16 v1, v45

    invoke-static {v13, v4, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "vpn_app"

    move/from16 v44, v1

    move-object/from16 v1, v46

    invoke-static {v13, v4, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "show_home_settings_shortcut"

    move-object/from16 v45, v1

    move/from16 v1, v47

    invoke-static {v13, v4, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "show_stats"

    move/from16 v46, v1

    move/from16 v1, v48

    invoke-static {v13, v4, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "app_library"

    move/from16 v47, v1

    move/from16 v1, v49

    invoke-static {v13, v4, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "app_library_selection"

    move/from16 v48, v1

    move/from16 v1, v50

    invoke-static {v13, v4, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "uniform_tiles"

    move/from16 v49, v1

    move/from16 v1, v51

    invoke-static {v13, v4, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "background_color"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move/from16 v50, v0

    instance-of v0, v4, Ljava/lang/String;

    if-nez v0, :cond_4

    :catch_2
    move/from16 v0, v96

    goto :goto_6

    :cond_4
    :try_start_6
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    or-int v0, v0, v96

    :goto_6
    const-string v4, "sky_intensity"

    move/from16 v51, v1

    move-object/from16 v99, v5

    move/from16 v1, v52

    const/4 v5, 0x0

    move/from16 v52, v3

    const/16 v3, 0x64

    invoke-static {v13, v4, v1, v5, v3}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v1

    const-string v3, "settings_key_keycodes"

    move-object/from16 v4, v53

    invoke-static {v13, v3, v4}, Lcom/gathin/tvhome/Config;->intArray(Lorg/json/JSONObject;Ljava/lang/String;[I)[I

    move-result-object v3

    const-string v4, "settings_key_panel"

    move/from16 v5, v54

    invoke-static {v13, v4, v5}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "restore_key_services"

    move/from16 v53, v1

    move/from16 v1, v55

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "input_key_keycodes"

    move/from16 v54, v1

    move-object/from16 v1, v56

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->intArray(Lorg/json/JSONObject;Ljava/lang/String;[I)[I

    move-result-object v1

    const-string v5, "handle_view_inputs"

    move-object/from16 v55, v1

    move/from16 v1, v57

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "app_keys"

    move/from16 v56, v1

    move-object/from16 v1, v75

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->stringList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    const-string v5, "stock_home_redirect"

    move-object/from16 v57, v1

    move-object/from16 v1, v59

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "cinematic_home"

    move-object/from16 v59, v1

    move/from16 v1, v60

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "ambient_glow"

    move/from16 v60, v1

    move/from16 v1, v61

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "app_glow"

    move/from16 v61, v1

    move/from16 v1, v62

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "fade_rows"

    move/from16 v62, v1

    move/from16 v1, v63

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "home_idle_clock_minutes"

    move/from16 v63, v1

    move/from16 v75, v4

    move/from16 v1, v64

    const/4 v4, 0x0

    move-object/from16 v64, v3

    const/16 v3, 0x5a0

    invoke-static {v13, v5, v1, v4, v3}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v1

    const-string v3, "key_filter"

    move/from16 v4, v65

    invoke-static {v13, v3, v4}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "gamepad_passthrough"

    move/from16 v5, v66

    invoke-static {v13, v4, v5}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "consume_volume_keys"

    move/from16 v65, v1

    move/from16 v1, v67

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "dock_glass"

    move/from16 v66, v1

    move/from16 v1, v68

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "dock_even_padding"

    move/from16 v67, v1

    move/from16 v1, v69

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "cinematic_dots"

    move/from16 v68, v1

    move/from16 v1, v70

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "cinematic_white_focus"

    move/from16 v69, v1

    move/from16 v1, v71

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "wifi_status_color"

    move/from16 v70, v1

    move/from16 v1, v72

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "cinematic_art"

    move/from16 v71, v1

    move/from16 v72, v3

    move/from16 v1, v73

    const/16 v3, 0x64

    move/from16 v73, v4

    const/4 v4, 0x0

    invoke-static {v13, v5, v1, v4, v3}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v1

    const-string v5, "cinematic_scrim"

    move/from16 v100, v1

    move/from16 v1, v74

    invoke-static {v13, v5, v1, v4, v3}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v1

    const-string v3, "wallpaper_moods"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/gathin/tvhome/Config;->moods(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    goto :goto_7

    :cond_5
    move-object/from16 v3, v76

    :goto_7
    const-string v4, "wifi_status_warnings"

    move/from16 v5, v78

    invoke-static {v13, v4, v5}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "top_bar_apps"

    move/from16 v74, v1

    move-object/from16 v1, v87

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->stringList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    const-string v5, "show_greeting"

    move-object/from16 v76, v1

    move/from16 v1, v79

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "header_white"

    move/from16 v78, v1

    move/from16 v1, v80

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "clock_wallpaper"

    move/from16 v79, v1

    move/from16 v1, v81

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "clock_wallpaper_dim"

    move/from16 v80, v1

    move-object/from16 v81, v3

    move/from16 v1, v82

    const/16 v3, 0x5a

    move/from16 v82, v4

    const/4 v4, 0x0

    invoke-static {v13, v5, v1, v4, v3}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v1

    const-string v3, "clock_glow"

    move/from16 v4, v83

    invoke-static {v13, v3, v4}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "single_row"

    move/from16 v5, v85

    invoke-static {v13, v4, v5}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "dock_band_all"

    move/from16 v83, v1

    move/from16 v1, v86

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "glow_style"

    move/from16 v85, v1

    move-object/from16 v1, v77

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "glass_style"

    move-object/from16 v77, v1

    move-object/from16 v1, v84

    invoke-static {v13, v5, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move/from16 v144, v0

    move-object/from16 v188, v1

    move/from16 v187, v3

    move/from16 v87, v4

    move-object/from16 v102, v6

    move-object/from16 v103, v7

    move-object/from16 v104, v8

    move-object/from16 v108, v12

    move/from16 v111, v16

    move-object/from16 v112, v17

    move-object/from16 v113, v18

    move/from16 v5, v20

    move/from16 v7, v21

    move/from16 v6, v22

    move-object/from16 v1, v23

    move/from16 v118, v24

    move-object/from16 v119, v25

    move/from16 v120, v26

    move/from16 v121, v27

    move/from16 v122, v28

    move/from16 v123, v29

    move/from16 v124, v30

    move/from16 v125, v31

    move/from16 v126, v32

    move/from16 v127, v33

    move/from16 v128, v34

    move/from16 v129, v35

    move/from16 v130, v36

    move/from16 v131, v37

    move/from16 v132, v38

    move/from16 v192, v39

    move-object/from16 v4, v40

    move/from16 v135, v41

    move/from16 v137, v42

    move/from16 v169, v43

    move/from16 v171, v44

    move-object/from16 v138, v45

    move/from16 v139, v46

    move/from16 v140, v47

    move/from16 v141, v48

    move/from16 v142, v49

    move/from16 v134, v50

    move/from16 v143, v51

    move/from16 v136, v52

    move/from16 v12, v53

    move/from16 v148, v54

    move-object/from16 v157, v55

    move/from16 v170, v56

    move-object/from16 v158, v57

    move-object/from16 v110, v58

    move-object/from16 v159, v59

    move/from16 v161, v60

    move/from16 v162, v61

    move/from16 v163, v62

    move/from16 v164, v63

    move-object/from16 v146, v64

    move/from16 v3, v65

    move/from16 v180, v66

    move/from16 v167, v67

    move/from16 v172, v68

    move/from16 v173, v69

    move/from16 v174, v70

    move/from16 v175, v71

    move/from16 v166, v72

    move/from16 v179, v73

    move/from16 v176, v74

    move/from16 v147, v75

    move-object/from16 v182, v76

    move-object/from16 v168, v77

    move/from16 v183, v78

    move/from16 v184, v79

    move/from16 v185, v80

    move-object/from16 v178, v81

    move/from16 v181, v82

    move/from16 v16, v83

    move/from16 v190, v85

    move-object/from16 v109, v92

    move/from16 v8, v93

    move/from16 v191, v97

    move/from16 v133, v98

    move-object/from16 v101, v99

    move/from16 v177, v100

    move/from16 v99, v19

    move-object/from16 v98, v89

    goto/16 :goto_8

    :cond_6
    move-object/from16 v1, v93

    move/from16 v193, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v92

    move-object/from16 v92, v84

    move/from16 v84, v81

    move-object/from16 v81, v87

    move/from16 v87, v85

    move/from16 v85, v82

    move/from16 v82, v79

    move-object/from16 v79, v77

    move/from16 v77, v73

    move/from16 v73, v70

    move/from16 v70, v67

    move/from16 v67, v64

    move/from16 v64, v61

    move-object/from16 v61, v75

    move/from16 v75, v72

    move/from16 v72, v69

    move/from16 v69, v66

    move/from16 v66, v63

    move/from16 v63, v60

    move/from16 v60, v57

    move/from16 v57, v54

    move/from16 v54, v51

    move/from16 v51, v48

    move/from16 v48, v45

    move/from16 v45, v42

    move/from16 v42, v39

    move/from16 v39, v36

    move/from16 v36, v33

    move/from16 v33, v30

    move/from16 v30, v27

    move/from16 v27, v23

    move/from16 v23, v19

    move-object/from16 v19, v58

    move/from16 v58, v55

    move/from16 v55, v52

    move/from16 v52, v49

    move-object/from16 v49, v46

    move/from16 v46, v43

    move/from16 v43, v40

    move/from16 v40, v37

    move/from16 v37, v34

    move/from16 v34, v31

    move/from16 v31, v28

    move-object/from16 v28, v25

    move/from16 v25, v21

    move-object/from16 v21, v17

    move/from16 v17, v3

    move/from16 v3, v24

    move/from16 v24, v20

    move/from16 v20, v193

    move/from16 v194, v22

    move-object/from16 v22, v18

    move-object/from16 v18, v89

    move/from16 v89, v86

    move/from16 v86, v83

    move/from16 v83, v80

    move/from16 v80, v78

    move/from16 v78, v74

    move/from16 v74, v71

    move/from16 v71, v68

    move/from16 v68, v65

    move/from16 v65, v62

    move-object/from16 v62, v59

    move-object/from16 v59, v56

    move-object/from16 v56, v53

    move/from16 v53, v50

    move/from16 v50, v47

    move/from16 v47, v44

    move/from16 v44, v41

    move/from16 v41, v38

    move/from16 v38, v35

    move/from16 v35, v32

    move/from16 v32, v29

    move/from16 v29, v26

    move/from16 v26, v194

    move/from16 v191, v3

    move-object/from16 v101, v5

    move-object/from16 v102, v6

    move-object/from16 v103, v7

    move-object/from16 v104, v8

    move-object/from16 v108, v12

    move-object/from16 v98, v16

    move/from16 v99, v17

    move-object/from16 v109, v18

    move-object/from16 v110, v19

    move/from16 v111, v20

    move-object/from16 v112, v21

    move-object/from16 v113, v22

    move/from16 v5, v23

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v118, v27

    move-object/from16 v119, v28

    move/from16 v120, v29

    move/from16 v121, v30

    move/from16 v122, v31

    move/from16 v123, v32

    move/from16 v124, v33

    move/from16 v125, v34

    move/from16 v126, v35

    move/from16 v127, v36

    move/from16 v128, v37

    move/from16 v129, v38

    move/from16 v130, v39

    move/from16 v131, v40

    move/from16 v132, v41

    move/from16 v133, v42

    move/from16 v134, v43

    move/from16 v135, v44

    move/from16 v136, v45

    move/from16 v137, v46

    move/from16 v169, v47

    move/from16 v171, v48

    move-object/from16 v138, v49

    move/from16 v139, v50

    move/from16 v140, v51

    move/from16 v141, v52

    move/from16 v142, v53

    move/from16 v143, v54

    move/from16 v12, v55

    move-object/from16 v146, v56

    move/from16 v147, v57

    move/from16 v148, v58

    move-object/from16 v157, v59

    move/from16 v170, v60

    move-object/from16 v158, v61

    move-object/from16 v159, v62

    move/from16 v161, v63

    move/from16 v162, v64

    move/from16 v163, v65

    move/from16 v164, v66

    move/from16 v3, v67

    move/from16 v166, v68

    move/from16 v179, v69

    move/from16 v180, v70

    move/from16 v167, v71

    move/from16 v172, v72

    move/from16 v173, v73

    move/from16 v174, v74

    move/from16 v175, v75

    move-object/from16 v178, v76

    move/from16 v177, v77

    move/from16 v176, v78

    move-object/from16 v168, v79

    move/from16 v181, v80

    move-object/from16 v182, v81

    move/from16 v183, v82

    move/from16 v184, v83

    move/from16 v185, v84

    move/from16 v16, v85

    move/from16 v187, v86

    move/from16 v190, v89

    move-object/from16 v188, v92

    move/from16 v144, v96

    const/16 v192, -0x1

    :goto_8
    invoke-interface/range {v182 .. v182}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, v18

    goto :goto_9

    :cond_8
    const-string v0, "launcher_settings"

    move/from16 v18, v3

    move-object/from16 v17, v4

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-virtual {v4, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v3, "wallpaper_choice"

    move/from16 v19, v12

    const-string v12, "dock_opacity"

    if-eqz v90, :cond_10

    if-nez v88, :cond_9

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    move-object/from16 v10, v88

    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    new-instance v0, Ljava/io/File;

    move-object/from16 v20, v11

    const-string v11, "theme_revision"

    move-object/from16 v21, v10

    move-object/from16 v10, v88

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_a
    const-string v11, "absent"

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x40

    cmp-long v22, v22, v24

    if-lez v22, :cond_b

    :cond_a
    move/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v22, v9

    goto :goto_f

    :cond_b
    move-object/from16 v22, v9

    :try_start_7
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move/from16 v23, v7

    move/from16 v24, v8

    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v0, v7

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_c

    new-instance v8, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v25, v13

    :try_start_9
    sget-object v13, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v88, v10

    const/4 v10, 0x0

    :try_start_a
    invoke-direct {v8, v0, v10, v7, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    :goto_b
    move-object v7, v0

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v88, v10

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v88, v10

    move-object/from16 v25, v13

    goto :goto_b

    :cond_c
    move-object/from16 v88, v10

    move-object/from16 v25, v13

    move-object v8, v11

    :goto_c
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_10

    :goto_d
    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v8, v0

    :try_start_d
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :catch_3
    move/from16 v23, v7

    move/from16 v24, v8

    :goto_f
    move-object/from16 v88, v10

    move-object/from16 v25, v13

    :catch_4
    move-object v8, v11

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v91, :cond_d

    invoke-virtual/range {v91 .. v91}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v91 .. v91}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "@"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v91 .. v91}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_11

    :cond_d
    move-object v7, v11

    :goto_11
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "theme_signature"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_f

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-interface {v9, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_e
    invoke-interface {v9, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_12

    :cond_f
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_12

    :cond_10
    move/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v22, v9

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    move-object/from16 v25, v13

    :cond_11
    :goto_12
    invoke-interface {v4, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v7, 0x4

    if-lt v0, v7, :cond_12

    const/4 v7, 0x7

    if-gt v0, v7, :cond_12

    move v5, v0

    :cond_12
    invoke-interface {v4, v14, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_13

    const/4 v7, 0x3

    if-gt v0, v7, :cond_13

    move v6, v0

    :cond_13
    move/from16 v7, v23

    invoke-interface {v4, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v116

    move/from16 v1, v24

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v117

    if-eqz v88, :cond_14

    new-instance v9, Ljava/io/File;

    const-string v0, "wallpaper.jpg"

    move-object/from16 v1, v88

    invoke-direct {v9, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_13

    :cond_14
    move-object/from16 v1, v88

    const/4 v9, 0x0

    :goto_13
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v10, 0x0

    cmp-long v0, v7, v10

    if-gtz v0, :cond_16

    :cond_15
    const/4 v9, 0x0

    :cond_16
    if-eqz v25, :cond_18

    const-string v0, "wallpaper"

    move-object/from16 v13, v25

    const/4 v2, 0x1

    invoke-static {v13, v0, v2}, Lcom/gathin/tvhome/Config;->bool(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_14

    :cond_17
    const/4 v0, 0x0

    goto :goto_15

    :cond_18
    move-object/from16 v13, v25

    :goto_14
    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_19

    const/4 v9, 0x0

    :cond_19
    if-nez v13, :cond_1a

    const/4 v7, 0x0

    const/16 v152, 0x0

    goto :goto_16

    :cond_1a
    const-string v2, "wallpaper_rotation_minutes"

    const/4 v7, 0x0

    const/16 v8, 0x5a0

    invoke-static {v13, v2, v7, v7, v8}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v95

    move/from16 v152, v95

    :goto_16
    if-nez v13, :cond_1b

    move/from16 v153, v7

    goto :goto_17

    :cond_1b
    const-string v2, "wallpaper_dim"

    const/16 v8, 0x5a

    invoke-static {v13, v2, v7, v7, v8}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v2

    move/from16 v153, v2

    :goto_17
    const/16 v2, 0x1e

    const/16 v7, 0x64

    if-nez v13, :cond_1c

    const/16 v8, 0x64

    :goto_18
    const/4 v10, -0x1

    goto :goto_19

    :cond_1c
    invoke-static {v13, v12, v7, v2, v7}, Lcom/gathin/tvhome/Config;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v94

    move/from16 v8, v94

    goto :goto_18

    :goto_19
    invoke-interface {v4, v12, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-lt v10, v2, :cond_1d

    if-gt v10, v7, :cond_1d

    move/from16 v154, v10

    goto :goto_1a

    :cond_1d
    move/from16 v154, v8

    :goto_1a
    const-string v2, "shuffle"

    if-nez v13, :cond_1e

    move-object v7, v2

    goto :goto_1b

    :cond_1e
    const-string v7, "wallpaper_order"

    invoke-static {v13, v7, v2}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1b
    const-string v8, "sequential"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    goto :goto_1c

    :cond_1f
    move-object/from16 v155, v2

    goto :goto_1d

    :cond_20
    :goto_1c
    move-object/from16 v155, v7

    :goto_1d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "wallpapers"

    if-lez v152, :cond_21

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/gathin/tvhome/Sky;->images(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_22

    if-eqz v9, :cond_22

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    const/4 v8, 0x0

    invoke-interface {v4, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_23

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1e

    :cond_23
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/gathin/tvhome/Sky;->images(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_1e
    if-nez v3, :cond_24

    :goto_1f
    move-object v1, v8

    goto :goto_20

    :cond_24
    const-string v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_20

    :cond_25
    invoke-static {v1, v3}, Lcom/gathin/tvhome/Sky;->find(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_26

    if-eqz v9, :cond_26

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move-object v1, v9

    :cond_26
    if-nez v1, :cond_27

    goto :goto_1f

    :cond_27
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_20
    if-eqz v1, :cond_29

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v9, v8

    goto :goto_21

    :cond_28
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/io/File;

    :goto_21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    :cond_29
    move/from16 v149, v0

    move-object/from16 v150, v9

    sget-object v0, Lcom/gathin/tvhome/Festival;->NONE:Lcom/gathin/tvhome/Festival;

    const-string v1, ""

    if-nez v13, :cond_2b

    :catch_5
    :cond_2a
    :goto_22
    move-object/from16 v156, v0

    goto/16 :goto_28

    :cond_2b
    const-string v3, "festival"

    invoke-static {v13, v3, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "festival_until"

    invoke-static {v13, v4, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "greeting"

    invoke-static {v13, v7, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "accent_color"

    invoke-static {v13, v9, v1}, Lcom/gathin/tvhome/Config;->string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v3, :cond_2c

    move-object v3, v1

    goto :goto_23

    :cond_2c
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :goto_23
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x28

    if-le v10, v11, :cond_2d

    goto :goto_22

    :cond_2d
    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2e

    :try_start_e
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_e
    .catch Ljava/time/format/DateTimeParseException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_24

    :cond_2e
    move-object v0, v8

    :goto_24
    if-nez v7, :cond_2f

    move-object v4, v1

    goto :goto_25

    :cond_2f
    invoke-static {v7, v1}, Lcom/gathin/tvhome/Cards;->cleanLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_25
    new-instance v7, Lcom/gathin/tvhome/Festival;

    if-nez v9, :cond_30

    :goto_26
    const/4 v9, 0x0

    goto :goto_27

    :cond_30
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "#[0-9A-Fa-f]{6}"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_31

    goto :goto_26

    :cond_31
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    or-int v9, v9, v96

    :goto_27
    invoke-direct {v7, v3, v0, v4, v9}, Lcom/gathin/tvhome/Festival;-><init>(Ljava/lang/String;Ljava/time/LocalDate;Ljava/lang/String;I)V

    move-object v0, v7

    goto :goto_22

    :goto_28
    new-instance v0, Lcom/gathin/tvhome/Config;

    invoke-static/range {v22 .. v22}, Lcom/gathin/tvhome/Config;->packageMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v105

    invoke-static/range {v21 .. v21}, Lcom/gathin/tvhome/Config;->packageMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v106

    invoke-static/range {v20 .. v20}, Lcom/gathin/tvhome/Config;->packageMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v107

    const/4 v3, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v114

    const/4 v4, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v115

    move/from16 v6, v19

    const/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v145

    if-nez v13, :cond_32

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v160, v1

    :goto_29
    move/from16 v4, v18

    const/4 v1, 0x0

    goto/16 :goto_30

    :cond_32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "race_calendar"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_33

    goto/16 :goto_2f

    :cond_33
    const/4 v6, 0x0

    :goto_2a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3a

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_34

    move-object v9, v8

    goto :goto_2b

    :cond_34
    const-string v9, "sessions"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    :goto_2b
    if-nez v9, :cond_35

    goto :goto_2e

    :cond_35
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_2c
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    const-string v13, "name"

    if-ge v11, v12, :cond_38

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_36

    goto :goto_2d

    :cond_36
    invoke-virtual {v12, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    :try_start_f
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_37

    new-instance v14, Lcom/gathin/tvhome/RaceWeekend$Session;

    const-string v15, "start"

    invoke-virtual {v12, v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v12

    invoke-direct {v14, v13, v12}, Lcom/gathin/tvhome/RaceWeekend$Session;-><init>(Ljava/lang/String;Ljava/time/Instant;)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/time/format/DateTimeParseException; {:try_start_f .. :try_end_f} :catch_6

    :catch_6
    :cond_37
    :goto_2d
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c

    :cond_38
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_39

    new-instance v9, Lcom/gathin/tvhome/RaceWeekend$Race;

    const-string v11, "round"

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "Grand Prix"

    invoke-virtual {v7, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "place"

    invoke-virtual {v7, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v11, v12, v7, v10}, Lcom/gathin/tvhome/RaceWeekend$Race;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    :goto_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_3a
    :goto_2f
    move-object/from16 v160, v4

    goto/16 :goto_29

    :goto_30
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v165

    move/from16 v5, v16

    const/16 v4, 0x5a

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v186

    if-eqz v87, :cond_3b

    if-eqz v125, :cond_3b

    move/from16 v189, v3

    goto :goto_31

    :cond_3b
    move/from16 v189, v1

    :goto_31
    move-object/from16 v97, v0

    move-object/from16 v100, v17

    move-object/from16 v151, v2

    invoke-direct/range {v97 .. v192}, Lcom/gathin/tvhome/Config;-><init>(Ljava/util/List;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;ZZZZZZZZZZZZZZIZZZLjava/lang/String;ZZZZZII[IZZZLjava/io/File;Ljava/util/ArrayList;IIILjava/lang/String;Lcom/gathin/tvhome/Festival;[ILjava/util/List;Ljava/lang/String;Ljava/util/List;ZZZZIZZLjava/lang/String;ZZZZZZZIILjava/util/Map;ZZZLjava/util/List;ZZZIZLjava/lang/String;ZZZI)V

    return-object v0
.end method

.method public static moods(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/gathin/tvhome/Sky;->ALL:[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v7, v2

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gathin/tvhome/ThemeFiles;->collectionImage(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static packageMap(Ljava/util/List;)Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static read(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x10000

    cmp-long v1, v1, v3

    const-string v2, "ignoring "

    const-string v3, "TvHome.Config"

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": larger than 64 KB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v5, v4, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_2

    sub-int v8, v4, v7

    invoke-virtual {v1, v5, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_2

    add-int/2addr v7, v8

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v5, "\ufeff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    return-object v0
.end method

.method public static string(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public static stringList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/json/JSONArray;

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    check-cast p0, Lorg/json/JSONArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method
