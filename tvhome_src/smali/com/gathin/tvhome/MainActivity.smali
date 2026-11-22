.class public Lcom/gathin/tvhome/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/gathin/tvhome/AppAdapter$TileListener;


# static fields
.field public static COLUMNS:I = 0x4

.field public static lastFocused:I

.field public static lastFocusedKey:Ljava/lang/String;

.field public static lastPetalShower:Ljava/time/LocalDate;


# instance fields
.field public adapter:Lcom/gathin/tvhome/AppAdapter;

.field public advancedEffects:Z

.field public ambient:Landroid/view/View;

.field public ambientAnimator:Landroid/animation/ValueAnimator;

.field public ambientColor:I

.field public ambientGlow:Z

.field public animations:Z

.field public appGlow:Z

.field public appLibrary:Lcom/gathin/tvhome/AppLibraryDialog;

.field public appLibraryEnabled:Z

.field public appLibrarySelection:Z

.field public bell:Lcom/gathin/tvhome/BellDrawable;

.field public bootToLiveTv:Z

.field public btnBluetooth:Landroid/widget/TextView;

.field public btnInputs:Landroid/view/View;

.field public btnLibraryTop:Landroid/view/View;

.field public btnReorder:Landroid/view/View;

.field public btnWifi:Landroid/widget/TextView;

.field public cardPrompt:Landroid/app/Dialog;

.field public cards:Ljava/util/List;

.field public cinematic:Z

.field public cinematicWhiteFocus:Z

.field public clockBlock:Landroid/view/View;

.field public final clockCheck:Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

.field public coocaaSources:Z

.field public cpuIdlePrev:J

.field public cpuTotalPrev:J

.field public density:F

.field public diya:Lcom/gathin/tvhome/DiyaDrawable;

.field public dockApps:Ljava/util/List;

.field public dockEditAppKey:Ljava/lang/String;

.field public dockEditSlot:I

.field public dockEditing:Z

.field public dockInSession:Ljava/util/HashSet;

.field public dockRow:Z

.field public dockedAtStart:I

.field public festival:Lcom/gathin/tvhome/Festival;

.field public festive:Z

.field public fillDockLeavesSlots:Z

.field public focusOvershoot:Z

.field public glass:Lcom/gathin/tvhome/GlassView;

.field public glassAccent:I

.field public glassCardW:I

.field public glassScrollShift:F

.field public glassScrollShiftX:F

.field public glassShown:Z

.field public glowStyle:Ljava/lang/String;

.field public greeting:Landroid/widget/TextView;

.field public greetingColor:I

.field public greetingName:Ljava/lang/String;

.field public grid:Landroidx/recyclerview/widget/RecyclerView;

.field public final handler:Landroid/os/Handler;

.field public hero:Landroid/view/View;

.field public heroArt:Landroid/widget/ImageView;

.field public heroArtAlpha:F

.field public final heroArtCache:Ljava/util/HashMap;

.field public heroArtKey:Ljava/lang/String;

.field public heroDots:Landroid/widget/LinearLayout;

.field public heroDotsShown:Z

.field public heroMeta:Landroid/widget/TextView;

.field public heroName:Landroid/widget/TextView;

.field public heroShown:Z

.field public hiddenApps:Ljava/util/Set;

.field public iconOnlyButtons:Z

.field public idleClockMs:J

.field public idlePrev:J

.field public inputAction:Ljava/lang/String;

.field public final inputCallback:Lcom/gathin/tvhome/MainActivity$2;

.field public inputUriScheme:Ljava/lang/String;

.field public launcherSettingsButton:Z

.field public libraryFocusPending:Z

.field public libraryFromTopBar:Z

.field public liveTvAction:Ljava/lang/String;

.field public liveTvInputId:Ljava/lang/String;

.field public liveTvPkg:Ljava/lang/String;

.field public lunar:Z

.field public lunarDate:Landroid/widget/TextView;

.field public lunarOffset:I

.field public marigold:Lcom/gathin/tvhome/MarigoldDrawable;

.field public final minuteTick:Lcom/gathin/tvhome/ClockScene$1;

.field public moduleCards:Z

.field public movingKey:Ljava/lang/String;

.field public final networkCallback:Lcom/gathin/tvhome/MainActivity$1;

.field public openOnStartChoice:Z

.field public openPopup:Landroid/widget/PopupWindow;

.field public orderAtStart:Ljava/util/ArrayList;

.field public final packageFilter:Landroid/content/IntentFilter;

.field public final packageReceiver:Lcom/gathin/tvhome/MainActivity$4;

.field public packageSequence:I

.field public pendingFocusScroll:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field public pillsShown:Z

.field public procStatDead:Z

.field public promptsPaused:Z

.field public raceCalendar:Ljava/util/List;

.field public raceHeadline:Landroid/widget/TextView;

.field public raceKicker:Landroid/widget/TextView;

.field public racePanel:Landroid/view/View;

.field public raceSessions:Landroid/widget/TextView;

.field public reducedMotion:Z

.field public reordering:Z

.field public final revealRect:Landroid/graphics/Rect;

.field public root:Landroid/widget/FrameLayout;

.field public rtlAppGrid:Z

.field public settingsKeycodes:[I

.field public settingsRecreationPending:Z

.field public settingsRevision:J

.field public shamsi:Z

.field public shamsiDate:Landroid/widget/TextView;

.field public final showIdleClock:Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

.field public showInputsMenuRow:Z

.field public showInputsPill:Z

.field public showStats:Z

.field public singleRow:Z

.field public sky:Lcom/gathin/tvhome/SkyView;

.field public sourcePanelAction:Ljava/lang/String;

.field public sourcePanelExtra:Ljava/lang/String;

.field public sourcePanelService:Ljava/lang/String;

.field public springX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public springY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public started:Z

.field public stats:Landroid/widget/TextView;

.field public volatile statsBg:Landroid/os/Handler;

.field public statsThread:Landroid/os/HandlerThread;

.field public stopped:Z

.field public tileMenuEnabled:Z

.field public final tileRect:Landroid/graphics/Rect;

.field public final tileRefresh:Lcom/gathin/tvhome/TileRefresh;

.field public tilesReady:Z

.field public final timeFilter:Landroid/content/IntentFilter;

.field public final timeReceiver:Lcom/gathin/tvhome/MainActivity$4;

.field public final topAppButtons:Ljava/util/ArrayList;

.field public topMenu:Z

.field public vpnApp:Ljava/lang/String;

.field public final vpnCallback:Lcom/gathin/tvhome/MainActivity$3;

.field public wallPrev:J

.field public wallpaperPlayer:Lcom/gathin/tvhome/WallpaperPlayer;

.field public wifiIcon:I

.field public wifiIconOnly:Z

.field public wifiNoInternetTint:Landroid/content/res/ColorStateList;

.field public wifiOfflineTint:Landroid/content/res/ColorStateList;

.field public wifiOnlineTint:Landroid/content/res/ColorStateList;

.field public wifiPlainTint:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->showIdleClock:Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->heroDotsShown:Z

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/gathin/tvhome/MainActivity;->heroArtAlpha:F

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->heroArtCache:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/gathin/tvhome/MainActivity;->ambientColor:I

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->showInputsPill:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->greetingName:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->tileRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->revealRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->settingsKeycodes:[I

    sget-object v2, Lcom/gathin/tvhome/Festival;->NONE:Lcom/gathin/tvhome/Festival;

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->festival:Lcom/gathin/tvhome/Festival;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->hiddenApps:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->cards:Ljava/util/List;

    new-instance v2, Lcom/gathin/tvhome/TileRefresh;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, v2, Lcom/gathin/tvhome/TileRefresh;->stale:Z

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->tileRefresh:Lcom/gathin/tvhome/TileRefresh;

    iput v1, p0, Lcom/gathin/tvhome/MainActivity;->dockEditSlot:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/MainActivity$1;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->networkCallback:Lcom/gathin/tvhome/MainActivity$1;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/MainActivity$2;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->inputCallback:Lcom/gathin/tvhome/MainActivity$2;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/MainActivity$3;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->vpnCallback:Lcom/gathin/tvhome/MainActivity$3;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->packageFilter:Landroid/content/IntentFilter;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/gathin/tvhome/MainActivity$4;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->packageReceiver:Lcom/gathin/tvhome/MainActivity$4;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->timeFilter:Landroid/content/IntentFilter;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/gathin/tvhome/MainActivity$4;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->timeReceiver:Lcom/gathin/tvhome/MainActivity$4;

    new-instance v1, Lcom/gathin/tvhome/ClockScene$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/gathin/tvhome/ClockScene$1;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->minuteTick:Lcom/gathin/tvhome/ClockScene$1;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/gathin/tvhome/MainActivity;->cpuTotalPrev:J

    iput-wide v1, p0, Lcom/gathin/tvhome/MainActivity;->cpuIdlePrev:J

    iput-wide v1, p0, Lcom/gathin/tvhome/MainActivity;->idlePrev:J

    iput-wide v1, p0, Lcom/gathin/tvhome/MainActivity;->wallPrev:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->topAppButtons:Ljava/util/ArrayList;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->clockCheck:Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->showInputsMenuRow:Z

    return-void
.end method

.method public static readFirstLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const p3, 0x7f0900d9

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900c2

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const p4, 0x7f090055

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-nez p5, :cond_0

    const p5, 0x7f10001a

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x8

    if-ne p5, v1, :cond_1

    const p5, 0x7f100058

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance p3, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;

    const/4 p4, 0x1

    invoke-direct {p3, p2, p6, p4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;-><init>(Landroid/widget/PopupWindow;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addSeparator(Landroid/widget/LinearLayout;)V
    .locals 5

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x1fffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    float-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final addSettingsMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    new-instance p3, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;

    invoke-direct {p3, p2, p4, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;-><init>(Landroid/widget/PopupWindow;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, 0x1

    new-array p3, p3, [Z

    aput-boolean v2, p3, v2

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda67;

    invoke-direct {v1, p3, p2, p4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda67;-><init>([ZLandroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final beginReorder()Z
    .locals 3

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v0}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->dockInSession:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget v1, v0, Lcom/gathin/tvhome/AppAdapter;->emptySlots:I

    if-lez v1, :cond_1

    iget v0, v0, Lcom/gathin/tvhome/AppAdapter;->docked:I

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/gathin/tvhome/AppAdapter;->dockSize:I

    :goto_0
    iput v0, p0, Lcom/gathin/tvhome/MainActivity;->dockedAtStart:I

    :goto_1
    iget v0, p0, Lcom/gathin/tvhome/MainActivity;->dockedAtStart:I

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v1}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->dockInSession:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v1, v2}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gathin/tvhome/AppAdapter;->reordering:Z

    iget v0, v0, Lcom/gathin/tvhome/AppAdapter;->emptySlots:I

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->reloadTiles()V

    :cond_3
    iput-boolean v1, p0, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v0}, Lcom/gathin/tvhome/AppAdapter;->movableKeys()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->orderAtStart:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    const v2, -0x913e01

    invoke-virtual {v0, v2}, Lcom/gathin/tvhome/GlassView;->setAccent(I)V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->btnReorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    return v1
.end method

.method public final cancelPendingFocusScroll()V
    .locals 2

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->pendingFocusScroll:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->pendingFocusScroll:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_1
    return-void
.end method

.method public final cpuPercent()I
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/gathin/tvhome/MainActivity;->procStatDead:Z

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_9

    const-string v1, "/proc/stat"

    invoke-static {v1}, Lcom/gathin/tvhome/MainActivity;->readFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v10, -0x2

    if-eqz v1, :cond_1

    const-string v11, "cpu"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v11, "\\s+"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v11, v1

    const/4 v12, 0x5

    if-ge v11, v12, :cond_2

    :catch_0
    :cond_1
    :goto_0
    move v2, v10

    goto/16 :goto_5

    :cond_2
    :try_start_0
    aget-object v11, v1, v9

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const/4 v11, 0x2

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    const/4 v11, 0x3

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/4 v11, 0x4

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    array-length v11, v1

    if-le v11, v12, :cond_3

    aget-object v11, v1, v12

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_1

    :cond_3
    move-wide v11, v7

    :goto_1
    array-length v6, v1

    const/4 v9, 0x6

    if-le v6, v9, :cond_4

    aget-object v6, v1, v9

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    goto :goto_2

    :cond_4
    move-wide/from16 v21, v7

    :goto_2
    array-length v6, v1

    const/4 v9, 0x7

    if-le v6, v9, :cond_5

    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    goto :goto_3

    :cond_5
    move-wide/from16 v23, v7

    :goto_3
    add-long/2addr v13, v15

    add-long v13, v13, v17

    add-long v13, v13, v19

    add-long/2addr v13, v11

    add-long v13, v13, v21

    add-long v13, v13, v23

    add-long v11, v19, v11

    iget-wide v2, v0, Lcom/gathin/tvhome/MainActivity;->cpuTotalPrev:J

    cmp-long v9, v2, v7

    if-gez v9, :cond_6

    iput-wide v13, v0, Lcom/gathin/tvhome/MainActivity;->cpuTotalPrev:J

    iput-wide v11, v0, Lcom/gathin/tvhome/MainActivity;->cpuIdlePrev:J

    :goto_4
    const/4 v2, -0x1

    goto :goto_5

    :cond_6
    sub-long v2, v13, v2

    iget-wide v4, v0, Lcom/gathin/tvhome/MainActivity;->cpuIdlePrev:J

    sub-long v4, v11, v4

    iput-wide v13, v0, Lcom/gathin/tvhome/MainActivity;->cpuTotalPrev:J

    iput-wide v11, v0, Lcom/gathin/tvhome/MainActivity;->cpuIdlePrev:J

    cmp-long v9, v2, v7

    if-gtz v9, :cond_7

    goto :goto_4

    :cond_7
    sub-long v4, v2, v4

    long-to-double v4, v4

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v11

    long-to-double v2, v2

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    if-eq v2, v10, :cond_8

    return v2

    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/gathin/tvhome/MainActivity;->procStatDead:Z

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/gathin/tvhome/MainActivity;->idlePrev:J

    goto :goto_6

    :cond_9
    move v2, v9

    :goto_6
    move-wide v9, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    const/16 v5, 0x8

    if-ge v3, v5, :cond_d

    move-wide v11, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8
    if-ge v9, v5, :cond_b

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "/sys/devices/system/cpu/cpu"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "/cpuidle/state"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "/time"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/gathin/tvhome/MainActivity;->readFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a

    goto :goto_9

    :cond_a
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-long/2addr v11, v13

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    goto :goto_8

    :catch_1
    :cond_b
    :goto_9
    if-nez v10, :cond_c

    move-wide v9, v11

    goto :goto_a

    :cond_c
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-wide v9, v11

    goto :goto_7

    :cond_d
    :goto_a
    if-nez v4, :cond_e

    :goto_b
    const/4 v6, -0x1

    goto :goto_c

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v11, 0x3e8

    mul-long/2addr v2, v11

    iget-wide v11, v0, Lcom/gathin/tvhome/MainActivity;->idlePrev:J

    cmp-long v5, v11, v7

    if-gez v5, :cond_f

    iput-wide v9, v0, Lcom/gathin/tvhome/MainActivity;->idlePrev:J

    iput-wide v2, v0, Lcom/gathin/tvhome/MainActivity;->wallPrev:J

    goto :goto_b

    :cond_f
    sub-long v11, v9, v11

    iget-wide v13, v0, Lcom/gathin/tvhome/MainActivity;->wallPrev:J

    sub-long v13, v2, v13

    int-to-long v4, v4

    mul-long/2addr v13, v4

    iput-wide v9, v0, Lcom/gathin/tvhome/MainActivity;->idlePrev:J

    iput-wide v2, v0, Lcom/gathin/tvhome/MainActivity;->wallPrev:J

    cmp-long v2, v13, v7

    if-gtz v2, :cond_10

    goto :goto_b

    :cond_10
    sub-long v2, v13, v11

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    long-to-double v4, v13

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_c
    return v6
.end method

.method public final decideCard(Lcom/gathin/tvhome/Cards$Card;Z)V
    .locals 1

    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda75;

    invoke-direct {v0, p0, p1, p2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda75;-><init>(Lcom/gathin/tvhome/MainActivity;Lcom/gathin/tvhome/Cards$Card;Z)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/gathin/tvhome/Sky;->run(Lcom/gathin/tvhome/CardFeature$Step;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f100009

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gathin/tvhome/MainActivity;->promptsPaused:Z

    :cond_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->reloadTiles()V

    return-void
.end method

.method public final dimOthers()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/gathin/tvhome/MainActivity;->tileAlpha(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    invoke-static {p0}, Lcom/gathin/tvhome/AppleTvScreensaver;->onUserActivity(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
    move-result v1
    invoke-static {p0, v0, v1}, Lcom/gathin/tvhome/TvKeyHandler;->handleYouTubeKeyFromActivity(Lcom/gathin/tvhome/MainActivity;II)Z
    move-result v0
    if-eqz v0, :cond_main_yt_continue
    const/4 v0, 0x1
    return v0

    :cond_main_yt_continue

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
    move-result v1
    invoke-static {p0, v0, v1}, Lcom/gathin/tvhome/TvKeyHandler;->handleVoiceKeyFromActivity(Landroid/app/Activity;II)Z
    move-result v0
    if-eqz v0, :cond_main_voice_continue
    const/4 v0, 0x1
    return v0

    :cond_main_voice_continue

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->settingsKeycodes:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget v5, v0, v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-eq v6, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gathin/tvhome/LauncherSettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x2a

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return v4

    :cond_2
    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->tileMenuEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->openPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->cardPrompt:Landroid/app/Dialog;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->focusedTilePosition()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v1, v1, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v3, v0}, Lcom/gathin/tvhome/AppAdapter;->packageAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/gathin/tvhome/MainActivity;->onTileLongPress(Landroid/view/View;I)V

    :cond_3
    return v4

    :cond_4
    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_5
    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->dockEditing:Z

    const/16 v1, 0x6f

    const/4 v3, 0x4

    const/16 v5, 0xa0

    const/16 v6, 0x42

    const/16 v7, 0x17

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-eq v8, v7, :cond_7

    if-eq v8, v6, :cond_7

    if-ne v8, v5, :cond_8

    :cond_7
    move v2, v4

    :cond_8
    if-eq v8, v3, :cond_e

    if-ne v8, v1, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->focusedTilePosition()I

    move-result v1

    if-eqz v2, :cond_d

    if-ltz v1, :cond_d

    if-nez v0, :cond_11

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p1}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result p1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->dockEditAppKey:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->dockEditAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gathin/tvhome/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_a

    invoke-virtual {p0, v1, p1}, Lcom/gathin/tvhome/MainActivity;->swapIntoDock(II)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    goto :goto_3

    :cond_b
    iget v0, p0, Lcom/gathin/tvhome/MainActivity;->dockEditSlot:I

    if-gez v0, :cond_c

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_11

    iput v1, p0, Lcom/gathin/tvhome/MainActivity;->dockEditSlot:I

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->dimOthers()V

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    sub-int/2addr p1, v4

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    const p1, 0x7f10001f

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_c
    if-ge v1, p1, :cond_11

    invoke-virtual {p0, v0, v1}, Lcom/gathin/tvhome/MainActivity;->swapIntoDock(II)V

    goto :goto_3

    :cond_d
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_3

    :cond_e
    :goto_2
    if-nez v0, :cond_11

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->dockEditAppKey:Ljava/lang/String;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    goto :goto_3

    :cond_f
    iget p1, p0, Lcom/gathin/tvhome/MainActivity;->dockEditSlot:I

    if-ltz p1, :cond_10

    const/4 v0, -0x1

    iput v0, p0, Lcom/gathin/tvhome/MainActivity;->dockEditSlot:I

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->dimOthers()V

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    goto :goto_3

    :cond_10
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    :cond_11
    :goto_3
    return v4

    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    move v0, v4

    goto :goto_4

    :cond_13
    move v0, v2

    :goto_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-eq v8, v7, :cond_15

    if-eq v8, v6, :cond_15

    if-ne v8, v5, :cond_14

    goto :goto_5

    :cond_14
    move v5, v2

    goto :goto_6

    :cond_15
    :goto_5
    move v5, v4

    :goto_6
    if-eq v8, v3, :cond_16

    if-ne v8, v1, :cond_17

    :cond_16
    move v2, v4

    :cond_17
    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->movingKey:Ljava/lang/String;

    if-eqz v1, :cond_28

    const/4 v3, 0x0

    packed-switch v8, :pswitch_data_0

    if-nez v5, :cond_19

    if-eqz v2, :cond_18

    goto :goto_7

    :cond_18
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_19
    :goto_7
    if-nez v0, :cond_1a

    iput-object v3, p0, Lcom/gathin/tvhome/MainActivity;->movingKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->dimOthers()V

    :cond_1a
    return v4

    :pswitch_0
    if-eqz v0, :cond_27

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p1, v1}, Lcom/gathin/tvhome/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v0}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v0

    if-ltz p1, :cond_26

    if-lt p1, v0, :cond_1b

    goto/16 :goto_b

    :cond_1b
    iget-boolean v1, p0, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    const/16 v2, 0x13

    if-eqz v1, :cond_1c

    if-eq v8, v2, :cond_27

    const/16 v1, 0x14

    if-ne v8, v1, :cond_1c

    goto/16 :goto_c

    :cond_1c
    const/16 v1, 0x15

    if-ne v8, v1, :cond_1f

    iget-boolean v1, p0, Lcom/gathin/tvhome/MainActivity;->rtlAppGrid:Z

    if-eqz v1, :cond_1e

    :cond_1d
    add-int/lit8 v1, p1, 0x1

    goto :goto_9

    :cond_1e
    :goto_8
    add-int/lit8 v1, p1, -0x1

    goto :goto_9

    :cond_1f
    const/16 v1, 0x16

    if-ne v8, v1, :cond_20

    iget-boolean v1, p0, Lcom/gathin/tvhome/MainActivity;->rtlAppGrid:Z

    if-eqz v1, :cond_1d

    goto :goto_8

    :cond_20
    if-ne v8, v2, :cond_21

    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    sub-int v1, p1, v1

    goto :goto_9

    :cond_21
    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    add-int v2, p1, v1

    if-ge v2, v0, :cond_22

    move v1, v2

    goto :goto_9

    :cond_22
    div-int v2, p1, v1

    add-int/lit8 v3, v0, -0x1

    div-int v1, v3, v1

    if-ge v2, v1, :cond_23

    move v1, v3

    goto :goto_9

    :cond_23
    move v1, p1

    :goto_9
    if-ltz v1, :cond_27

    if-ge v1, v0, :cond_27

    if-ne v1, p1, :cond_24

    goto :goto_c

    :cond_24
    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda29;-><init>(Lcom/gathin/tvhome/MainActivity;II)V

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->keepScroll(Ljava/lang/Runnable;)V

    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    if-ge v1, p1, :cond_25

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->dockInSession:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->movingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_25
    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->dockInSession:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->movingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_a
    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/gathin/tvhome/MainActivity$15;

    invoke-direct {v0, p0, v1}, Lcom/gathin/tvhome/MainActivity$15;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_c

    :cond_26
    :goto_b
    iput-object v3, p0, Lcom/gathin/tvhome/MainActivity;->movingKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->dimOthers()V

    :cond_27
    :goto_c
    return v4

    :cond_28
    if-eqz v2, :cond_2a

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    :cond_29
    return v4

    :cond_2a
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->focusedTilePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v5, :cond_2c

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090034

    if-ne v2, v3, :cond_2c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_2b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->onLibraryRequested()V

    :cond_2b
    return v4

    :cond_2c
    if-eqz v5, :cond_2f

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2f

    if-nez v0, :cond_2e

    if-ltz v1, :cond_2e

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p1}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result p1

    if-lt v1, p1, :cond_2d

    goto :goto_d

    :cond_2d
    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p1, v1}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity;->movingKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->dimOthers()V

    :cond_2e
    :goto_d
    return v4

    :cond_2f
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final dropIn(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotY(F)V

    const v1, 0x3f6b851f    # 0.92f

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    const/high16 v1, -0x3f000000    # -8.0f

    iget v2, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v2, v1

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2, v1, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean p2, p0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-eqz p2, :cond_0

    const-wide/16 p2, 0x5a

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0xdc

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const p3, 0x3fcccccd    # 1.6f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final endReorder()V
    .locals 13

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->dockEditing:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/gathin/tvhome/MainActivity;->dockEditSlot:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->dockEditAppKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->movingKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->dimOthers()V

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iput-boolean v0, v3, Lcom/gathin/tvhome/AppAdapter;->reordering:Z

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    iget-boolean v4, p0, Lcom/gathin/tvhome/MainActivity;->festive:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/gathin/tvhome/MainActivity;->festival:Lcom/gathin/tvhome/Festival;

    iget v4, v4, Lcom/gathin/tvhome/Festival;->accent:I

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, -0x4dc4

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/gathin/tvhome/GlassView;->setAccent(I)V

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->btnReorder:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setActivated(Z)V

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v3}, Lcom/gathin/tvhome/AppAdapter;->movableKeys()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/gathin/tvhome/MainActivity;->orderAtStart:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->orderAtStart:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lcom/gathin/tvhome/MainActivity;->fillDockLeavesSlots:Z

    if-eqz v5, :cond_7

    sget v5, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->dockInSession:Ljava/util/HashSet;

    move v7, v0

    move v8, v7

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v7, v9, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v8, v8, 0x1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    sget v5, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->dockInSession:Ljava/util/HashSet;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-ge v10, v5, :cond_5

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v7

    goto :goto_3

    :cond_5
    move-object v12, v9

    :goto_3
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v3, v7

    goto :goto_4

    :cond_7
    move v8, v1

    :goto_4
    iput-object v2, p0, Lcom/gathin/tvhome/MainActivity;->dockInSession:Ljava/util/HashSet;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/gathin/tvhome/MainActivity;->fillDockLeavesSlots:Z

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/gathin/tvhome/MainActivity;->dockedAtStart:I

    if-eq v8, v4, :cond_b

    :cond_8
    new-instance v4, Lcom/gathin/tvhome/Order;

    iget-object v5, p0, Lcom/gathin/tvhome/MainActivity;->dockApps:Ljava/util/List;

    const-string v6, ","

    invoke-static {v6, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, v8}, Lcom/gathin/tvhome/Order;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "order.txt"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Landroid/util/AtomicFile;

    invoke-direct {v7, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-static {v4}, Lcom/gathin/tvhome/Order;->encode(Lcom/gathin/tvhome/Order;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v7, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->dockApps:Ljava/util/List;

    invoke-static {v4, v2}, Lcom/gathin/tvhome/Order;->ranks(Lcom/gathin/tvhome/Order;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->dockApps:Ljava/util/List;

    invoke-static {v6, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    iget v1, v4, Lcom/gathin/tvhome/Order;->docked:I

    :goto_5
    iput-object v2, v0, Lcom/gathin/tvhome/AppAdapter;->savedRanks:Ljava/util/Map;

    iput v1, v0, Lcom/gathin/tvhome/AppAdapter;->savedDocked:I

    goto :goto_6

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cannot write "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TvHome.Order"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a

    invoke-virtual {v7, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_a
    const v1, 0x7f10007b

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_b
    :goto_6
    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->fillDockLeavesSlots:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->reloadTiles()V

    :cond_c
    return-void
.end method

.method public final fadeHeroArt(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    iget v0, p0, Lcom/gathin/tvhome/MainActivity;->heroArtAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/gathin/tvhome/MainActivity;->heroArtAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x5a

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final fillHero(ILjava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->heroName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/gathin/tvhome/MainActivity;->cinematic:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p2, p1}, Lcom/gathin/tvhome/AppAdapter;->packageAt(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p0, p2}, Lcom/gathin/tvhome/LivePreviewProvider;->getLiveContent(Landroid/content/Context;Ljava/lang/String;)Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->heroName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;->metadata:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->heroMeta:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x4

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-nez p2, :cond_4

    move-wide v3, v1

    goto :goto_0

    :cond_4
    const-string v3, "last_opened"

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    :goto_0
    cmp-long p2, v3, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x4

    if-gtz p2, :cond_5

    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity;->heroMeta:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v6, 0xea60

    sub-long v6, v8, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sub-long v6, v8, v3

    const-wide/32 v10, 0x36ee80

    cmp-long p2, v6, v10

    if-gez p2, :cond_6

    const-wide/32 v10, 0xea60

    move-wide v6, v3

    invoke-static/range {v6 .. v11}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_6
    const-wide/32 v10, 0x5265c00

    move-wide v6, v3

    invoke-static/range {v6 .. v11}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "en"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "Yesterday"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "Today"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3, v4, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    const v3, 0x7f10003e

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v3

    const/16 v7, 0x21

    invoke-virtual {v4, v6, v3, p2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity;->heroMeta:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity;->heroMeta:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-boolean p2, p0, Lcom/gathin/tvhome/MainActivity;->heroDotsShown:Z

    if-nez p2, :cond_a

    goto/16 :goto_a

    :cond_a
    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget v3, p2, Lcom/gathin/tvhome/AppAdapter;->emptySlots:I

    if-lez v3, :cond_b

    iget p2, p2, Lcom/gathin/tvhome/AppAdapter;->docked:I

    goto :goto_3

    :cond_b
    iget p2, p2, Lcom/gathin/tvhome/AppAdapter;->dockSize:I

    :goto_3
    sget v3, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->heroDots:Landroid/widget/LinearLayout;

    if-le p2, v1, :cond_c

    move v5, v0

    :cond_c
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->heroDots:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eq v3, p2, :cond_e

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->heroDots:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    move v3, v0

    :goto_4
    if-ge v3, p2, :cond_e

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v6, 0x40400000    # 3.0f

    iget v7, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v7, v6

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v3, :cond_d

    iget v6, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_d
    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->heroDots:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    move v3, v0

    :goto_5
    if-ge v3, p2, :cond_14

    iget-object v4, p0, Lcom/gathin/tvhome/MainActivity;->heroDots:Landroid/widget/LinearLayout;

    iget-boolean v5, p0, Lcom/gathin/tvhome/MainActivity;->rtlAppGrid:Z

    if-eqz v5, :cond_f

    add-int/lit8 v5, p2, -0x1

    sub-int/2addr v5, v3

    goto :goto_6

    :cond_f
    move v5, v3

    :goto_6
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, p1, :cond_10

    move v5, v1

    goto :goto_7

    :cond_10
    move v5, v0

    :goto_7
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_11

    move v7, v2

    goto :goto_8

    :cond_11
    const v7, 0x4dffffff    # 5.3687088E8f

    :goto_8
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v5, :cond_12

    const/16 v5, 0x14

    goto :goto_9

    :cond_12
    const/4 v5, 0x6

    :goto_9
    int-to-float v5, v5

    iget v7, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v7, v5, :cond_13

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    :goto_a
    return-void
.end method

.method public final firstTopButton()Landroid/view/View;
    .locals 4

    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    if-eq v2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final focusLibrary()V
    .locals 4

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->cancelPendingFocusScroll()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v0, v0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v1, v0}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    new-instance v1, Lcom/gathin/tvhome/MainActivity$17;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/gathin/tvhome/MainActivity$17;-><init>(Lcom/gathin/tvhome/MainActivity;II)V

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->pendingFocusScroll:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_5

    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V

    :goto_0
    return-void
.end method

.method public final focusTile(I)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->cancelPendingFocusScroll()V

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v1, v1, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p1, v0}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->focusLibrary()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->firstTopButton()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v2, v1, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/gathin/tvhome/AppAdapter;->focusablePosition(I)I

    move-result p1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/gathin/tvhome/MainActivity;->onTileFocused(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_1
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/gathin/tvhome/MainActivity;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    new-instance v0, Lcom/gathin/tvhome/MainActivity$17;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/gathin/tvhome/MainActivity$17;-><init>(Lcom/gathin/tvhome/MainActivity;II)V

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->pendingFocusScroll:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    const-string p1, "RecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V

    :goto_2
    return-void
.end method

.method public final focusedTilePosition()I
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09003a

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public final glassPopup(Landroid/view/View;I)Landroid/widget/PopupWindow;
    .locals 3

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    new-instance p1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0, v0, p2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->openPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public final hideGlass()V
    .locals 3

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->glassShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->glassShown:Z

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final hideHero()V
    .locals 4

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->heroShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->stopAmbientAnimation()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->heroShown:Z

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->ambientGlow:Z

    const-wide/16 v2, 0x12c

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final keepScroll(Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object v1

    const/4 v3, -0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    if-eq v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v2, p0, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/gathin/tvhome/MainActivity;->rtlAppGrid:Z

    if-eqz v5, :cond_3

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v5, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v5

    :goto_2
    sub-int/2addr v2, v5

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    iget-object v5, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_4
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget-object v5, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    goto :goto_2

    :goto_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    if-eqz v4, :cond_6

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_5

    iput v3, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_6
    return-void
.end method

.method public final liveTvIntent()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->liveTvPkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->liveTvPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->liveTvAction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->liveTvAction:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->liveTvPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public final makeIconOnly(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/high16 v0, 0x41200000    # 10.0f

    iget v1, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/high16 v0, 0x42280000    # 42.0f

    iget v1, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public final mappedSource(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "com.gathin.tvhome.extra.REORDER_FROM_SETTINGS"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->settingsRecreationPending:Z

    const-string p1, "launcher_settings"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "settings_revision"

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gathin/tvhome/MainActivity;->settingsRevision:J

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 41

    move-object/from16 v1, p0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0001

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v1, Lcom/gathin/tvhome/MainActivity;->density:F

    invoke-static/range {p0 .. p0}, Lcom/gathin/tvhome/Config;->load(Landroid/content/Context;)Lcom/gathin/tvhome/Config;

    move-result-object v6

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->appLibrarySelection:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->appLibrarySelection:Z

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->restoreKeyServices:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_c

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v0, "enabled_accessibility_services"

    invoke-static {v10, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_2

    const-string v9, ":"

    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v12, v9

    move v13, v8

    :goto_0
    if-ge v13, v12, :cond_2

    aget-object v14, v9, v13

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/2addr v13, v7

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "accessibility_helpers"

    invoke-virtual {v1, v12, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-instance v14, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto/16 :goto_4

    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const/16 v15, 0x3a

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ComponentName;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_6

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v14, v8

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    move v14, v7

    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_9

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    if-nez v14, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v2, Ljava/lang/Thread;

    new-instance v15, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;

    const/4 v14, 0x0

    move-object v9, v15

    move-object v13, v0

    invoke-direct/range {v9 .. v14}, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v0, "ServiceRepair"

    invoke-direct {v2, v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    :goto_4
    const-string v0, "launcher_settings"

    invoke-virtual {v1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "settings_revision"

    const-wide/16 v9, 0x0

    invoke-interface {v0, v2, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/gathin/tvhome/MainActivity;->settingsRevision:J

    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/gathin/tvhome/InputsRequestActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v9

    iget-boolean v10, v6, Lcom/gathin/tvhome/Config;->handleViewInputs:Z

    if-eq v9, v10, :cond_d

    invoke-virtual {v2, v0, v10, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_d
    iget-object v0, v6, Lcom/gathin/tvhome/Config;->settingsKeycodes:[I

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->settingsKeycodes:[I

    iget v0, v6, Lcom/gathin/tvhome/Config;->columns:I

    sput v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->animations:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->advancedEffects:Z

    if-eqz v0, :cond_e

    move v0, v7

    goto :goto_5

    :cond_e
    move v0, v8

    :goto_5
    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->advancedEffects:Z

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->reducedMotion:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->dockRow:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->dockRow:Z

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->singleRow:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->focusOvershoot:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->focusOvershoot:Z

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->festival:Lcom/gathin/tvhome/Festival;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->festival:Lcom/gathin/tvhome/Festival;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v2

    iget-object v9, v0, Lcom/gathin/tvhome/Festival;->name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v0, v0, Lcom/gathin/tvhome/Festival;->until:Ljava/time/LocalDate;

    if-eqz v0, :cond_f

    invoke-virtual {v2, v0}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    move v0, v7

    goto :goto_6

    :cond_10
    move v0, v8

    :goto_6
    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->festive:Z

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->liveTvPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->liveTvPkg:Ljava/lang/String;

    iget v0, v6, Lcom/gathin/tvhome/Config;->homeIdleClockMinutes:I

    int-to-long v9, v0

    const-wide/32 v11, 0xea60

    mul-long/2addr v9, v11

    iput-wide v9, v1, Lcom/gathin/tvhome/MainActivity;->idleClockMs:J

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->bootToLiveTv:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->bootToLiveTv:Z

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->openOnStartChoice:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->openOnStartChoice:Z

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->liveTvAction:Ljava/lang/String;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->liveTvAction:Ljava/lang/String;

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->liveTvInputId:Ljava/lang/String;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->liveTvInputId:Ljava/lang/String;

    iget-boolean v2, v6, Lcom/gathin/tvhome/Config;->appLibrary:Z

    iput-boolean v2, v1, Lcom/gathin/tvhome/MainActivity;->appLibraryEnabled:Z

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->tileMenu:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->tileMenuEnabled:Z

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->inputAction:Ljava/lang/String;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->inputAction:Ljava/lang/String;

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->inputUriScheme:Ljava/lang/String;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->inputUriScheme:Ljava/lang/String;

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->sourcePanelService:Ljava/lang/String;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->sourcePanelService:Ljava/lang/String;

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->sourcePanelAction:Ljava/lang/String;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->sourcePanelAction:Ljava/lang/String;

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->sourcePanelExtra:Ljava/lang/String;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->sourcePanelExtra:Ljava/lang/String;

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->coocaaSources:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->coocaaSources:Z

    const v0, 0x7f0900ac

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    iget v9, v6, Lcom/gathin/tvhome/Config;->backgroundColor:I

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/gathin/tvhome/WallpaperPlayer;

    iget-object v10, v1, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v10, v6}, Lcom/gathin/tvhome/WallpaperPlayer;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/gathin/tvhome/Config;)V

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->wallpaperPlayer:Lcom/gathin/tvhome/WallpaperPlayer;

    const v0, 0x7f0900b9

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gathin/tvhome/SkyView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->sky:Lcom/gathin/tvhome/SkyView;

    iget v10, v6, Lcom/gathin/tvhome/Config;->skyIntensity:I

    invoke-virtual {v0, v10}, Lcom/gathin/tvhome/SkyView;->setIntensity(I)V

    const v0, 0x7f090061

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gathin/tvhome/GlassView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    iget-object v10, v6, Lcom/gathin/tvhome/Config;->glassStyle:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/gathin/tvhome/GlassView;->setStyle(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->festive:Z

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    iget-object v10, v1, Lcom/gathin/tvhome/MainActivity;->festival:Lcom/gathin/tvhome/Festival;

    iget v10, v10, Lcom/gathin/tvhome/Festival;->accent:I

    if-eqz v10, :cond_11

    goto :goto_7

    :cond_11
    const/16 v10, -0x4dc4

    :goto_7
    invoke-virtual {v0, v10}, Lcom/gathin/tvhome/GlassView;->setAccent(I)V

    :cond_12
    const v0, 0x7f090028

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->ambientGlow:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->ambientGlow:Z

    iget-boolean v10, v6, Lcom/gathin/tvhome/Config;->appGlow:Z

    iput-boolean v10, v1, Lcom/gathin/tvhome/MainActivity;->appGlow:Z

    const/16 v10, 0x8

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    const v0, 0x7f090068

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroName:Landroid/widget/TextView;

    const v0, 0x7f090064

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    const v0, 0x7f090067

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroMeta:Landroid/widget/TextView;

    const v0, 0x7f090066

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroDots:Landroid/widget/LinearLayout;

    const v0, 0x7f090065

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->cinematic:Z

    iget-object v11, v6, Lcom/gathin/tvhome/Config;->glowStyle:Ljava/lang/String;

    iput-object v11, v1, Lcom/gathin/tvhome/MainActivity;->glowStyle:Ljava/lang/String;

    iget-boolean v11, v6, Lcom/gathin/tvhome/Config;->cinematicDots:Z

    iput-boolean v11, v1, Lcom/gathin/tvhome/MainActivity;->heroDotsShown:Z

    iget-boolean v11, v6, Lcom/gathin/tvhome/Config;->cinematicWhiteFocus:Z

    iput-boolean v11, v1, Lcom/gathin/tvhome/MainActivity;->cinematicWhiteFocus:Z

    iget v11, v6, Lcom/gathin/tvhome/Config;->cinematicArt:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    const v11, 0x3f666666    # 0.9f

    iput v11, v1, Lcom/gathin/tvhome/MainActivity;->heroArtAlpha:F

    const v13, 0x7f040027

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroName:Landroid/widget/TextView;

    const/high16 v14, 0x42880000    # 68.0f

    invoke-virtual {v0, v4, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroName:Landroid/widget/TextView;

    const v14, -0x43333333    # -0.025f

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroMeta:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroDots:Landroid/widget/LinearLayout;

    iget-boolean v14, v1, Lcom/gathin/tvhome/MainActivity;->heroDotsShown:Z

    if-eqz v14, :cond_14

    move v14, v8

    goto :goto_8

    :cond_14
    move v14, v10

    :goto_8
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    iget v14, v1, Lcom/gathin/tvhome/MainActivity;->heroArtAlpha:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_15

    move v14, v8

    goto :goto_9

    :cond_15
    move v14, v10

    :goto_9
    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    iget v0, v6, Lcom/gathin/tvhome/Config;->cinematicScrim:I

    if-gtz v0, :cond_16

    goto/16 :goto_c

    :cond_16
    const v14, 0x7f090069

    invoke-virtual {v1, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v12, 0x1e0

    const/16 v15, 0x10e

    invoke-static {v12, v15, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    new-instance v13, Landroid/graphics/LinearGradient;

    if-eqz v9, :cond_17

    int-to-float v10, v12

    move/from16 v24, v10

    goto :goto_a

    :cond_17
    const/16 v24, 0x0

    :goto_a
    if-eqz v9, :cond_18

    const/16 v26, 0x0

    goto :goto_b

    :cond_18
    int-to-float v9, v12

    move/from16 v26, v9

    :goto_b
    const v9, -0x2ef9fbfa

    const v10, 0x59060406

    const v8, 0x60406

    filled-new-array {v9, v10, v8}, [I

    move-result-object v28

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    sget-object v38, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v13

    move-object/from16 v29, v9

    move-object/from16 v30, v38

    invoke-direct/range {v23 .. v30}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v9, v12

    int-to-float v10, v15

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v4

    move/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v22, v7

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v12, Landroid/graphics/LinearGradient;

    const v13, -0x24f9fbfa

    const v15, -0xf9fbfa

    filled-new-array {v8, v8, v13, v15}, [I

    move-result-object v36

    new-array v8, v5, [F

    fill-array-data v8, :array_1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v31, v12

    move/from16 v35, v10

    move-object/from16 v37, v8

    invoke-direct/range {v31 .. v38}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v4, v7, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v7, 0x77

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v14, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_c
    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->dockTitle:Z

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    const v0, 0x7f090062

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->greeting:Landroid/widget/TextView;

    const v4, 0x7f09008c

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->clockBlock:Landroid/view/View;

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->greeting:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, v1, Lcom/gathin/tvhome/MainActivity;->greetingColor:I

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->showGreeting:Z

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->greeting:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    const/4 v7, -0x1

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->headerWhite:Z

    const v8, 0x7f090044

    if-eqz v0, :cond_1c

    invoke-virtual {v1, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f09003e

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f040027

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const v0, 0x7f09003d

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v9, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda0;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v10}, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v9}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1d
    const v0, 0x7f090039

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    const v0, 0x7f0900b7

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->shamsiDate:Landroid/widget/TextView;

    const v0, 0x7f0900c1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->stats:Landroid/widget/TextView;

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->raceCalendar:Ljava/util/List;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->raceCalendar:Ljava/util/List;

    const v0, 0x7f0900a7

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->racePanel:Landroid/view/View;

    const v0, 0x7f0900a6

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->raceKicker:Landroid/widget/TextView;

    const v0, 0x7f0900a5

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->raceHeadline:Landroid/widget/TextView;

    const v0, 0x7f0900a8

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->raceSessions:Landroid/widget/TextView;

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->showStats:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->showStats:Z

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->shamsiDate:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->shamsi:Z

    const v0, 0x7f09008f

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->lunarDate:Landroid/widget/TextView;

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->lunarDate:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->lunar:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget v9, v6, Lcom/gathin/tvhome/Config;->lunarUtcOffset:I

    if-ltz v9, :cond_1e

    goto :goto_e

    :cond_1e
    const-string v9, "vi"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x7

    goto :goto_d

    :cond_1f
    const/16 v0, 0x8

    :goto_d
    move v9, v0

    :goto_e
    iput v9, v1, Lcom/gathin/tvhome/MainActivity;->lunarOffset:I

    iget-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->lunar:Z

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->lunarDate:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_20
    const/4 v9, 0x0

    :goto_f
    iget-object v0, v6, Lcom/gathin/tvhome/Config;->greetingName:Ljava/lang/String;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->greetingName:Ljava/lang/String;

    iget-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->shamsi:Z

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->shamsiDate:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v8, 0x41300000    # 11.0f

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v10, v1, Lcom/gathin/tvhome/MainActivity;->lunarDate:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v8, 0x40800000    # 4.0f

    iget v10, v1, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v10, v8

    float-to-int v8, v10

    invoke-virtual {v0, v9, v8, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_21
    iget-object v0, v6, Lcom/gathin/tvhome/Config;->vpnApp:Ljava/lang/String;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->vpnApp:Ljava/lang/String;

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->moduleCards:Z

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->moduleCards:Z

    new-instance v0, Ljava/util/HashSet;

    iget-object v8, v6, Lcom/gathin/tvhome/Config;->hiddenApps:Ljava/util/List;

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->hiddenApps:Ljava/util/Set;

    const v0, 0x7f090063

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f040026

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->rtlAppGrid:Z

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$7;

    iget-boolean v9, v1, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    if-eqz v9, :cond_22

    const/4 v10, 0x1

    :goto_10
    const/4 v11, 0x1

    goto :goto_11

    :cond_22
    sget v10, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    goto :goto_10

    :goto_11
    xor-int/2addr v9, v11

    invoke-direct {v8, v1, v10, v9}, Lcom/gathin/tvhome/MainActivity$7;-><init>(Lcom/gathin/tvhome/MainActivity;II)V

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$8;

    invoke-direct {v8, v1}, Lcom/gathin/tvhome/MainActivity$8;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    iput-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$9;

    invoke-direct {v8, v1}, Lcom/gathin/tvhome/MainActivity$9;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    if-nez v9, :cond_23

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    :cond_23
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->dockRow:Z

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/gathin/tvhome/DockDecoration;

    sget v32, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget v9, v1, Lcom/gathin/tvhome/MainActivity;->density:F

    iget-boolean v10, v1, Lcom/gathin/tvhome/MainActivity;->cinematic:Z

    iget-boolean v11, v1, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    iget-boolean v12, v6, Lcom/gathin/tvhome/Config;->dockGlass:Z

    iget-boolean v13, v6, Lcom/gathin/tvhome/Config;->dockEvenPadding:Z

    iget-boolean v14, v6, Lcom/gathin/tvhome/Config;->alwaysShowNames:Z

    iget v15, v6, Lcom/gathin/tvhome/Config;->dockOpacity:I

    iget-boolean v7, v6, Lcom/gathin/tvhome/Config;->dockBandAll:Z

    move-object/from16 v31, v8

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v14

    move/from16 v36, v15

    move/from16 v37, v12

    move/from16 v38, v13

    move/from16 v39, v11

    move/from16 v40, v7

    invoke-direct/range {v31 .. v40}, Lcom/gathin/tvhome/DockDecoration;-><init>(IFZZIZZZZ)V

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_24
    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->fadeRows:Z

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v7, 0x42400000    # 48.0f

    iget v8, v1, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v8, v7

    const/4 v7, 0x0

    const/4 v9, 0x2

    invoke-virtual {v0, v9, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v7, Lcom/gathin/tvhome/TopFade;

    invoke-direct {v7, v8}, Lcom/gathin/tvhome/TopFade;-><init>(F)V

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_25
    iget-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-eqz v0, :cond_26

    iget-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-nez v0, :cond_26

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Landroid/view/animation/LayoutAnimationController;

    const v8, 0x7f010002

    invoke-static {v1, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    const v9, 0x3d75c28f    # 0.06f

    invoke-direct {v7, v8, v9}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    :cond_26
    new-instance v0, Lcom/gathin/tvhome/AppAdapter;

    sget v7, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-direct {v0, v1, v1, v7, v6}, Lcom/gathin/tvhome/AppAdapter;-><init>(Landroid/content/Context;Lcom/gathin/tvhome/AppAdapter$TileListener;ILcom/gathin/tvhome/Config;)V

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v0, v6, Lcom/gathin/tvhome/Config;->dockApps:Ljava/util/List;

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->dockApps:Ljava/util/List;

    iget-boolean v0, v6, Lcom/gathin/tvhome/Config;->fillDock:Z

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    iput-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->fillDockLeavesSlots:Z

    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v8, "order.txt"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v8, "TvHome.Order"

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    :goto_12
    const/4 v0, 0x0

    goto :goto_13

    :cond_27
    :try_start_1
    new-instance v0, Ljava/lang/String;

    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v9}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/gathin/tvhome/Order;->decode(Ljava/lang/String;)Lcom/gathin/tvhome/Order;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not valid; ignored"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_13

    :catch_1
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cannot read "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_28
    :goto_13
    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v8, v1, Lcom/gathin/tvhome/MainActivity;->dockApps:Ljava/util/List;

    invoke-static {v0, v8}, Lcom/gathin/tvhome/Order;->ranks(Lcom/gathin/tvhome/Order;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, v1, Lcom/gathin/tvhome/MainActivity;->dockApps:Ljava/util/List;

    if-eqz v0, :cond_2a

    const-string v10, ","

    invoke-static {v10, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/gathin/tvhome/Order;->dock:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    goto :goto_14

    :cond_29
    iget v0, v0, Lcom/gathin/tvhome/Order;->docked:I

    goto :goto_15

    :cond_2a
    :goto_14
    const/4 v0, -0x1

    :goto_15
    iput-object v8, v7, Lcom/gathin/tvhome/AppAdapter;->savedRanks:Ljava/util/Map;

    iput v0, v7, Lcom/gathin/tvhome/AppAdapter;->savedDocked:I

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda6;

    iget v8, v6, Lcom/gathin/tvhome/Config;->rowsBelowDock:I

    invoke-direct {v7, v1, v8, v6}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/gathin/tvhome/MainActivity;ILcom/gathin/tvhome/Config;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/gathin/tvhome/MainActivity$11;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Lcom/gathin/tvhome/MainActivity$11;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    new-instance v9, Lcom/gathin/tvhome/MainActivity$12;

    invoke-direct {v9, v1, v8}, Lcom/gathin/tvhome/MainActivity$12;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v7, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Lkotlin/ResultKt;)V

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->springX:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$12;

    const/4 v9, 0x1

    invoke-direct {v8, v1, v9}, Lcom/gathin/tvhome/MainActivity$12;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v7, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Lkotlin/ResultKt;)V

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->springY:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->springX:Landroidx/dynamicanimation/animation/SpringAnimation;

    filled-new-array {v7, v0}, [Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    const/4 v7, 0x0

    :goto_16
    const/4 v8, 0x2

    if-ge v7, v8, :cond_30

    aget-object v8, v0, v7

    iget-boolean v9, v1, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_2b

    new-instance v9, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v9}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v11, 0x466a6000    # 15000.0f

    invoke-virtual {v9, v11}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v9, 0x40000000    # 2.0f

    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    :goto_17
    const/4 v8, 0x1

    goto :goto_1b

    :cond_2b
    iget-boolean v9, v1, Lcom/gathin/tvhome/MainActivity;->focusOvershoot:Z

    if-nez v9, :cond_2d

    new-instance v9, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v9}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget-boolean v11, v1, Lcom/gathin/tvhome/MainActivity;->advancedEffects:Z

    if-eqz v11, :cond_2c

    const/high16 v11, 0x44020000    # 520.0f

    goto :goto_18

    :cond_2c
    const/high16 v11, 0x43dc0000    # 440.0f

    :goto_18
    invoke-virtual {v9, v11}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_17

    :cond_2d
    new-instance v9, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v9}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget-boolean v10, v1, Lcom/gathin/tvhome/MainActivity;->advancedEffects:Z

    if-eqz v10, :cond_2e

    const/high16 v10, 0x43a00000    # 320.0f

    goto :goto_19

    :cond_2e
    const/high16 v10, 0x43820000    # 260.0f

    :goto_19
    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iget-boolean v10, v1, Lcom/gathin/tvhome/MainActivity;->advancedEffects:Z

    if-eqz v10, :cond_2f

    const v10, 0x3f428f5c    # 0.76f

    goto :goto_1a

    :cond_2f
    const v10, 0x3f147ae1    # 0.58f

    :goto_1a
    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_17

    :goto_1b
    add-int/2addr v7, v8

    goto :goto_16

    :cond_30
    const v0, 0x7f090032

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    const v0, 0x7f090037

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;

    const/4 v9, 0x2

    invoke-direct {v8, v1, v9}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;

    const/4 v9, 0x5

    invoke-direct {v8, v1, v9}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;

    const/4 v9, 0x1

    invoke-direct {v8, v1, v9}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v7, 0x7f0900df

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnBluetooth:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnBluetooth:Landroid/widget/TextView;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$$BtClickLambda;

    invoke-direct {v8, v1}, Lcom/gathin/tvhome/MainActivity$$BtClickLambda;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0900e1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_31

    new-instance v8, Lcom/gathin/tvhome/ChildLockClickLambda;

    invoke-direct {v8, v1}, Lcom/gathin/tvhome/ChildLockClickLambda;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_31
    const v7, 0x7f0900e2

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_32

    new-instance v8, Lcom/gathin/tvhome/ControlCenterClickLambda;

    invoke-direct {v8, v1}, Lcom/gathin/tvhome/ControlCenterClickLambda;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_32
    const v7, 0x7f0900e4

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_voice_done

    new-instance v8, Lcom/gathin/tvhome/VoiceClickLambda;

    invoke-direct {v8, v1}, Lcom/gathin/tvhome/VoiceClickLambda;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v7}, Lcom/gathin/tvhome/HeySiriVoiceManager;->init(Landroid/app/Activity;Landroid/view/View;)V

    :cond_voice_done
    const v7, 0x7f0900c1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_33

    invoke-static {v7}, Lcom/gathin/tvhome/WeatherWidget;->bindWeather(Landroid/widget/TextView;)V

    :cond_33
    invoke-static {v1}, Lcom/gathin/tvhome/AppleTvScreensaver;->startIdleWatcher(Landroid/app/Activity;)V

    iget-boolean v7, v6, Lcom/gathin/tvhome/Config;->launcherSettingsButton:Z

    iput-boolean v7, v1, Lcom/gathin/tvhome/MainActivity;->launcherSettingsButton:Z

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v7, v1, v9}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f090036

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnReorder:Landroid/view/View;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;

    const/4 v9, 0x2

    invoke-direct {v8, v1, v9}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnReorder:Landroid/view/View;

    iget-boolean v8, v6, Lcom/gathin/tvhome/Config;->reorderButton:Z

    if-eqz v8, :cond_34

    const/4 v8, 0x0

    goto :goto_1c

    :cond_34
    const/16 v8, 0x8

    :goto_1c
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v7, v6, Lcom/gathin/tvhome/Config;->showNetworkPill:Z

    if-nez v7, :cond_35

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    iget-boolean v7, v6, Lcom/gathin/tvhome/Config;->showInputsPill:Z

    iput-boolean v7, v1, Lcom/gathin/tvhome/MainActivity;->showInputsPill:Z

    iput-boolean v7, v1, Lcom/gathin/tvhome/MainActivity;->showInputsMenuRow:Z

    const v7, 0x7f090035

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnLibraryTop:Landroid/view/View;

    new-instance v8, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v8, v1, v3}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnLibraryTop:Landroid/view/View;

    iget-boolean v8, v6, Lcom/gathin/tvhome/Config;->libraryButton:Z

    if-eqz v8, :cond_36

    if-eqz v2, :cond_36

    const/4 v2, 0x0

    goto :goto_1d

    :cond_36
    const/16 v2, 0x8

    :goto_1d
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0900da

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v9, 0x41b00000    # 22.0f

    iget v10, v1, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget-object v10, v6, Lcom/gathin/tvhome/Config;->topBarApps:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    iget-object v12, v1, Lcom/gathin/tvhome/MainActivity;->topAppButtons:Ljava/util/ArrayList;

    if-eqz v11, :cond_39

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    if-nez v13, :cond_37

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    :cond_37
    if-nez v13, :cond_38

    goto :goto_1e

    :cond_38
    const/4 v14, 0x0

    :try_start_2
    invoke-virtual {v8, v11, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v11, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0012

    invoke-virtual {v3, v4, v7, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v15, v14, v14, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v3, v15, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;

    const/4 v11, 0x2

    invoke-direct {v4, v1, v13, v11}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :catch_2
    const/4 v3, 0x3

    const v4, 0x7f09008c

    goto :goto_1e

    :cond_39
    iget-boolean v3, v6, Lcom/gathin/tvhome/Config;->iconOnlyButtons:Z

    iput-boolean v3, v1, Lcom/gathin/tvhome/MainActivity;->iconOnlyButtons:Z

    iget-boolean v4, v6, Lcom/gathin/tvhome/Config;->topMenu:Z

    iput-boolean v4, v1, Lcom/gathin/tvhome/MainActivity;->topMenu:Z

    iget v7, v6, Lcom/gathin/tvhome/Config;->wifiLabelWidth:I

    if-eqz v3, :cond_3a

    if-gtz v7, :cond_3a

    const/4 v3, 0x1

    goto :goto_1f

    :cond_3a
    const/4 v3, 0x0

    :goto_1f
    iput-boolean v3, v1, Lcom/gathin/tvhome/MainActivity;->wifiIconOnly:Z

    iget-boolean v3, v6, Lcom/gathin/tvhome/Config;->wifiStatusColor:Z

    if-eqz v3, :cond_3b

    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v1, Lcom/gathin/tvhome/MainActivity;->wifiPlainTint:Landroid/content/res/ColorStateList;

    const v3, 0x7f05000a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v1, Lcom/gathin/tvhome/MainActivity;->wifiOnlineTint:Landroid/content/res/ColorStateList;

    iget-boolean v3, v6, Lcom/gathin/tvhome/Config;->wifiStatusWarnings:Z

    if-eqz v3, :cond_3b

    const v3, 0x7f050008

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v1, Lcom/gathin/tvhome/MainActivity;->wifiNoInternetTint:Landroid/content/res/ColorStateList;

    const v3, 0x7f050009

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v1, Lcom/gathin/tvhome/MainActivity;->wifiOfflineTint:Landroid/content/res/ColorStateList;

    :cond_3b
    if-eqz v4, :cond_3d

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/gathin/tvhome/MainActivity;->showInputsPill:Z

    iget-object v4, v1, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const v8, 0x7f10007d

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    const v8, 0x7f070015

    invoke-virtual {v4, v8, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    iget-boolean v3, v1, Lcom/gathin/tvhome/MainActivity;->iconOnlyButtons:Z

    if-nez v3, :cond_3c

    invoke-virtual {v1, v4}, Lcom/gathin/tvhome/MainActivity;->makeIconOnly(Landroid/widget/TextView;)V

    :cond_3c
    new-instance v3, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v5}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x6

    const v8, 0x7f09008c

    invoke-virtual {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_3d
    iget-boolean v2, v1, Lcom/gathin/tvhome/MainActivity;->iconOnlyButtons:Z

    if-eqz v2, :cond_3f

    if-lez v7, :cond_3e

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    int-to-float v3, v7

    iget v4, v1, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_20

    :cond_3e
    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/gathin/tvhome/MainActivity;->makeIconOnly(Landroid/widget/TextView;)V

    :goto_20
    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/gathin/tvhome/MainActivity;->makeIconOnly(Landroid/widget/TextView;)V

    :cond_3f
    iget-boolean v2, v6, Lcom/gathin/tvhome/Config;->iconOnlyInputs:Z

    if-eqz v2, :cond_40

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/gathin/tvhome/MainActivity;->makeIconOnly(Landroid/widget/TextView;)V

    :cond_40
    new-instance v2, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    new-instance v3, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/gathin/tvhome/MainActivity;Z)V

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->btnBluetooth:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->btnReorder:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->btnLibraryTop:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_21

    :cond_41
    iget-boolean v2, v1, Lcom/gathin/tvhome/MainActivity;->advancedEffects:Z

    if-eqz v2, :cond_42

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    iget-object v4, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/gathin/tvhome/MainActivity;->btnBluetooth:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/gathin/tvhome/MainActivity;->btnReorder:Landroid/view/View;

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/view/View;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    aput-object v4, v8, v3

    const/4 v3, 0x2

    aput-object v6, v8, v3

    const/4 v3, 0x3

    aput-object v7, v8, v3

    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->btnLibraryTop:Landroid/view/View;

    const/4 v4, 0x4

    aput-object v3, v8, v4

    const/4 v3, 0x5

    aput-object v0, v8, v3

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v4, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda3;

    const/4 v6, 0x1

    invoke-direct {v4, v1, v6}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_22

    :cond_42
    iget-boolean v2, v1, Lcom/gathin/tvhome/MainActivity;->festive:Z

    if-eqz v2, :cond_47

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Lcom/gathin/tvhome/BellDrawable;

    iget v4, v1, Lcom/gathin/tvhome/MainActivity;->density:F

    invoke-direct {v3, v4}, Lcom/gathin/tvhome/BellDrawable;-><init>(F)V

    iput-object v3, v1, Lcom/gathin/tvhome/MainActivity;->bell:Lcom/gathin/tvhome/BellDrawable;

    new-instance v3, Lcom/gathin/tvhome/MarigoldDrawable;

    iget v4, v1, Lcom/gathin/tvhome/MainActivity;->density:F

    invoke-direct {v3, v4}, Lcom/gathin/tvhome/MarigoldDrawable;-><init>(F)V

    iput-object v3, v1, Lcom/gathin/tvhome/MainActivity;->marigold:Lcom/gathin/tvhome/MarigoldDrawable;

    new-instance v3, Lcom/gathin/tvhome/DiyaDrawable;

    iget v4, v1, Lcom/gathin/tvhome/MainActivity;->density:F

    invoke-direct {v3, v4}, Lcom/gathin/tvhome/DiyaDrawable;-><init>(F)V

    iput-object v3, v1, Lcom/gathin/tvhome/MainActivity;->diya:Lcom/gathin/tvhome/DiyaDrawable;

    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->bell:Lcom/gathin/tvhome/BellDrawable;

    iget-boolean v4, v1, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    iput-boolean v4, v3, Lcom/gathin/tvhome/BellDrawable;->reduced:Z

    if-eqz v4, :cond_43

    iget-object v3, v3, Lcom/gathin/tvhome/BellDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_43
    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->marigold:Lcom/gathin/tvhome/MarigoldDrawable;

    iget-boolean v4, v1, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    iput-boolean v4, v3, Lcom/gathin/tvhome/MarigoldDrawable;->reduced:Z

    if-eqz v4, :cond_44

    iget-object v3, v3, Lcom/gathin/tvhome/MarigoldDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    :cond_44
    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->diya:Lcom/gathin/tvhome/DiyaDrawable;

    iget-boolean v4, v1, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    iget-boolean v6, v3, Lcom/gathin/tvhome/DiyaDrawable;->reduced:Z

    if-ne v6, v4, :cond_45

    goto :goto_23

    :cond_45
    iput-boolean v4, v3, Lcom/gathin/tvhome/DiyaDrawable;->reduced:Z

    if-eqz v4, :cond_46

    invoke-virtual {v3}, Lcom/gathin/tvhome/DiyaDrawable;->snap()V

    :cond_46
    invoke-virtual {v3}, Lcom/gathin/tvhome/DiyaDrawable;->kick()V

    :goto_23
    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->bell:Lcom/gathin/tvhome/BellDrawable;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/gathin/tvhome/MainActivity;->diya:Lcom/gathin/tvhome/DiyaDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v6, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->marigold:Lcom/gathin/tvhome/MarigoldDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->bell:Lcom/gathin/tvhome/BellDrawable;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v4, v3, v6}, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v3

    new-instance v6, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda71;

    invoke-direct {v6, v3, v4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda71;-><init>(Landroid/view/View$OnFocusChangeListener;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->marigold:Lcom/gathin/tvhome/MarigoldDrawable;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v5}, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    new-instance v4, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda71;

    invoke-direct {v4, v2, v3}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda71;-><init>(Landroid/view/View$OnFocusChangeListener;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_47
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->packageFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->timeFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    iget-object v4, v1, Lcom/gathin/tvhome/MainActivity;->packageReceiver:Lcom/gathin/tvhome/MainActivity$4;

    if-lt v2, v3, :cond_48

    invoke-virtual {v1, v4, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_24

    :cond_48
    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_24
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v2, "tv_input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager;

    if-eqz v2, :cond_49

    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->handler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/gathin/tvhome/MainActivity;->inputCallback:Lcom/gathin/tvhome/MainActivity$2;

    invoke-virtual {v2, v4, v3}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    :cond_49
    if-eqz v0, :cond_4a

    iget-object v2, v1, Lcom/gathin/tvhome/MainActivity;->networkCallback:Lcom/gathin/tvhome/MainActivity$1;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iget-object v3, v1, Lcom/gathin/tvhome/MainActivity;->vpnCallback:Lcom/gathin/tvhome/MainActivity$3;

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_4a
    if-nez p1, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gathin/tvhome/MainActivity;->openLauncherSettingsIfAsked(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gathin/tvhome/MainActivity;->openInputsIfAsked(Landroid/content/Intent;)Z

    invoke-static {v1}, Lcom/gathin/tvhome/LivePreviewProvider;->onLauncherCreated(Lcom/gathin/tvhome/MainActivity;)V

    :cond_4b
    return-void

    :array_0
    .array-data 4
        0x0
        0x3ed70a3d    # 0.42f
        0x3f333333    # 0.7f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e8f5c29    # 0.28f
        0x3f147ae1    # 0.58f
        0x3f428f5c    # 0.76f
    .end array-data
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/gathin/tvhome/HeySiriVoiceManager;->onDestroy()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->packageReceiver:Lcom/gathin/tvhome/MainActivity$4;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->wallpaperPlayer:Lcom/gathin/tvhome/WallpaperPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gathin/tvhome/WallpaperPlayer;->active:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gathin/tvhome/WallpaperPlayer;->closed:Z

    iget-object v0, v0, Lcom/gathin/tvhome/WallpaperPlayer;->decoder:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "tv_input"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->inputCallback:Lcom/gathin/tvhome/MainActivity$2;

    invoke-virtual {v1, v2}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->networkCallback:Lcom/gathin/tvhome/MainActivity$1;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->vpnCallback:Lcom/gathin/tvhome/MainActivity$3;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    return-void
.end method

.method public final onLibraryRequested()V
    .locals 9

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->appLibrary:Lcom/gathin/tvhome/AppLibraryDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gathin/tvhome/AppLibraryDialog;->close()V

    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->openPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->libraryFromTopBar:Z

    new-instance v0, Lcom/gathin/tvhome/AppLibraryDialog;

    iget-boolean v3, p0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    iget-boolean v4, p0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    iget-boolean v5, p0, Lcom/gathin/tvhome/MainActivity;->appLibrarySelection:Z

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda21;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/4 v1, 0x1

    invoke-direct {v7, p0, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    new-instance v8, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/4 v1, 0x2

    invoke-direct {v8, p0, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/gathin/tvhome/AppLibraryDialog;-><init>(Landroid/app/Activity;ZZZLcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda21;Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;)V

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->appLibrary:Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->popup:Landroid/widget/PopupWindow;

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->openPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/AppLibraryDialog;->load(Z)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_skip_new_sc
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object v0
    const-string v1, "com.gathin.tvhome.action.START_SCREENSAVER"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_skip_new_sc
    invoke-static {p0}, Lcom/gathin/tvhome/AppleTvScreensaver;->launchScreensaver(Landroid/app/Activity;)V
    return-void
    :cond_skip_new_sc

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/MainActivity;->openLauncherSettingsIfAsked(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/MainActivity;->openInputsIfAsked(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_5

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    sput v0, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p1}, Lcom/gathin/tvhome/AppAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p1, v0}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    sput-object p1, Lcom/gathin/tvhome/MainActivity;->lastFocusedKey:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/gathin/tvhome/MainActivity;->stopped:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->tileRefresh:Lcom/gathin/tvhome/TileRefresh;

    iput-boolean p1, v0, Lcom/gathin/tvhome/TileRefresh;->refocus:Z

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Lcom/gathin/tvhome/HeySiriVoiceManager;->onPause()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->showIdleClock:Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->wallpaperPlayer:Lcom/gathin/tvhome/WallpaperPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gathin/tvhome/WallpaperPlayer;->active:Z

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->stopAmbientAnimation()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->minuteTick:Lcom/gathin/tvhome/ClockScene$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->statsThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->statsBg:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->statsThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->statsThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/gathin/tvhome/MainActivity;->statsBg:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->showStats:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->stats:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->diya:Lcom/gathin/tvhome/DiyaDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/gathin/tvhome/DiyaDrawable;->stop()V

    :cond_2
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->cancelPendingFocusScroll()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->cardPrompt:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->appLibrary:Lcom/gathin/tvhome/AppLibraryDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/gathin/tvhome/AppLibraryDialog;->close()V

    :cond_4
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->openPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_5
    return-void
.end method

.method public final onResume()V
    .locals 11

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->onResume(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    move-result-object v0
    if-eqz v0, :cond_skip_resume_sc
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object v1
    const-string v2, "com.gathin.tvhome.action.START_SCREENSAVER"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :cond_skip_resume_sc
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {p0}, Lcom/gathin/tvhome/AppleTvScreensaver;->launchScreensaver(Landroid/app/Activity;)V
    :cond_skip_resume_sc

    invoke-static {p0}, Lcom/gathin/tvhome/TvKeyHandler;->ensureAccessibilityEnabled(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/gathin/tvhome/TvKeyHandler;->checkPendingUnlockOnResume(Lcom/gathin/tvhome/MainActivity;)V

    invoke-static {p0}, Lcom/gathin/tvhome/DailyWallpaperManager;->checkAndSyncDaily(Lcom/gathin/tvhome/MainActivity;)V

    invoke-static {p0}, Lcom/gathin/tvhome/ImdbScreensaverManager;->checkAndSyncDaily(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->festive:Z

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->festival:Lcom/gathin/tvhome/Festival;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v2

    iget-object v3, v1, Lcom/gathin/tvhome/Festival;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-object v1, v1, Lcom/gathin/tvhome/Festival;->until:Ljava/time/LocalDate;

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_2
    iget-wide v0, p0, Lcom/gathin/tvhome/MainActivity;->settingsRevision:J

    const-string v2, "launcher_settings"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "settings_revision"

    const-wide/16 v7, 0x0

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v0, v0, v9

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->showIdleClock:Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-wide v9, p0, Lcom/gathin/tvhome/MainActivity;->idleClockMs:J

    cmp-long v0, v9, v7

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iput-boolean v5, p0, Lcom/gathin/tvhome/MainActivity;->promptsPaused:Z

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_5
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->tileRefresh:Lcom/gathin/tvhome/TileRefresh;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v3, p0, Lcom/gathin/tvhome/MainActivity;->packageSequence:I

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/content/pm/ChangedPackages;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    move v1, v5

    :goto_1
    iget-boolean v3, v0, Lcom/gathin/tvhome/TileRefresh;->stale:Z

    const/4 v6, 0x2

    if-nez v3, :cond_9

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    iget-boolean v1, v0, Lcom/gathin/tvhome/TileRefresh;->refocus:Z

    if-eqz v1, :cond_8

    move v1, v6

    goto :goto_3

    :cond_8
    move v1, v4

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v1, 0x3

    :goto_3
    iput-boolean v5, v0, Lcom/gathin/tvhome/TileRefresh;->stale:Z

    iput-boolean v5, v0, Lcom/gathin/tvhome/TileRefresh;->refocus:Z

    invoke-static {v1}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->ordinal(I)I

    move-result v0

    if-eq v0, v4, :cond_b

    if-eq v0, v6, :cond_a

    goto :goto_4

    :cond_a
    iput-boolean v5, p0, Lcom/gathin/tvhome/MainActivity;->tilesReady:Z

    invoke-virtual {p0, v4, v4, v4}, Lcom/gathin/tvhome/MainActivity;->reloadApps(ZZZ)V

    goto :goto_4

    :cond_b
    iput-boolean v5, p0, Lcom/gathin/tvhome/MainActivity;->tilesReady:Z

    invoke-virtual {p0, v4, v5, v5}, Lcom/gathin/tvhome/MainActivity;->reloadApps(ZZZ)V

    :goto_4
    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->openOnStartChoice:Z

    const-string v1, ""

    if-eqz v0, :cond_c

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "open_on_start"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->bootToLiveTv:Z

    if-nez v0, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "boot_count"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "boot"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-boolean v6, p0, Lcom/gathin/tvhome/MainActivity;->bootToLiveTv:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->liveTvPkg:Ljava/lang/String;

    goto :goto_5

    :cond_e
    move-object v6, v1

    :goto_5
    const-string v7, "live_tv_boot"

    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-ltz v0, :cond_13

    if-eq v0, v3, :cond_13

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->bootToLiveTv:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->liveTvIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_11

    move-object v0, v2

    goto :goto_6

    :cond_11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    return-void

    :cond_13
    :goto_7
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->updateGreeting()V

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->updateRace()V

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->pillsShown:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/gathin/tvhome/MainActivity$19;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/MainActivity$19;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_8

    :cond_14
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->updateWifiLabel()V

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->updateInputsButton()V

    iput-boolean v4, p0, Lcom/gathin/tvhome/MainActivity;->pillsShown:Z

    :goto_8
    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->showStats:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->statsThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_15

    goto :goto_9

    :cond_15
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->stats:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/gathin/tvhome/MainActivity;->cpuTotalPrev:J

    iput-wide v0, p0, Lcom/gathin/tvhome/MainActivity;->idlePrev:J

    iput-boolean v5, p0, Lcom/gathin/tvhome/MainActivity;->procStatDead:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "stats"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->statsThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->statsThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->statsBg:Landroid/os/Handler;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$16;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/gathin/tvhome/MainActivity$16;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    :goto_9
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->sky:Lcom/gathin/tvhome/SkyView;

    iget v1, v0, Lcom/gathin/tvhome/SkyView;->intensity:I

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v0, v5}, Lcom/gathin/tvhome/SkyView;->render(Z)V

    :cond_18
    :goto_a
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->wallpaperPlayer:Lcom/gathin/tvhome/WallpaperPlayer;

    iput-boolean v4, v0, Lcom/gathin/tvhome/WallpaperPlayer;->active:Z

    invoke-virtual {v0}, Lcom/gathin/tvhome/WallpaperPlayer;->update()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->minuteTick:Lcom/gathin/tvhome/ClockScene$1;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->festive:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->diya:Lcom/gathin/tvhome/DiyaDrawable;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/gathin/tvhome/DiyaDrawable;->start()V

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    iget-boolean v1, p0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-nez v1, :cond_19

    sget-object v1, Lcom/gathin/tvhome/MainActivity;->lastPetalShower:Ljava/time/LocalDate;

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    sput-object v0, Lcom/gathin/tvhome/MainActivity;->lastPetalShower:Ljava/time/LocalDate;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    return-void
.end method

.method public final onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->stopped:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->started:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->timeFilter:Landroid/content/IntentFilter;

    const/16 v3, 0x21

    iget-object v4, p0, Lcom/gathin/tvhome/MainActivity;->timeReceiver:Lcom/gathin/tvhome/MainActivity$4;

    if-lt v1, v3, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v4, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->updateClockVisibility()V

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->tileRefresh:Lcom/gathin/tvhome/TileRefresh;

    iput-boolean v0, v1, Lcom/gathin/tvhome/TileRefresh;->started:Z

    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->started:Z

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->timeReceiver:Lcom/gathin/tvhome/MainActivity$4;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->clockCheck:Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gathin/tvhome/MainActivity;->stopped:Z

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->tileRefresh:Lcom/gathin/tvhome/TileRefresh;

    iput-boolean v0, v2, Lcom/gathin/tvhome/TileRefresh;->started:Z

    iput-boolean v1, v2, Lcom/gathin/tvhome/TileRefresh;->refocus:Z

    return-void
.end method

.method public final onTileFocused(Landroid/view/View;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sput v2, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v3, v2}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gathin/tvhome/MainActivity;->lastFocusedKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v3, v2}, Lcom/gathin/tvhome/AppAdapter;->packageAt(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-static {v0, v3, v4}, Lcom/gathin/tvhome/LivePreviewProvider;->onTileFocused(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;-><init>(Ljava/lang/Object;Landroid/view/View;II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity;->tileRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v3, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v3, v4

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v7}, Lcom/gathin/tvhome/AppAdapter;->focusScale()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, v3, v9

    add-float/2addr v8, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v7

    add-float/2addr v11, v10

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    div-float v12, v8, v9

    sub-float/2addr v10, v12

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v12

    div-float v9, v11, v9

    sub-float/2addr v12, v9

    iget-boolean v9, v0, Lcom/gathin/tvhome/MainActivity;->advancedEffects:Z

    const/4 v13, 0x0

    if-eqz v9, :cond_1

    const/high16 v9, 0x40800000    # 4.0f

    iget v14, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v14, v9

    goto :goto_0

    :cond_1
    move v14, v13

    :goto_0
    sub-float/2addr v12, v14

    iget-object v9, v0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v14, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v8, v8

    if-ne v14, v8, :cond_2

    iget v14, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    float-to-int v15, v11

    if-ne v14, v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    iget v15, v0, Lcom/gathin/tvhome/MainActivity;->glassCardW:I

    if-eq v14, v15, :cond_3

    :cond_2
    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v8, v11

    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, v0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v11, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    invoke-static {v9, v11}, Lcom/gathin/tvhome/AppAdapter;->cornerRadius(IF)F

    move-result v9

    mul-float/2addr v9, v7

    invoke-virtual {v8, v9}, Lcom/gathin/tvhome/GlassView;->setRadius(F)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    iput v7, v0, Lcom/gathin/tvhome/MainActivity;->glassCardW:I

    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->appGlow:Z

    if-nez v7, :cond_4

    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->cinematic:Z

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->cinematicWhiteFocus:Z

    if-nez v7, :cond_5

    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    if-nez v7, :cond_4

    sget v7, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    if-ge v2, v7, :cond_5

    :cond_4
    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->festive:Z

    if-nez v7, :cond_5

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v7, v2}, Lcom/gathin/tvhome/AppAdapter;->ambientColorAt(I)I

    move-result v7

    goto :goto_1

    :cond_5
    move v7, v6

    :goto_1
    iget-boolean v8, v0, Lcom/gathin/tvhome/MainActivity;->cinematic:Z

    if-nez v8, :cond_6

    iget-boolean v8, v0, Lcom/gathin/tvhome/MainActivity;->appGlow:Z

    if-eqz v8, :cond_7

    :cond_6
    iget-boolean v8, v0, Lcom/gathin/tvhome/MainActivity;->festive:Z

    if-nez v8, :cond_7

    iget v8, v0, Lcom/gathin/tvhome/MainActivity;->glassAccent:I

    if-eq v7, v8, :cond_7

    iput v7, v0, Lcom/gathin/tvhome/MainActivity;->glassAccent:I

    iget-object v8, v0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v8, v7}, Lcom/gathin/tvhome/GlassView;->setAccent(I)V

    :cond_7
    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->glassShown:Z

    const/4 v8, 0x1

    const-wide/16 v14, 0xb4

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v7, :cond_9

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->springX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->springY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationX(F)V

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v7, v12}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-eqz v7, :cond_8

    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-nez v7, :cond_8

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_8
    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    iput-boolean v8, v0, Lcom/gathin/tvhome/MainActivity;->glassShown:Z

    goto :goto_3

    :cond_9
    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-nez v7, :cond_a

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->springX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->springY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationX(F)V

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v7, v12}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_a
    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->springX:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v11, v0, Lcom/gathin/tvhome/MainActivity;->glassScrollShiftX:F

    sub-float/2addr v10, v11

    invoke-virtual {v7, v10}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->springY:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v10, v0, Lcom/gathin/tvhome/MainActivity;->glassScrollShift:F

    sub-float/2addr v12, v10

    invoke-virtual {v7, v12}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->dockRow:Z

    if-eqz v7, :cond_b

    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    if-nez v7, :cond_c

    sget v7, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    if-ge v2, v7, :cond_b

    goto :goto_4

    :cond_b
    const-wide/16 v7, 0xc8

    goto/16 :goto_14

    :cond_c
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    iget-boolean v3, v0, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    if-nez v3, :cond_d

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    iget v7, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v7, v4

    float-to-int v4, v7

    if-le v3, v4, :cond_d

    move v3, v8

    goto :goto_5

    :cond_d
    move v3, v6

    :goto_5
    if-eqz v3, :cond_10

    iget-boolean v4, v0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-eqz v4, :cond_f

    iget-boolean v4, v0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-eqz v4, :cond_e

    goto :goto_6

    :cond_e
    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v6, v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    goto :goto_7

    :cond_f
    :goto_6
    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v6, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_10
    :goto_7
    if-eqz v3, :cond_11

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    goto :goto_8

    :cond_11
    iget v1, v5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    :goto_8
    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    if-ltz v2, :cond_12

    iget-object v3, v3, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget-object v3, v3, Lcom/gathin/tvhome/AppAdapter$Entry;->label:Ljava/lang/String;

    goto :goto_9

    :cond_12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_13
    const-string v3, ""

    :goto_9
    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v4, v2}, Lcom/gathin/tvhome/AppAdapter;->ambientColorAt(I)I

    move-result v4

    iget v5, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    const/high16 v7, 0x41600000    # 14.0f

    mul-float/2addr v7, v5

    sub-float/2addr v1, v7

    const/high16 v7, 0x41d00000    # 26.0f

    mul-float/2addr v5, v7

    sub-float/2addr v1, v5

    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity;->heroName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v8

    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->cinematic:Z

    if-eqz v7, :cond_23

    iget v7, v0, Lcom/gathin/tvhome/MainActivity;->heroArtAlpha:F

    cmpl-float v7, v7, v13

    if-lez v7, :cond_23

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v7, v2}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_14

    goto/16 :goto_12

    :cond_14
    iget-object v10, v0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v10, v0, Lcom/gathin/tvhome/MainActivity;->heroArtKey:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    const/16 v6, 0x1a4

    invoke-virtual {v0, v6}, Lcom/gathin/tvhome/MainActivity;->fadeHeroArt(I)V

    goto/16 :goto_12

    :cond_15
    iget-object v10, v0, Lcom/gathin/tvhome/MainActivity;->heroArtCache:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    if-nez v11, :cond_20

    iget-object v11, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v11, v2}, Lcom/gathin/tvhome/AppAdapter;->packageAt(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/gathin/tvhome/LivePreviewProvider;->getBackdropBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_16

    iget-object v10, v0, Lcom/gathin/tvhome/MainActivity;->heroArtCache:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :cond_16
    iget-object v11, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    const/16 v16, 0x0

    if-ltz v2, :cond_19

    iget-object v11, v11, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v2, v12, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget-object v12, v11, Lcom/gathin/tvhome/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_18

    goto :goto_b

    :cond_18
    iget-object v12, v11, Lcom/gathin/tvhome/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    :cond_19
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_a
    move-object/from16 v12, v16

    :goto_b
    if-nez v12, :cond_1a

    move-object/from16 v11, v16

    goto/16 :goto_f

    :cond_1a
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    if-eqz v11, :cond_1b

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :cond_1b
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v15, 0xc0

    const/16 v9, 0x6c

    invoke-static {v15, v9, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v15, -0x1000000

    invoke-virtual {v14, v15}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v6, v6, v15, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v11, 0x60

    const/16 v12, 0x36

    invoke-static {v9, v11, v12, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v9, 0x30

    const/16 v12, 0x1b

    invoke-static {v11, v9, v12, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v11, 0x510

    new-array v12, v11, [I

    const/16 v23, 0x30

    const/16 v24, 0x1b

    const/16 v19, 0x0

    const/16 v20, 0x30

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v9

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v13, v6

    :goto_c
    if-ge v13, v11, :cond_1c

    aget v14, v12, v13

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v15

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    int-to-float v15, v15

    const v18, 0x3e59b3d0    # 0.2126f

    mul-float v18, v18, v15

    int-to-float v11, v11

    const v19, 0x3f371759    # 0.7152f

    mul-float v19, v19, v11

    add-float v19, v19, v18

    int-to-float v14, v14

    const v18, 0x3d93dd98    # 0.0722f

    mul-float v18, v18, v14

    add-float v18, v18, v19

    sub-float v15, v15, v18

    const v19, 0x3fd9999a    # 1.7f

    mul-float v15, v15, v19

    add-float v15, v15, v18

    invoke-static {v15}, Lcom/gathin/tvhome/Sky;->clamp(F)I

    move-result v15

    sub-float v11, v11, v18

    mul-float v11, v11, v19

    add-float v11, v11, v18

    invoke-static {v11}, Lcom/gathin/tvhome/Sky;->clamp(F)I

    move-result v11

    sub-float v14, v14, v18

    mul-float v14, v14, v19

    add-float v14, v14, v18

    invoke-static {v14}, Lcom/gathin/tvhome/Sky;->clamp(F)I

    move-result v14

    invoke-static {v15, v11, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    aput v11, v12, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v11, 0x510

    goto :goto_c

    :cond_1c
    move v11, v6

    :goto_d
    const/4 v13, 0x3

    if-ge v11, v13, :cond_1d

    invoke-static {v12, v8}, Lcom/gathin/tvhome/Sky;->boxBlur([IZ)[I

    move-result-object v12

    invoke-static {v12, v6}, Lcom/gathin/tvhome/Sky;->boxBlur([IZ)[I

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_1d
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v9

    goto :goto_e

    :cond_1e
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_e
    if-eq v6, v9, :cond_1f

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1f
    const/16 v24, 0x30

    const/16 v25, 0x1b

    const/16 v20, 0x0

    const/16 v21, 0x30

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v6

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object v11, v6

    :goto_f
    if-eqz v11, :cond_20

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    :goto_10
    iput-object v7, v0, Lcom/gathin/tvhome/MainActivity;->heroArtKey:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-eqz v6, :cond_22

    iget-boolean v6, v0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-nez v6, :cond_22

    iget-object v6, v0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_21

    goto :goto_11

    :cond_21
    iget-object v6, v0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v9, 0x8c

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;

    const/4 v9, 0x4

    invoke-direct {v7, v0, v11, v9}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_12

    :cond_22
    :goto_11
    iget-object v6, v0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v6, 0x258

    invoke-virtual {v0, v6}, Lcom/gathin/tvhome/MainActivity;->fadeHeroArt(I)V

    :cond_23
    :goto_12
    iget-boolean v6, v0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-eqz v6, :cond_2b

    iget-boolean v6, v0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-eqz v6, :cond_24

    goto/16 :goto_13

    :cond_24
    iget-boolean v6, v0, Lcom/gathin/tvhome/MainActivity;->heroShown:Z

    if-nez v6, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/MainActivity;->stopAmbientAnimation()V

    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0, v2, v3}, Lcom/gathin/tvhome/MainActivity;->fillHero(ILjava/lang/String;)V

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x104

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean v1, v0, Lcom/gathin/tvhome/MainActivity;->ambientGlow:Z

    if-eqz v1, :cond_25

    invoke-virtual {v0, v4}, Lcom/gathin/tvhome/MainActivity;->setAmbient(I)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_25
    iput-boolean v8, v0, Lcom/gathin/tvhome/MainActivity;->heroShown:Z

    goto/16 :goto_18

    :cond_26
    if-eqz v5, :cond_2a

    iget-boolean v5, v0, Lcom/gathin/tvhome/MainActivity;->advancedEffects:Z

    if-eqz v5, :cond_27

    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_27
    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, -0x3ec00000    # -12.0f

    iget v7, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v7, v6

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x78

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;

    invoke-direct {v6, v0, v2, v3, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;-><init>(Lcom/gathin/tvhome/MainActivity;ILjava/lang/String;F)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean v1, v0, Lcom/gathin/tvhome/MainActivity;->ambientGlow:Z

    if-eqz v1, :cond_29

    iget-boolean v2, v0, Lcom/gathin/tvhome/MainActivity;->advancedEffects:Z

    if-eqz v2, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/MainActivity;->stopAmbientAnimation()V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget v1, v0, Lcom/gathin/tvhome/MainActivity;->ambientColor:I

    if-ne v4, v1, :cond_28

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0xb4

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_18

    :cond_28
    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xb4

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v2, v0, Lcom/gathin/tvhome/MainActivity;->ambientColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/MainActivity;->ambientAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x168

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->ambientAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->ambientAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_18

    :cond_29
    if-eqz v1, :cond_32

    iget v1, v0, Lcom/gathin/tvhome/MainActivity;->ambientColor:I

    if-eq v4, v1, :cond_32

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3eb33333    # 0.35f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v7, 0xc8

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v4, v3}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/gathin/tvhome/MainActivity;II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_18

    :cond_2a
    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_18

    :cond_2b
    :goto_13
    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0, v2, v3}, Lcom/gathin/tvhome/MainActivity;->fillHero(ILjava/lang/String;)V

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v1, v0, Lcom/gathin/tvhome/MainActivity;->ambientGlow:Z

    if-eqz v1, :cond_2c

    invoke-virtual {v0, v4}, Lcom/gathin/tvhome/MainActivity;->setAmbient(I)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2c
    iput-boolean v8, v0, Lcom/gathin/tvhome/MainActivity;->heroShown:Z

    goto/16 :goto_18

    :goto_14
    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v4, v2}, Lcom/gathin/tvhome/AppAdapter;->ambientColorAt(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/MainActivity;->stopAmbientAnimation()V

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v6, v0, Lcom/gathin/tvhome/MainActivity;->heroShown:Z

    iget-boolean v4, v0, Lcom/gathin/tvhome/MainActivity;->ambientGlow:Z

    if-nez v4, :cond_2d

    goto :goto_17

    :cond_2d
    iget-boolean v4, v0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-eqz v4, :cond_31

    iget-boolean v4, v0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-eqz v4, :cond_2e

    goto :goto_16

    :cond_2e
    iget v4, v0, Lcom/gathin/tvhome/MainActivity;->ambientColor:I

    if-ne v2, v4, :cond_2f

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2f

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_17

    :cond_2f
    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const v5, 0x3eb33333    # 0.35f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v9, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    cmpl-float v5, v9, v5

    if-lez v5, :cond_30

    move-wide v10, v7

    goto :goto_15

    :cond_30
    const-wide/16 v10, 0x0

    :goto_15
    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;

    const/4 v7, 0x2

    invoke-direct {v5, v0, v2, v7}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/gathin/tvhome/MainActivity;II)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_17

    :cond_31
    :goto_16
    invoke-virtual {v0, v2}, Lcom/gathin/tvhome/MainActivity;->setAmbient(I)V

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_17
    float-to-int v2, v3

    neg-int v3, v2

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->revealRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v4, v0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    invoke-virtual {v3, v1, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_32
    :goto_18
    return-void
.end method

.method public final onTileLongPress(Landroid/view/View;I)V
    .locals 12

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v0, p2}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v1, p2}, Lcom/gathin/tvhome/AppAdapter;->packageAt(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0010

    iget-object v4, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    const/high16 v6, 0x43480000    # 200.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4}, Lcom/gathin/tvhome/MainActivity;->glassPopup(Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v4

    iget-boolean v7, p0, Lcom/gathin/tvhome/MainActivity;->dockRow:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v7}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v7

    if-ge p2, v7, :cond_4

    sget v7, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    if-ge p2, v7, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    if-eqz v7, :cond_3

    const v9, 0x7f100097

    goto :goto_1

    :cond_3
    const v9, 0x7f100095

    :goto_1
    new-instance v10, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v0, v7, v11}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v3, v4, v9, v10}, Lcom/gathin/tvhome/MainActivity;->addSettingsMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/Runnable;)V

    :cond_4
    iget-object v7, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v7}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v7

    if-ge p2, v7, :cond_5

    new-instance p2, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;

    const/4 v7, 0x0

    invoke-direct {p2, p0, v0, v7}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;I)V

    const v0, 0x7f100096

    invoke-virtual {p0, v3, v4, v0, p2}, Lcom/gathin/tvhome/MainActivity;->addSettingsMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/Runnable;)V

    :cond_5
    iget-boolean p2, p0, Lcom/gathin/tvhome/MainActivity;->appLibraryEnabled:Z

    if-eqz p2, :cond_6

    new-instance p2, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v1, v0}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;I)V

    const v0, 0x7f100049

    invoke-virtual {p0, v3, v4, v0, p2}, Lcom/gathin/tvhome/MainActivity;->addSettingsMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/Runnable;)V

    :cond_6
    invoke-static {p0, v1}, Lcom/gathin/tvhome/Sky;->appInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/gathin/tvhome/MainActivity;Landroid/content/Intent;I)V

    const p2, 0x7f100042

    invoke-virtual {p0, v3, v4, p2, v0}, Lcom/gathin/tvhome/MainActivity;->addSettingsMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/Runnable;)V

    :cond_7
    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    iget p2, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr p2, v6

    float-to-int p2, p2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    const/high16 v0, 0x41200000    # 10.0f

    iget v1, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    aget v6, p2, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v7, v0

    add-int/2addr v7, v1

    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-gt v7, v6, :cond_8

    const p2, 0x800003

    invoke-virtual {p0, v4, v2, p1, p2}, Lcom/gathin/tvhome/MainActivity;->dropIn(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    int-to-float v6, v1

    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotY(F)V

    const v6, 0x3f6b851f    # 0.92f

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    const/high16 v6, 0x41000000    # 8.0f

    iget v7, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v7, v6

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationY(F)V

    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    aget v7, p2, v5

    aget p2, p2, v8

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {v4, v6, v5, v7, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const v0, 0x3fcccccd    # 1.6f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_9
    :goto_3
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->started:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-ge p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v0, p1, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->heroArtCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->heroArtKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->wallpaperPlayer:Lcom/gathin/tvhome/WallpaperPlayer;

    iget-object v1, p1, Lcom/gathin/tvhome/WallpaperPlayer;->current:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/gathin/tvhome/WallpaperPlayer;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p1, Lcom/gathin/tvhome/WallpaperPlayer;->current:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p1, Lcom/gathin/tvhome/WallpaperPlayer;->displayed:Ljava/lang/String;

    iget-object v0, p1, Lcom/gathin/tvhome/WallpaperPlayer;->root:Landroid/widget/FrameLayout;

    iget p1, p1, Lcom/gathin/tvhome/WallpaperPlayer;->backgroundColor:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    const/4 p1, 0x1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->tileRefresh:Lcom/gathin/tvhome/TileRefresh;

    iput-boolean p1, v0, Lcom/gathin/tvhome/TileRefresh;->stale:Z

    return-void
.end method

.method public final onUserInteraction()V
    .locals 6

    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->showIdleClock:Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-wide v2, p0, Lcom/gathin/tvhome/MainActivity;->idleClockMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->startPendingSettingsReorder()V

    iget-boolean p1, p0, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->appLibrary:Lcom/gathin/tvhome/AppLibraryDialog;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->focusLibrary()V

    :cond_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->showCardPrompt()V

    :cond_1
    return-void
.end method

.method public final open(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/gathin/tvhome/ChildLockManager;->handleOpen(Lcom/gathin/tvhome/MainActivity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f100057

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final openInput(Ljava/lang/String;)V
    .locals 6

    const-string v0, "tv_input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->mappedSource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, 0x10000000

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->inputAction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->inputAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "input"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    :cond_1
    invoke-static {p1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->inputUriScheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v2, "vnd.android.cursor.item/channel"

    const-string v3, "android.intent.action.VIEW"

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/gathin/tvhome/MainActivity;->inputUriScheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->liveTvPkg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->liveTvPkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    :cond_3
    :try_start_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->inputAction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f100057

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->inputAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method public final openInputsIfAsked(Landroid/content/Intent;)Z
    .locals 3

    if-eqz p1, :cond_4

    const-string v0, "com.android.tv.action.VIEW_INPUTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/gathin/tvhome/MainActivity;->topMenu:Z

    if-eqz p1, :cond_1

    const p1, 0x7f090037

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->showInputs()V

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/gathin/tvhome/MainActivity$14;

    invoke-direct {v2, p0, p1}, Lcom/gathin/tvhome/MainActivity$14;-><init>(Lcom/gathin/tvhome/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final openLauncherSettingsIfAsked(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "com.gathin.tvhome.action.LAUNCHER_SETTINGS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gathin/tvhome/LauncherSettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x2a

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final openNetworkPill()V
    .locals 2

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->vpnApp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->vpnApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->vpnApp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->vpnApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-static {p0, v0}, Lcom/gathin/tvhome/Sky;->intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method public final openSourcePanel()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->sourcePanelAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->sourcePanelService:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->sourcePanelExtra:Ljava/lang/String;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->sourcePanelExtra:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gathin/tvhome/MainActivity;->sourcePanelExtra:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const v0, 0x7f100057

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final reloadApps(ZZZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->cancelPendingFocusScroll()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v1, v1, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v2, v1, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sget-object v1, Lcom/gathin/tvhome/MainActivity;->lastFocusedKey:Ljava/lang/String;

    sget v4, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    iget-object v5, p0, Lcom/gathin/tvhome/MainActivity;->appLibrary:Lcom/gathin/tvhome/AppLibraryDialog;

    if-nez v5, :cond_2

    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz v5, :cond_3

    iput-boolean v3, p0, Lcom/gathin/tvhome/MainActivity;->glassShown:Z

    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v3, p0, Lcom/gathin/tvhome/MainActivity;->heroShown:Z

    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v6, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->reloadTiles()V

    :cond_4
    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    iget-boolean p1, p0, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    if-eqz v5, :cond_7

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 p3, 0x1a

    invoke-direct {p2, p0, p3}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    iget-boolean p1, p0, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    sget-object p2, Lcom/gathin/tvhome/MainActivity;->lastFocusedKey:Ljava/lang/String;

    sget p3, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;-><init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p1, v1}, Lcom/gathin/tvhome/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_8

    move v4, p1

    :cond_8
    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object p2, p2, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sput p2, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    iget-object p3, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p3, p2}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/gathin/tvhome/MainActivity;->lastFocusedKey:Ljava/lang/String;

    if-gez p1, :cond_9

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->hideHero()V

    :cond_9
    iput-boolean v2, p0, Lcom/gathin/tvhome/MainActivity;->tilesReady:Z

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->startPendingSettingsReorder()V

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->showCardPrompt()V

    :goto_2
    return-void
.end method

.method public final reloadTiles()V
    .locals 32

    move-object/from16 v1, p0

    const-string v2, "Could not read shortcuts"

    const-string v3, "TvHome.Library"

    iget-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    :cond_0
    sget-object v4, Lcom/gathin/tvhome/MainActivity;->lastFocusedKey:Ljava/lang/String;

    sget v5, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->heroArtCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/gathin/tvhome/MainActivity;->heroArtKey:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    iget-boolean v0, v1, Lcom/gathin/tvhome/MainActivity;->moduleCards:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, v1, v8}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda28;-><init>(Lcom/gathin/tvhome/MainActivity;Ljava/util/List;)V

    invoke-static {v0, v6}, Lcom/gathin/tvhome/Sky;->run(Lcom/gathin/tvhome/CardFeature$Step;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v0, v6

    :goto_0
    iput-object v0, v1, Lcom/gathin/tvhome/MainActivity;->cards:Ljava/util/List;

    iget-object v11, v1, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    sget-boolean v0, Lcom/gathin/tvhome/Sky;->broken:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity;->cards:Ljava/util/List;

    invoke-static {v0}, Lcom/gathin/tvhome/Cards;->shown(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    sput-boolean v12, Lcom/gathin/tvhome/Sky;->broken:Z

    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "module cards switched off for this session: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "TvHomeCards"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    :goto_2
    iget-object v13, v11, Lcom/gathin/tvhome/AppAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_4

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    iput-object v8, v11, Lcom/gathin/tvhome/AppAdapter;->leanbackPackages:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashSet;

    invoke-static {v13, v10}, Lcom/gathin/tvhome/Sky;->store(Landroid/content/Context;Z)Landroid/util/AtomicFile;

    move-result-object v0

    :try_start_2
    invoke-static {v0}, Lcom/gathin/tvhome/Sky;->readStrict(Landroid/util/AtomicFile;)Ljava/util/Set;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_5
    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, v11, Lcom/gathin/tvhome/AppAdapter;->libraryPreload:Ljava/util/HashSet;

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v13, v12}, Lcom/gathin/tvhome/Sky;->store(Landroid/content/Context;Z)Landroid/util/AtomicFile;

    move-result-object v0

    :try_start_3
    invoke-static {v0}, Lcom/gathin/tvhome/Sky;->readStrict(Landroid/util/AtomicFile;)Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_7
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v14, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_6

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v12, 0x1

    goto :goto_8

    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gathin/tvhome/Cards$Card;

    iget-object v9, v6, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v15, :cond_9

    goto :goto_a

    :cond_9
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v10, v10, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v10, :cond_c

    invoke-virtual {v8, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v19, v8

    iget-object v8, v11, Lcom/gathin/tvhome/AppAdapter;->hidden:Ljava/util/HashSet;

    invoke-virtual {v8, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    invoke-interface {v0, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    if-nez v20, :cond_b

    if-eqz v10, :cond_a

    if-nez v8, :cond_a

    goto :goto_b

    :cond_a
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    const/4 v15, 0x0

    goto/16 :goto_17

    :cond_b
    :goto_b
    new-instance v8, Landroid/content/ComponentName;

    iget-object v10, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v15, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gathin/tvhome/Cards$Card;

    move-object/from16 v20, v0

    if-eqz v10, :cond_d

    iget-object v0, v10, Lcom/gathin/tvhome/Cards$Card;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move-object/from16 v8, v19

    move-object/from16 v0, v20

    :cond_c
    :goto_c
    const/4 v10, 0x0

    goto :goto_a

    :cond_d
    if-eqz v10, :cond_e

    iget-object v0, v10, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    :goto_d
    move-object/from16 v21, v2

    goto :goto_f

    :cond_e
    iget-object v0, v11, Lcom/gathin/tvhome/AppAdapter;->appLabels:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_e

    :cond_f
    invoke-virtual {v12, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-static {v0, v15}, Lcom/gathin/tvhome/Cards;->cleanLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v30, v7

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v8, v19

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    move-object/from16 v7, v30

    goto :goto_c

    :cond_10
    iget-boolean v2, v11, Lcom/gathin/tvhome/AppAdapter;->uniformTiles:Z

    if-eqz v2, :cond_12

    if-eqz v10, :cond_11

    goto :goto_10

    :cond_11
    move-object/from16 v31, v6

    const/4 v15, 0x0

    const/16 v26, 0x0

    goto/16 :goto_15

    :cond_12
    :goto_10
    iget-object v2, v11, Lcom/gathin/tvhome/AppAdapter;->appBanners:Ljava/util/Map;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_13

    const-string v7, "banner_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    :cond_13
    move-object/from16 v31, v6

    goto :goto_11

    :cond_14
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v15, "drawable"

    move-object/from16 v31, v6

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v2, v15, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v13, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_12

    :cond_15
    :goto_11
    const/4 v2, 0x0

    :goto_12
    if-nez v2, :cond_1b

    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v6, v2, Landroid/content/pm/ActivityInfo;->banner:I

    if-nez v6, :cond_16

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->banner:I

    :cond_16
    if-eqz v6, :cond_17

    :try_start_4
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v15, 0x140

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_7

    const/4 v15, 0x0

    :try_start_5
    invoke-virtual {v2, v6, v7, v15}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_13

    :catch_7
    :cond_17
    const/4 v15, 0x0

    :catch_8
    move-object v2, v15

    :goto_13
    if-nez v2, :cond_18

    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v14}, Landroid/content/pm/PackageItemInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_18
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-lez v6, :cond_1a

    if-lez v7, :cond_1a

    int-to-float v6, v6

    int-to-float v7, v7

    const v17, 0x3fb33333    # 1.4f

    mul-float v7, v7, v17

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_19

    goto :goto_14

    :cond_19
    move-object v2, v15

    :cond_1a
    :goto_14
    move-object/from16 v26, v2

    goto :goto_15

    :cond_1b
    const/4 v15, 0x0

    goto :goto_14

    :goto_15
    if-nez v26, :cond_1c

    invoke-virtual {v12, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v27, v2

    goto :goto_16

    :cond_1c
    move-object/from16 v27, v15

    :goto_16
    if-eqz v10, :cond_1d

    new-instance v2, Lcom/gathin/tvhome/AppAdapter$Entry;

    const/16 v23, 0x2

    iget-object v6, v10, Lcom/gathin/tvhome/Cards$Card;->caption:Ljava/lang/String;

    iget v7, v10, Lcom/gathin/tvhome/Cards$Card;->accent:I

    move-object/from16 v22, v2

    move-object/from16 v24, v0

    move-object/from16 v25, v8

    move-object/from16 v28, v6

    move/from16 v29, v7

    invoke-direct/range {v22 .. v29}, Lcom/gathin/tvhome/AppAdapter$Entry;-><init>(ILjava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1d
    new-instance v2, Lcom/gathin/tvhome/AppAdapter$Entry;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, v2

    move-object/from16 v24, v0

    move-object/from16 v25, v8

    invoke-direct/range {v22 .. v29}, Lcom/gathin/tvhome/AppAdapter$Entry;-><init>(ILjava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_17
    move-object/from16 v8, v19

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    goto/16 :goto_c

    :cond_1e
    new-instance v0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v0, v11, v2}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean v0, v11, Lcom/gathin/tvhome/AppAdapter;->showHomeSettings:Z

    if-eqz v0, :cond_1f

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.HOME_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/gathin/tvhome/AppAdapter$Entry;

    const v2, 0x7f100038

    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    new-instance v2, Landroid/content/ComponentName;

    const-class v6, Lcom/gathin/tvhome/HomeSettingsActivity;

    invoke-direct {v2, v13, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v6, 0x7f07000f

    invoke-virtual {v13, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, 0x1

    const/16 v23, 0x0

    move-object/from16 v19, v0

    move-object/from16 v22, v2

    invoke-direct/range {v19 .. v26}, Lcom/gathin/tvhome/AppAdapter$Entry;-><init>(ILjava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    const/4 v2, 0x0

    iput v2, v11, Lcom/gathin/tvhome/AppAdapter;->docked:I

    :goto_18
    iget v0, v11, Lcom/gathin/tvhome/AppAdapter;->docked:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_22

    iget v0, v11, Lcom/gathin/tvhome/AppAdapter;->docked:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget v6, v11, Lcom/gathin/tvhome/AppAdapter;->savedDocked:I

    if-gez v6, :cond_20

    iget-object v6, v11, Lcom/gathin/tvhome/AppAdapter;->favourites:Ljava/util/List;

    iget-object v0, v0, Lcom/gathin/tvhome/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_19

    :cond_20
    iget-object v6, v11, Lcom/gathin/tvhome/AppAdapter;->savedRanks:Ljava/util/Map;

    iget-object v0, v0, Lcom/gathin/tvhome/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v6, v11, Lcom/gathin/tvhome/AppAdapter;->savedDocked:I

    if-ge v0, v6, :cond_21

    const/4 v0, 0x1

    goto :goto_19

    :cond_21
    move v0, v2

    :goto_19
    if-eqz v0, :cond_22

    iget v0, v11, Lcom/gathin/tvhome/AppAdapter;->docked:I

    const/4 v6, 0x1

    add-int/2addr v0, v6

    iput v0, v11, Lcom/gathin/tvhome/AppAdapter;->docked:I

    goto :goto_18

    :cond_22
    iget-boolean v0, v11, Lcom/gathin/tvhome/AppAdapter;->dockRow:Z

    if-eqz v0, :cond_24

    iget-boolean v0, v11, Lcom/gathin/tvhome/AppAdapter;->reordering:Z

    if-nez v0, :cond_24

    iget v0, v11, Lcom/gathin/tvhome/AppAdapter;->docked:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-boolean v7, v11, Lcom/gathin/tvhome/AppAdapter;->fillDock:Z

    if-nez v7, :cond_24

    if-lez v0, :cond_24

    iget v7, v11, Lcom/gathin/tvhome/AppAdapter;->dockSize:I

    if-ge v0, v7, :cond_24

    if-gt v6, v0, :cond_23

    goto :goto_1a

    :cond_23
    sub-int v0, v7, v0

    goto :goto_1b

    :cond_24
    :goto_1a
    move v0, v2

    :goto_1b
    iput v0, v11, Lcom/gathin/tvhome/AppAdapter;->emptySlots:I

    move v10, v2

    :goto_1c
    iget v0, v11, Lcom/gathin/tvhome/AppAdapter;->emptySlots:I

    if-ge v10, v0, :cond_25

    iget v0, v11, Lcom/gathin/tvhome/AppAdapter;->docked:I

    add-int/2addr v0, v10

    new-instance v2, Lcom/gathin/tvhome/AppAdapter$Entry;

    new-instance v6, Landroid/content/ComponentName;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "empty-dock-slot-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v13, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v15, 0x3

    const-string v16, ""

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v2

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v21}, Lcom/gathin/tvhome/AppAdapter$Entry;-><init>(ILjava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_25
    iget-object v0, v11, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v11, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    sput-object v4, Lcom/gathin/tvhome/MainActivity;->lastFocusedKey:Ljava/lang/String;

    sput v5, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    iget v0, v1, Lcom/gathin/tvhome/MainActivity;->packageSequence:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/content/pm/ChangedPackages;->getSequenceNumber()I

    move-result v0

    :cond_26
    iput v0, v1, Lcom/gathin/tvhome/MainActivity;->packageSequence:I

    return-void
.end method

.method public final setAmbient(I)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    iget v3, v0, Lcom/gathin/tvhome/MainActivity;->ambientColor:I

    if-ne v1, v3, :cond_0

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iput v1, v0, Lcom/gathin/tvhome/MainActivity;->ambientColor:I

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0x1e0

    const/16 v5, 0x10e

    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v13, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v13, v6}, Landroid/graphics/Paint;-><init>(I)V

    iget-boolean v6, v0, Lcom/gathin/tvhome/MainActivity;->cinematic:Z

    const/high16 v14, 0x3f000000    # 0.5f

    const v15, 0xffffff

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    new-instance v7, Landroid/graphics/RadialGradient;

    int-to-float v8, v4

    if-eqz v6, :cond_1

    const v6, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const v6, 0x3f4ccccd    # 0.8f

    :goto_0
    mul-float v17, v8, v6

    int-to-float v6, v5

    const v9, 0x3d75c28f    # 0.06f

    mul-float v18, v6, v9

    const v6, 0x3f47ae14    # 0.78f

    mul-float v19, v8, v6

    const v6, -0x59000001

    const v8, 0x47ffffff

    filled-new-array {v6, v8, v15}, [I

    move-result-object v20

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v7

    move-object/from16 v21, v2

    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_1

    :cond_2
    const-string v6, "horizon"

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->glowStyle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Landroid/graphics/LinearGradient;

    int-to-float v10, v5

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float v20, v10, v7

    const v7, 0x66ffffff

    const v8, 0x24ffffff

    filled-new-array {v7, v8, v15}, [I

    move-result-object v21

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    sget-object v28, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v6

    move-object/from16 v22, v2

    move-object/from16 v23, v28

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v2, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v12

    move v9, v2

    move-object v11, v13

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RadialGradient;

    mul-float v23, v2, v14

    const/16 v7, -0x10e

    int-to-float v7, v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v24, v7, v8

    const v7, 0x3f0ccccd    # 0.55f

    mul-float v25, v2, v7

    const v2, 0x40ffffff    # 7.9999995f

    filled-new-array {v2, v15}, [I

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v22, v6

    invoke-direct/range {v22 .. v28}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_3
    new-instance v6, Landroid/graphics/RadialGradient;

    int-to-float v7, v4

    const v8, 0x3ea3d70a    # 0.32f

    mul-float/2addr v8, v7

    int-to-float v9, v5

    const v10, 0x3ed70a3d    # 0.42f

    mul-float v16, v9, v10

    const v9, 0x3f1eb852    # 0.62f

    mul-float v17, v7, v9

    const v7, 0x5cffffff

    const v9, 0x26ffffff

    filled-new-array {v7, v9, v15}, [I

    move-result-object v18

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v6

    move v15, v8

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v20}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    int-to-float v9, v4

    int-to-float v10, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v12

    move-object v11, v13

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v3, v2

    :cond_4
    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final showCardPrompt()V
    .locals 2

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->moduleCards:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->tilesReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->promptsPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->cardPrompt:Landroid/app/Dialog;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/gathin/tvhome/Sky;->broken:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda25;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda25;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gathin/tvhome/Sky;->run(Lcom/gathin/tvhome/CardFeature$Step;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final showInputs()V
    .locals 38

    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/gathin/tvhome/MainActivity;->coocaaSources:Z

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/gathin/tvhome/CoocaaSources;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->sourcePanelService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/MainActivity;->liveTvIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/MainActivity;->openSourcePanel()V

    return-void

    :cond_1
    iget-boolean v9, v7, Lcom/gathin/tvhome/MainActivity;->topMenu:Z

    if-eqz v9, :cond_2

    const v0, 0x7f090037

    goto :goto_2

    :cond_2
    const v0, 0x7f090032

    :goto_2
    invoke-virtual {v7, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0010

    iget-object v2, v7, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    const v0, 0x7f0900ad

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    iget v2, v7, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v7, v12, v14}, Lcom/gathin/tvhome/MainActivity;->glassPopup(Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v15

    const-string v0, "tv_input"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/tv/TvInputManager;

    const v16, 0x7f070009

    const v17, 0x7f070011

    const-string v5, "HDMI"

    if-eqz v6, :cond_2f

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroid/media/tv/TvInputManager;->getTvInputList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v2, v7, v3}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/media/tv/TvInputInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    check-cast v11, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v11}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    :cond_4
    :goto_5
    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v11}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual {v11, v7}, Landroid/media/tv/TvInputInfo;->isHidden(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v21, v0

    if-nez v20, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    move-object/from16 v0, v20

    :goto_6
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    move-object/from16 v21, v10

    const/16 v10, 0x3ef

    if-eqz v20, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/tv/TvInputInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v0

    if-eq v0, v10, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual/range {v20 .. v20}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual/range {v20 .. v20}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/media/tv/TvInputManager;->getInputState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    add-int/lit8 v11, v11, 0x1

    :cond_b
    :goto_8
    move-object/from16 v10, v21

    move-object/from16 v0, v22

    goto :goto_7

    :cond_c
    move-object/from16 v22, v0

    goto :goto_8

    :cond_d
    const/4 v0, 0x1

    if-le v4, v0, :cond_e

    if-ne v11, v4, :cond_e

    const/4 v11, 0x1

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    :goto_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v10, v22

    check-cast v10, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v22

    if-nez v22, :cond_15

    move/from16 v22, v9

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v18, 0x1

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_14

    iget-object v9, v7, Lcom/gathin/tvhome/MainActivity;->liveTvInputId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, v7, Lcom/gathin/tvhome/MainActivity;->liveTvInputId:Ljava/lang/String;

    move/from16 v24, v14

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_b

    :cond_f
    move-object/from16 v25, v12

    goto :goto_c

    :cond_10
    move/from16 v24, v14

    :goto_b
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v14, ".*/HW\\d+$"

    invoke-virtual {v9, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v25, v12

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "analog"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v0, :cond_13

    if-eqz v9, :cond_11

    if-eqz v1, :cond_13

    :cond_11
    if-ne v9, v1, :cond_12

    if-eqz v4, :cond_12

    if-eqz v12, :cond_13

    :cond_12
    if-ne v9, v1, :cond_16

    if-ne v12, v4, :cond_16

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_16

    :cond_13
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    move v14, v12

    move v12, v9

    move-object v9, v0

    goto :goto_d

    :cond_14
    move-object/from16 v25, v12

    move/from16 v24, v14

    goto :goto_c

    :cond_15
    move/from16 v22, v9

    move-object/from16 v25, v12

    move/from16 v24, v14

    const/16 v18, 0x1

    :cond_16
    :goto_c
    move-object v9, v0

    move v12, v1

    move v14, v4

    :goto_d
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v10, v7}, Landroid/media/tv/TvInputInfo;->isHidden(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    :goto_e
    move-object/from16 v30, v2

    move-object/from16 v27, v3

    move-object/from16 v37, v5

    move-object/from16 v29, v9

    goto/16 :goto_17

    :cond_18
    const/16 v26, -0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/gathin/tvhome/MainActivity;->mappedSource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_e

    :cond_19
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-virtual {v10, v7}, Landroid/media/tv/TvInputInfo;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1b
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v1

    const/16 v4, 0x3ef

    if-ne v1, v4, :cond_1c

    move/from16 v1, v18

    goto :goto_10

    :cond_1c
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_1d

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "HDMI "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    move-object v4, v0

    invoke-virtual {v10, v7}, Landroid/media/tv/TvInputInfo;->loadCustomLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v27

    if-lez v27, :cond_1e

    move-object/from16 v27, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    move/from16 v28, v18

    goto :goto_11

    :cond_1e
    move-object/from16 v27, v3

    :cond_1f
    const/16 v28, 0x0

    :goto_11
    if-nez v1, :cond_20

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_20

    if-nez v19, :cond_20

    invoke-virtual {v7, v13}, Lcom/gathin/tvhome/MainActivity;->addSeparator(Landroid/widget/LinearLayout;)V

    :cond_20
    if-nez v1, :cond_21

    move/from16 v19, v18

    :cond_21
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v29, v9

    const-string v9, " \u00b7 "

    if-eqz v3, :cond_29

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v1, v7}, Landroid/media/tv/TvInputInfo;->loadCustomLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v30

    if-nez v30, :cond_24

    :cond_22
    if-eqz v28, :cond_23

    move-object v3, v0

    goto :goto_13

    :cond_23
    invoke-virtual {v1, v7}, Landroid/media/tv/TvInputInfo;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_24
    :goto_13
    if-eqz v3, :cond_25

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v30

    if-nez v30, :cond_26

    :cond_25
    move-object/from16 v30, v0

    goto :goto_14

    :cond_26
    move-object/from16 v30, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v0

    goto :goto_15

    :goto_14
    move-object/from16 v31, v4

    :goto_15
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_27

    move/from16 v32, v26

    goto :goto_16

    :cond_27
    invoke-virtual {v6, v0}, Landroid/media/tv/TvInputManager;->getInputState(Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    :goto_16
    new-instance v3, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;

    const/4 v1, 0x2

    invoke-direct {v3, v7, v0, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;I)V

    const v33, 0x7f070011

    move-object/from16 v1, v30

    move-object/from16 v0, p0

    move-object/from16 v34, v1

    move-object v1, v13

    move-object/from16 v30, v2

    move-object v2, v15

    move-object/from16 v35, v3

    move/from16 v3, v33

    move-object/from16 v36, v4

    const/16 v23, 0x3ef

    move-object/from16 v4, v31

    move-object/from16 v37, v5

    move/from16 v5, v32

    move/from16 v31, v12

    move-object v12, v6

    move-object/from16 v6, v35

    invoke-virtual/range {v0 .. v6}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    move-object v6, v12

    move-object/from16 v2, v30

    move/from16 v12, v31

    move-object/from16 v0, v34

    move-object/from16 v4, v36

    move-object/from16 v5, v37

    goto/16 :goto_12

    :cond_28
    move-object/from16 v30, v2

    move-object/from16 v37, v5

    :goto_17
    move/from16 v31, v12

    const/16 v23, 0x3ef

    move-object v12, v6

    goto :goto_1c

    :cond_29
    move-object/from16 v34, v0

    move-object/from16 v30, v2

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move/from16 v31, v12

    const/16 v23, 0x3ef

    move-object v12, v6

    if-eqz v28, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_18

    :cond_2a
    move-object/from16 v2, v36

    move-object v4, v2

    :goto_18
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2c

    if-eqz v11, :cond_2b

    goto :goto_19

    :cond_2b
    invoke-virtual {v12, v0}, Landroid/media/tv/TvInputManager;->getInputState(Ljava/lang/String;)I

    move-result v2

    move v5, v2

    goto :goto_1a

    :cond_2c
    :goto_19
    move/from16 v5, v26

    :goto_1a
    if-eqz v1, :cond_2d

    move/from16 v3, v17

    goto :goto_1b

    :cond_2d
    move/from16 v3, v16

    :goto_1b
    new-instance v6, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;

    const/4 v1, 0x3

    invoke-direct {v6, v7, v0, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-virtual/range {v0 .. v6}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    :goto_1c
    move-object v6, v12

    move v4, v14

    move/from16 v9, v22

    move/from16 v10, v23

    move/from16 v14, v24

    move-object/from16 v12, v25

    move-object/from16 v3, v27

    move-object/from16 v0, v29

    move-object/from16 v2, v30

    move/from16 v1, v31

    move-object/from16 v5, v37

    goto/16 :goto_a

    :cond_2e
    move-object/from16 v37, v5

    move/from16 v22, v9

    move-object/from16 v25, v12

    move/from16 v24, v14

    const/16 v18, 0x1

    move-object/from16 v19, v0

    goto :goto_1d

    :cond_2f
    move-object/from16 v37, v5

    move/from16 v22, v9

    move-object/from16 v21, v10

    move-object/from16 v25, v12

    move/from16 v24, v14

    const/16 v18, 0x1

    const/16 v19, 0x0

    :goto_1d
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_32

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gathin/tvhome/CoocaaSources$Source;

    iget-object v1, v0, Lcom/gathin/tvhome/CoocaaSources$Source;->name:Ljava/lang/String;

    move-object/from16 v9, v37

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    move/from16 v3, v17

    goto :goto_1f

    :cond_30
    const-string v1, "VOD"

    iget-object v2, v0, Lcom/gathin/tvhome/CoocaaSources$Source;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const v1, 0x7f070012

    move v3, v1

    goto :goto_1f

    :cond_31
    move/from16 v3, v16

    :goto_1f
    new-instance v6, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;

    const/4 v1, 0x0

    invoke-direct {v6, v7, v0, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v4, v0, Lcom/gathin/tvhome/CoocaaSources$Source;->label:Ljava/lang/String;

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-virtual/range {v0 .. v6}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v37, v9

    goto :goto_1e

    :cond_32
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->sourcePanelService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    const v0, 0x7f10003d

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v0, 0xa

    invoke-direct {v6, v7, v0}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v3, 0x7f070011

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-virtual/range {v0 .. v6}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/MainActivity;->liveTvIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_36

    if-eqz v19, :cond_36

    iget-object v1, v7, Lcom/gathin/tvhome/MainActivity;->liveTvInputId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_34

    invoke-static/range {v19 .. v19}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_20

    :cond_34
    invoke-static/range {v19 .. v19}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_20
    if-eqz v1, :cond_35

    const-string v1, "vnd.android.cursor.dir/channel"

    goto :goto_21

    :cond_35
    const-string v1, "vnd.android.cursor.item/channel"

    :goto_21
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v7, Lcom/gathin/tvhome/MainActivity;->liveTvPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_36

    move-object v0, v1

    :cond_36
    if-eqz v0, :cond_38

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_37

    invoke-virtual {v7, v13}, Lcom/gathin/tvhome/MainActivity;->addSeparator(Landroid/widget/LinearLayout;)V

    :cond_37
    const v1, 0x7f10004b

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;

    const/4 v1, 0x1

    invoke-direct {v6, v7, v0, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/gathin/tvhome/MainActivity;Landroid/content/Intent;I)V

    const v3, 0x7f070012

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-virtual/range {v0 .. v6}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    :cond_38
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_39

    invoke-virtual {v7, v13}, Lcom/gathin/tvhome/MainActivity;->addSeparator(Landroid/widget/LinearLayout;)V

    :cond_39
    new-instance v6, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v0, 0xb

    invoke-direct {v6, v7, v0}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v3, 0x7f07000e

    const-string v4, "Samsung Game Bar & Device Care"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-virtual/range {v0 .. v6}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3a

    const v0, 0x7f100055

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3a
    move-object/from16 v0, v25

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, v7, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v2, v24

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move/from16 v2, v22

    if-eq v1, v2, :cond_3b

    const v1, 0x800005

    :goto_22
    move-object/from16 v2, v21

    goto :goto_23

    :cond_3b
    const v1, 0x800003

    goto :goto_22

    :goto_23
    invoke-virtual {v7, v15, v0, v2, v1}, Lcom/gathin/tvhome/MainActivity;->dropIn(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final showSamsungQuickBar()V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    const v2, 0x7f0b0010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/high16 v2, 0x43960000    # 300.0f

    iget v4, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/gathin/tvhome/MainActivity;->glassPopup(Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-static {p0}, Lcom/gathin/tvhome/Sky;->getMemoryStatus(Landroid/content/Context;)Lcom/gathin/tvhome/DeviceCare$MemoryStatus;

    move-result-object v11

    new-instance v10, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v4, 0x11

    invoke-direct {v10, p0, v4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v7, 0x7f07000e

    const-string v8, "Game Bar \u00b7 60 FPS \u00b7 1080p"

    const/4 v9, -0x1

    move-object v4, p0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual/range {v4 .. v10}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Clean RAM ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v11, Lcom/gathin/tvhome/DeviceCare$MemoryStatus;->availMb:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " MB Free)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v4, 0x12

    invoke-direct {v10, p0, v4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v7, 0x7f07000b

    move-object v4, p0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual/range {v4 .. v10}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    invoke-static {p0}, Lcom/gathin/tvhome/SleepTimer;->getActiveMinutes(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sleep Timer: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "m active"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v8, v4

    goto :goto_1

    :cond_0
    const-string v4, "Sleep Timer: Off (Click to set 30m)"

    goto :goto_0

    :goto_1
    new-instance v10, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v4, 0x13

    invoke-direct {v10, p0, v4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v7, 0x7f070018

    const/4 v9, -0x1

    move-object v4, p0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual/range {v4 .. v10}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/gathin/tvhome/MainActivity;->addSeparator(Landroid/widget/LinearLayout;)V

    new-instance v10, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v4, 0x14

    invoke-direct {v10, p0, v4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v7, 0x7f070011

    const-string v8, "HDMI 1"

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    new-instance v10, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v4, 0x15

    invoke-direct {v10, p0, v4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const-string v8, "HDMI 2 (eARC)"

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    new-instance v10, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v4, 0x16

    invoke-direct {v10, p0, v4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const-string v8, "HDMI 3"

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    const/high16 v4, 0x43820000    # 260.0f

    iget v5, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, 0x43b40000    # 360.0f

    iget v7, p0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    const v4, 0x7f090032

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    :goto_2
    const v5, 0x800005

    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/gathin/tvhome/MainActivity;->dropIn(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final startPendingSettingsReorder()V
    .locals 3

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->settingsRecreationPending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->tilesReady:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.gathin.tvhome.extra.REORDER_FROM_SETTINGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->toggleReorder()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final stopAmbientAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->ambientAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gathin/tvhome/MainActivity;->ambientAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public final swapIntoDock(II)V
    .locals 3

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object v0

    if-eq p2, p1, :cond_0

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/MainActivity;IILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/gathin/tvhome/MainActivity;->keepScroll(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->dockInSession:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v2, p1}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    if-lt p2, v1, :cond_0

    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity;->dockInSession:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/gathin/tvhome/MainActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/gathin/tvhome/MainActivity$15;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final tileAlpha(I)F
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->movingKey:Ljava/lang/String;

    const v1, 0x3ee66666    # 0.45f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v3, p1}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/gathin/tvhome/MainActivity;->dockEditSlot:I

    if-ltz v0, :cond_2

    if-ltz p1, :cond_2

    sget v3, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    if-ge p1, v3, :cond_2

    if-eq p1, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final toggleReorder()V
    .locals 3

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->beginReorder()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v1}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    const v0, 0x7f10007a

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final updateCardStates(Landroid/widget/LinearLayout;)V
    .locals 8

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->cards:Ljava/util/List;

    invoke-static {v0}, Lcom/gathin/tvhome/Cards;->shown(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/gathin/tvhome/MainActivity;->cards:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gathin/tvhome/Cards$Card;

    iget-object v7, v6, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v6

    :cond_1
    const v3, 0x7f0900c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v4, :cond_7

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget v4, v4, Lcom/gathin/tvhome/Cards$Card;->state:I

    invoke-static {v4}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->ordinal(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v3, 0x4

    if-eq v4, v3, :cond_2

    const v3, 0x7f100013

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const v3, 0x7f100012

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    const v3, 0x7f100017

    goto :goto_1

    :cond_4
    const v3, 0x7f100016

    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    const v3, 0x7f100015

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    const v3, 0x7f100014

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final updateClockVisibility()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x1941f297c00L

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->clockBlock:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity;->clockCheck:Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->updateGreeting()V

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method

.method public final updateGreeting()V
    .locals 31

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/16 v2, 0x16d

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v9, "in"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x6

    const/16 v12, 0xa

    const/4 v13, 0x5

    const v14, 0x7f100030

    const v15, 0x7f100032

    const/16 v10, 0xc

    const v17, 0x7f100033

    if-nez v9, :cond_a

    const-string v9, "id"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_3

    :cond_0
    const-string v9, "es"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "ES"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const-string v6, "ca"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    if-ge v4, v11, :cond_4

    :cond_3
    :goto_0
    move/from16 v15, v17

    goto :goto_4

    :cond_4
    if-ge v4, v10, :cond_5

    goto :goto_4

    :cond_5
    const/16 v6, 0x15

    if-ge v4, v6, :cond_3

    :goto_1
    move v15, v14

    goto :goto_4

    :cond_6
    if-ge v4, v13, :cond_7

    goto :goto_0

    :cond_7
    if-ge v4, v10, :cond_8

    goto :goto_4

    :cond_8
    const/16 v6, 0x11

    if-ge v4, v6, :cond_9

    goto :goto_1

    :cond_9
    const/16 v6, 0x16

    if-ge v4, v6, :cond_3

    :goto_2
    const v15, 0x7f100031

    goto :goto_4

    :cond_a
    :goto_3
    if-ge v4, v12, :cond_b

    goto :goto_4

    :cond_b
    const/16 v6, 0xf

    if-ge v4, v6, :cond_c

    goto :goto_1

    :cond_c
    const/16 v6, 0x12

    if-ge v4, v6, :cond_3

    goto :goto_2

    :goto_4
    iget-boolean v4, v0, Lcom/gathin/tvhome/MainActivity;->festive:Z

    const-string v6, ""

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->festival:Lcom/gathin/tvhome/Festival;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v4, Lcom/gathin/tvhome/Festival;->greeting:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_d

    move-object v6, v9

    goto :goto_5

    :cond_d
    iget-object v4, v4, Lcom/gathin/tvhome/Festival;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "dussehra"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "diwali"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    const v4, 0x7f100025

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_f
    const v4, 0x7f100026

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_10
    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->greeting:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->greeting:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/gathin/tvhome/MainActivity;->festival:Lcom/gathin/tvhome/Festival;

    iget v6, v6, Lcom/gathin/tvhome/Festival;->accent:I

    if-eqz v6, :cond_11

    goto :goto_6

    :cond_11
    const/16 v6, -0x4dc4

    :goto_6
    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v6, v6, 0xff

    rsub-int v14, v8, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v8, v14

    rsub-int v14, v9, 0xff

    int-to-float v14, v14

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v9, v14

    rsub-int v14, v6, 0xff

    int-to-float v14, v14

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v6, v14

    const/high16 v14, -0x1000000

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v8, v14

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    or-int/2addr v6, v8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_12
    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->greeting:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/gathin/tvhome/MainActivity;->greetingName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_13
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/gathin/tvhome/MainActivity;->greetingName:Ljava/lang/String;

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f100035

    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_7
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->greeting:Landroid/widget/TextView;

    iget v6, v0, Lcom/gathin/tvhome/MainActivity;->greetingColor:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_8
    iget-boolean v4, v0, Lcom/gathin/tvhome/MainActivity;->shamsi:Z

    const/4 v6, 0x4

    const/4 v8, 0x2

    if-eqz v4, :cond_17

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->shamsiDate:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v8}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v11, v16, 0x1

    invoke-virtual {v14, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    new-array v12, v10, [I

    fill-array-data v12, :array_0

    if-le v11, v8, :cond_14

    add-int/lit8 v11, v15, 0x1

    goto :goto_9

    :cond_14
    move v11, v15

    :goto_9
    const v18, 0x56d52

    mul-int/2addr v15, v2

    add-int v15, v15, v18

    add-int/lit8 v18, v11, 0x3

    div-int/lit8 v18, v18, 0x4

    add-int v18, v18, v15

    add-int/lit8 v15, v11, 0x63

    div-int/lit8 v15, v15, 0x64

    sub-int v18, v18, v15

    add-int/lit16 v11, v11, 0x18f

    div-int/lit16 v11, v11, 0x190

    add-int v11, v11, v18

    add-int/2addr v11, v14

    aget v12, v12, v16

    add-int/2addr v11, v12

    div-int/lit16 v12, v11, 0x2f15

    mul-int/lit8 v12, v12, 0x21

    add-int/lit16 v12, v12, -0x63b

    rem-int/lit16 v11, v11, 0x2f15

    div-int/lit16 v14, v11, 0x5b5

    mul-int/2addr v14, v6

    add-int/2addr v14, v12

    rem-int/lit16 v11, v11, 0x5b5

    if-le v11, v2, :cond_15

    sub-int/2addr v11, v3

    div-int/lit16 v12, v11, 0x16d

    add-int/2addr v14, v12

    rem-int/2addr v11, v2

    :cond_15
    const/16 v2, 0xba

    if-ge v11, v2, :cond_16

    div-int/lit8 v2, v11, 0x1f

    add-int/2addr v2, v3

    rem-int/lit8 v11, v11, 0x1f

    :goto_a
    add-int/2addr v11, v3

    goto :goto_b

    :cond_16
    sub-int/2addr v11, v2

    div-int/lit8 v2, v11, 0x1e

    add-int/lit8 v2, v2, 0x7

    rem-int/lit8 v11, v11, 0x1e

    goto :goto_a

    :goto_b
    filled-new-array {v14, v2, v11}, [I

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget v12, v2, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/gathin/tvhome/Sky;->MONTHS:[I

    aget v15, v2, v3

    sub-int/2addr v15, v3

    aget v14, v14, v15

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v7

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    iget-boolean v2, v0, Lcom/gathin/tvhome/MainActivity;->lunar:Z

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->lunarDate:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v9, v0, Lcom/gathin/tvhome/MainActivity;->lunarOffset:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v3

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    int-to-double v14, v9

    invoke-static {v12, v13, v11}, Lcom/gathin/tvhome/Sky;->jdFromDate(III)J

    move-result-wide v12

    long-to-double v7, v12

    const-wide v18, 0x41426cd689db17deL    # 2415021.076998695

    sub-double v7, v7, v18

    const-wide v20, 0x403d87d4abcb41d5L    # 29.530588853

    div-double v7, v7, v20

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/lit8 v8, v7, 0x1

    invoke-static {v8, v14, v15}, Lcom/gathin/tvhome/Sky;->newMoonDay(ID)J

    move-result-wide v22

    cmp-long v8, v22, v12

    if-lez v8, :cond_18

    invoke-static {v7, v14, v15}, Lcom/gathin/tvhome/Sky;->newMoonDay(ID)J

    move-result-wide v22

    :cond_18
    invoke-static {v11, v14, v15}, Lcom/gathin/tvhome/Sky;->lunarMonth11(ID)J

    move-result-wide v7

    cmp-long v24, v7, v22

    if-ltz v24, :cond_19

    add-int/lit8 v9, v11, -0x1

    invoke-static {v9, v14, v15}, Lcom/gathin/tvhome/Sky;->lunarMonth11(ID)J

    move-result-wide v25

    move-wide/from16 v29, v7

    move-wide/from16 v7, v25

    move-wide/from16 v25, v29

    goto :goto_c

    :cond_19
    add-int/2addr v11, v3

    invoke-static {v11, v14, v15}, Lcom/gathin/tvhome/Sky;->lunarMonth11(ID)J

    move-result-wide v25

    :goto_c
    sub-long v12, v12, v22

    const-wide/16 v27, 0x1

    add-long v12, v12, v27

    long-to-int v9, v12

    sub-long v12, v22, v7

    long-to-double v12, v12

    const-wide/high16 v22, 0x403d000000000000L    # 29.0

    div-double v12, v12, v22

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    add-int/lit8 v13, v12, 0xb

    sub-long v25, v25, v7

    const-wide/16 v22, 0x16d

    cmp-long v22, v25, v22

    if-lez v22, :cond_1d

    long-to-double v7, v7

    sub-double v7, v7, v18

    div-double v7, v7, v20

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v7, v7, v18

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v19, v2

    invoke-static {v8, v14, v15}, Lcom/gathin/tvhome/Sky;->newMoonDay(ID)J

    move-result-wide v1

    invoke-static {v1, v2, v14, v15}, Lcom/gathin/tvhome/Sky;->sunLongitude(JD)I

    move-result v1

    move v2, v3

    :goto_d
    add-int/lit8 v8, v2, 0x1

    add-int v3, v7, v8

    move/from16 v22, v7

    invoke-static {v3, v14, v15}, Lcom/gathin/tvhome/Sky;->newMoonDay(ID)J

    move-result-wide v6

    invoke-static {v6, v7, v14, v15}, Lcom/gathin/tvhome/Sky;->sunLongitude(JD)I

    move-result v3

    if-eq v3, v1, :cond_1b

    const/16 v1, 0xe

    if-lt v8, v1, :cond_1a

    goto :goto_e

    :cond_1a
    move v1, v3

    move v2, v8

    move/from16 v7, v22

    const/4 v3, 0x1

    const/4 v6, 0x4

    goto :goto_d

    :cond_1b
    :goto_e
    if-lt v12, v2, :cond_1c

    const/16 v1, 0xa

    add-int/lit8 v13, v12, 0xa

    if-ne v12, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_10

    :cond_1c
    :goto_f
    const/4 v1, 0x0

    goto :goto_10

    :cond_1d
    move-object/from16 v19, v2

    goto :goto_f

    :goto_10
    if-le v13, v10, :cond_1e

    add-int/lit8 v13, v13, -0xc

    :cond_1e
    if-lt v13, v5, :cond_1f

    const/4 v2, 0x4

    if-ge v12, v2, :cond_1f

    add-int/lit8 v11, v11, -0x1

    :cond_1f
    filled-new-array {v9, v13, v11, v1}, [I

    move-result-object v1

    const/4 v2, 0x3

    aget v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    aget v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f100051

    invoke-virtual {v4, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_20
    aget v2, v1, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_11
    const v3, 0x7f02000a

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f020009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget v7, v1, v6

    const/4 v8, 0x6

    add-int/2addr v7, v8

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Math;->floorMod(II)I

    move-result v7

    aget-object v3, v3, v7

    aget v6, v1, v6

    add-int/lit8 v6, v6, 0x8

    invoke-static {v6, v10}, Ljava/lang/Math;->floorMod(II)I

    move-result v6

    aget-object v5, v5, v6

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x7f100052

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f100050

    invoke-virtual {v4, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    return-void

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data
.end method

.method public final updateInputsButton()V
    .locals 7

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->showInputsPill:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->liveTvIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->sourcePanelService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->coocaaSources:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/gathin/tvhome/CoocaaSources;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    const-string v4, "tv_input"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/media/tv/TvInputManager;->getTvInputList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, p0}, Landroid/media/tv/TvInputInfo;->isHidden(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    if-eqz v2, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateRace()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const-string v3, "SPRINT QUALI"

    const/4 v4, 0x0

    const-string v5, "RACE"

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->raceCalendar:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->raceCalendar:Ljava/util/List;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v8

    sget-object v9, Lcom/gathin/tvhome/RaceWeekend;->LEAD:Ljava/time/Duration;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Lcom/gathin/tvhome/RaceWeekend$Race;

    iget-object v9, v14, Lcom/gathin/tvhome/RaceWeekend$Race;->sessions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    iget-object v9, v14, Lcom/gathin/tvhome/RaceWeekend$Race;->sessions:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/gathin/tvhome/RaceWeekend$Session;

    iget-object v13, v13, Lcom/gathin/tvhome/RaceWeekend$Session;->start:Ljava/time/Instant;

    sget-object v15, Lcom/gathin/tvhome/RaceWeekend;->LEAD:Ljava/time/Duration;

    invoke-virtual {v13, v15}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v13

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v6

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/gathin/tvhome/RaceWeekend$Session;

    iget-object v15, v15, Lcom/gathin/tvhome/RaceWeekend$Session;->start:Ljava/time/Instant;

    sget-object v2, Lcom/gathin/tvhome/RaceWeekend;->TAIL:Ljava/time/Duration;

    invoke-virtual {v15, v2}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v8, v13}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v8, v2}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    const/16 v16, 0x0

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gathin/tvhome/RaceWeekend$Session;

    iget-object v13, v9, Lcom/gathin/tvhome/RaceWeekend$Session;->start:Ljava/time/Instant;

    invoke-virtual {v8, v13}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v13

    if-eqz v13, :cond_6

    if-nez v7, :cond_5

    sget-object v13, Lcom/gathin/tvhome/RaceWeekend$Status;->NEXT:Lcom/gathin/tvhome/RaceWeekend$Status;

    goto :goto_2

    :cond_5
    sget-object v13, Lcom/gathin/tvhome/RaceWeekend$Status;->LATER:Lcom/gathin/tvhome/RaceWeekend$Status;

    :goto_2
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_4

    move-object v7, v9

    goto :goto_1

    :cond_6
    iget-object v13, v9, Lcom/gathin/tvhome/RaceWeekend$Session;->name:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-wide/16 v17, 0x2

    invoke-static/range {v17 .. v18}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v13

    goto :goto_3

    :cond_7
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-wide/16 v17, 0x2d

    invoke-static/range {v17 .. v18}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v13

    goto :goto_3

    :cond_8
    invoke-static {v10, v11}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v13

    :goto_3
    iget-object v12, v9, Lcom/gathin/tvhome/RaceWeekend$Session;->start:Ljava/time/Instant;

    invoke-virtual {v12, v13}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v12

    if-eqz v12, :cond_9

    sget-object v12, Lcom/gathin/tvhome/RaceWeekend$Status;->LIVE:Lcom/gathin/tvhome/RaceWeekend$Status;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v9

    goto :goto_1

    :cond_9
    sget-object v9, Lcom/gathin/tvhome/RaceWeekend$Status;->DONE:Lcom/gathin/tvhome/RaceWeekend$Status;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    new-instance v2, Lcom/gathin/tvhome/RaceWeekend$State;

    if-nez v7, :cond_b

    const/16 v18, 0x0

    goto :goto_4

    :cond_b
    iget-object v9, v7, Lcom/gathin/tvhome/RaceWeekend$Session;->start:Ljava/time/Instant;

    invoke-static {v8, v9}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v12

    move-object/from16 v18, v12

    :goto_4
    move-object v13, v2

    move-object/from16 v17, v7

    invoke-direct/range {v13 .. v18}, Lcom/gathin/tvhome/RaceWeekend$State;-><init>(Lcom/gathin/tvhome/RaceWeekend$Race;Ljava/util/ArrayList;Lcom/gathin/tvhome/RaceWeekend$Session;Lcom/gathin/tvhome/RaceWeekend$Session;Ljava/time/Duration;)V

    move-object v12, v2

    goto :goto_5

    :cond_c
    const/4 v12, 0x0

    :goto_5
    if-nez v12, :cond_d

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->racePanel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_d
    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->raceKicker:Landroid/widget/TextView;

    iget-object v7, v12, Lcom/gathin/tvhome/RaceWeekend$State;->race:Lcom/gathin/tvhome/RaceWeekend$Race;

    iget-object v8, v7, Lcom/gathin/tvhome/RaceWeekend$Race;->place:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const-string v9, "GP"

    const-string v13, "Grand Prix"

    iget-object v14, v7, Lcom/gathin/tvhome/RaceWeekend$Race;->name:Ljava/lang/String;

    iget v15, v7, Lcom/gathin/tvhome/RaceWeekend$Race;->round:I

    if-eqz v8, :cond_e

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v13, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x7f100067

    invoke-virtual {v0, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_e
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v13, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v13, v7, Lcom/gathin/tvhome/RaceWeekend$Race;->place:Ljava/lang/String;

    filled-new-array {v8, v9, v13}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x7f100066

    invoke-virtual {v0, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x21

    const v8, -0xc4d1

    iget-object v9, v12, Lcom/gathin/tvhome/RaceWeekend$State;->live:Lcom/gathin/tvhome/RaceWeekend$Session;

    if-eqz v9, :cond_f

    new-instance v10, Landroid/text/SpannableString;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "\u25cf  "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/gathin/tvhome/RaceWeekend$Session;->title(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const v13, 0x7f100069

    invoke-virtual {v0, v13, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10, v9, v4, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v9, v0, Lcom/gathin/tvhome/MainActivity;->raceHeadline:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_f
    iget-object v9, v12, Lcom/gathin/tvhome/RaceWeekend$State;->next:Lcom/gathin/tvhome/RaceWeekend$Session;

    if-eqz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-object v14, v12, Lcom/gathin/tvhome/RaceWeekend$State;->untilNext:Ljava/time/Duration;

    invoke-virtual {v14}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v14

    const-wide/16 v16, 0x3b

    add-long v14, v14, v16

    const-wide/16 v16, 0x3c

    div-long v14, v14, v16

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    cmp-long v14, v10, v16

    if-gez v14, :cond_10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f100064

    invoke-virtual {v13, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_10
    div-long v14, v10, v16

    const-wide/16 v19, 0x18

    cmp-long v18, v14, v19

    if-gez v18, :cond_11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    rem-long v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v14, v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f100063

    invoke-virtual {v13, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_11
    div-long v10, v14, v19

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    rem-long v14, v14, v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f100062

    invoke-virtual {v13, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_7
    iget-object v11, v0, Lcom/gathin/tvhome/MainActivity;->raceHeadline:Landroid/widget/TextView;

    iget-object v13, v9, Lcom/gathin/tvhome/RaceWeekend$Session;->name:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const v9, 0x7f100068

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/gathin/tvhome/RaceWeekend$Session;->title(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const v10, 0x7f10006a

    invoke-virtual {v0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_8
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_13
    iget-object v9, v0, Lcom/gathin/tvhome/MainActivity;->raceHeadline:Landroid/widget/TextView;

    const v10, 0x7f100065

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    :goto_9
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "EEE HH:mm"

    goto :goto_a

    :cond_14
    const-string v9, "EEE h:mm a"

    :goto_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v9

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v9

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v11, v4

    :goto_b
    iget-object v13, v7, Lcom/gathin/tvhome/RaceWeekend$Race;->sessions:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_20

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/gathin/tvhome/RaceWeekend$Session;

    if-lez v11, :cond_15

    const-string v14, "     "

    invoke-virtual {v10, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_15
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    iget-object v8, v13, Lcom/gathin/tvhome/RaceWeekend$Session;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :goto_c
    const/4 v4, -0x1

    goto :goto_d

    :sswitch_0
    const-string v4, "QUALIFYING"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_c

    :cond_16
    const/4 v4, 0x6

    goto :goto_d

    :sswitch_1
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_c

    :cond_17
    const/4 v4, 0x5

    goto :goto_d

    :sswitch_2
    const-string v4, "FP3"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_c

    :cond_18
    const/4 v4, 0x4

    goto :goto_d

    :sswitch_3
    const-string v4, "FP2"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_c

    :cond_19
    const/4 v4, 0x3

    goto :goto_d

    :sswitch_4
    const-string v4, "FP1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_c

    :cond_1a
    move v4, v1

    goto :goto_d

    :sswitch_5
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_c

    :cond_1b
    move v4, v6

    goto :goto_d

    :sswitch_6
    const-string v4, "SPRINT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v4, 0x0

    :goto_d
    packed-switch v4, :pswitch_data_0

    goto :goto_e

    :pswitch_0
    const v4, 0x7f100072

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :pswitch_1
    const v4, 0x7f100074

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :pswitch_2
    const v4, 0x7f100070

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :pswitch_3
    const v4, 0x7f10006e

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :pswitch_4
    const v4, 0x7f10006c

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :pswitch_5
    const v4, 0x7f100077

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :pswitch_6
    const v4, 0x7f100078

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_e
    invoke-virtual {v10, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v8, "  "

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v8, v13, Lcom/gathin/tvhome/RaceWeekend$Session;->start:Ljava/time/Instant;

    invoke-virtual {v9, v8}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, v12, Lcom/gathin/tvhome/RaceWeekend$State;->statuses:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gathin/tvhome/RaceWeekend$Status;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_1f

    if-eq v4, v6, :cond_1e

    if-eq v4, v1, :cond_1d

    const v4, -0x66000001

    goto :goto_f

    :cond_1d
    const/4 v4, -0x1

    goto :goto_f

    :cond_1e
    const v4, -0xc4d1

    goto :goto_f

    :cond_1f
    const v4, 0x47ffffff

    :goto_f
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v10, v8, v14, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/2addr v11, v6

    const/4 v4, 0x0

    const v8, -0xc4d1

    goto/16 :goto_b

    :cond_20
    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->raceSessions:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->racePanel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6dd009e6 -> :sswitch_6
        -0x358660ac -> :sswitch_5
        0x110a7 -> :sswitch_4
        0x110a8 -> :sswitch_3
        0x110a9 -> :sswitch_2
        0x2642d1 -> :sswitch_1
        0x1b116575 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateWifiLabel()V
    .locals 27

    move-object/from16 v0, p0

    const-string v1, ""

    const v2, 0x7f1000a2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const v4, 0x7f07000d

    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    const-string v11, "connectivity"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v12

    goto :goto_0

    :catch_0
    move v6, v9

    move v15, v6

    move/from16 v18, v15

    move/from16 v19, v18

    goto/16 :goto_6

    :cond_0
    new-array v12, v9, [Landroid/net/Network;

    :goto_0
    array-length v13, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v9

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_1
    if-ge v14, v13, :cond_7

    :try_start_1
    aget-object v10, v12, v14

    invoke-virtual {v11, v10}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v10, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v20

    if-eqz v20, :cond_2

    move/from16 v18, v8

    goto :goto_2

    :cond_2
    const/16 v6, 0xc

    invoke-virtual {v10, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const/16 v6, 0x10

    :try_start_2
    invoke-virtual {v10, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move/from16 v19, v8

    :cond_4
    invoke-virtual {v10, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move/from16 v16, v8

    :cond_5
    invoke-virtual {v10, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v15, v8

    if-eqz v6, :cond_6

    move/from16 v17, v15

    :cond_6
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :catch_1
    move v15, v8

    :catch_2
    move v6, v9

    goto/16 :goto_6

    :cond_7
    if-nez v15, :cond_8

    const v6, 0x7f10005a

    :try_start_3
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v6, v9

    move v11, v6

    move/from16 v18, v11

    goto/16 :goto_7

    :cond_8
    if-eqz v16, :cond_9

    const v6, 0x7f100024

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v10, v4

    move v6, v7

    move v11, v8

    goto :goto_8

    :cond_9
    if-eqz v17, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v10, "wifi"

    invoke-virtual {v6, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    :goto_4
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    invoke-static {v6, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :cond_c
    move v6, v5

    :goto_5
    if-eqz v10, :cond_e

    :try_start_4
    const-string v11, "\""

    invoke-virtual {v10, v11, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e

    const-string v11, "unknown"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    const-string v11, "0x"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v11, :cond_e

    move v11, v9

    move-object v2, v10

    goto :goto_7

    :cond_d
    move v6, v9

    move v11, v6

    goto :goto_7

    :catch_3
    :cond_e
    :goto_6
    move v11, v9

    :goto_7
    const v10, 0x7f07001a

    :goto_8
    if-nez v18, :cond_f

    if-eqz v15, :cond_f

    iget-object v12, v0, Lcom/gathin/tvhome/MainActivity;->vpnApp:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_f

    move v12, v8

    goto :goto_9

    :cond_f
    move v12, v9

    :goto_9
    if-nez v18, :cond_11

    if-eqz v12, :cond_10

    goto :goto_a

    :cond_10
    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_11
    :goto_a
    if-eqz v18, :cond_12

    const v12, 0x7f100099

    goto :goto_b

    :cond_12
    const v12, 0x7f10009b

    :goto_b
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/gathin/tvhome/VpnBadge;

    if-eqz v18, :cond_13

    const v14, 0x7f070013

    invoke-virtual {v0, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto :goto_c

    :cond_13
    const/4 v14, 0x0

    :goto_c
    iget v5, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    invoke-direct {v13, v14, v5}, Lcom/gathin/tvhome/VpnBadge;-><init>(Landroid/graphics/drawable/Drawable;F)V

    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v14, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aget-object v14, v14, v9

    if-eqz v14, :cond_14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    iget-object v9, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v9

    add-int/2addr v9, v14

    goto :goto_d

    :cond_14
    const/4 v9, 0x0

    :goto_d
    iget-object v14, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v14

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingStart()I

    move-result v7

    sub-int/2addr v14, v7

    iget-object v7, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    sub-int/2addr v14, v7

    sub-int/2addr v14, v9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v13

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    invoke-virtual/range {v21 .. v26}, Lcom/gathin/tvhome/VpnBadge;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v7

    sub-int/2addr v14, v7

    int-to-float v7, v14

    const-string v9, " "

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    sub-float/2addr v7, v14

    const/high16 v14, 0x40000000    # 2.0f

    iget v8, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v8, v14

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v5, v7, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v7, v2, :cond_15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_15

    goto :goto_e

    :cond_15
    if-ne v10, v4, :cond_16

    goto :goto_e

    :cond_16
    move-object v1, v5

    :goto_e
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v2, v13, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    :goto_f
    iget-boolean v1, v0, Lcom/gathin/tvhome/MainActivity;->wifiIconOnly:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    iget-boolean v1, v0, Lcom/gathin/tvhome/MainActivity;->festive:Z

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->diya:Lcom/gathin/tvhome/DiyaDrawable;

    if-eqz v1, :cond_20

    if-eqz v15, :cond_19

    if-nez v6, :cond_19

    const/4 v5, 0x3

    goto :goto_10

    :cond_19
    move v5, v6

    :goto_10
    iget-boolean v2, v1, Lcom/gathin/tvhome/DiyaDrawable;->steady:Z

    if-ne v2, v11, :cond_1a

    goto :goto_11

    :cond_1a
    iput-boolean v11, v1, Lcom/gathin/tvhome/DiyaDrawable;->steady:Z

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_11
    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->diya:Lcom/gathin/tvhome/DiyaDrawable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-boolean v3, v1, Lcom/gathin/tvhome/DiyaDrawable;->primed:Z

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/gathin/tvhome/DiyaDrawable;->primed:Z

    iput v2, v1, Lcom/gathin/tvhome/DiyaDrawable;->level:I

    invoke-virtual {v1}, Lcom/gathin/tvhome/DiyaDrawable;->snap()V

    invoke-virtual {v1}, Lcom/gathin/tvhome/DiyaDrawable;->kick()V

    goto/16 :goto_15

    :cond_1b
    iget v3, v1, Lcom/gathin/tvhome/DiyaDrawable;->level:I

    if-ne v2, v3, :cond_1c

    goto/16 :goto_15

    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/gathin/tvhome/DiyaDrawable;->update(J)V

    invoke-virtual {v1, v3, v4}, Lcom/gathin/tvhome/DiyaDrawable;->flameScale(J)F

    move-result v5

    iget v6, v1, Lcom/gathin/tvhome/DiyaDrawable;->level:I

    iput v2, v1, Lcom/gathin/tvhome/DiyaDrawable;->level:I

    iget-boolean v7, v1, Lcom/gathin/tvhome/DiyaDrawable;->running:Z

    if-eqz v7, :cond_1f

    iget-boolean v7, v1, Lcom/gathin/tvhome/DiyaDrawable;->reduced:Z

    if-nez v7, :cond_1f

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1f

    if-nez v2, :cond_1d

    iput v5, v1, Lcom/gathin/tvhome/DiyaDrawable;->outFrom:F

    const/4 v2, 0x1

    iput v2, v1, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    iput-wide v3, v1, Lcom/gathin/tvhome/DiyaDrawable;->phaseStart:J

    goto :goto_12

    :cond_1d
    sget-object v5, Lcom/gathin/tvhome/DiyaDrawable;->LEVEL_SCALE:[F

    if-nez v6, :cond_1e

    const/4 v6, 0x2

    iput v6, v1, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    iput-wide v3, v1, Lcom/gathin/tvhome/DiyaDrawable;->phaseStart:J

    aget v2, v5, v2

    iput v2, v1, Lcom/gathin/tvhome/DiyaDrawable;->scaleTo:F

    iput v2, v1, Lcom/gathin/tvhome/DiyaDrawable;->scaleFrom:F

    iput-wide v3, v1, Lcom/gathin/tvhome/DiyaDrawable;->scaleStart:J

    goto :goto_12

    :cond_1e
    invoke-virtual {v1, v3, v4}, Lcom/gathin/tvhome/DiyaDrawable;->baseScale(J)F

    move-result v6

    iput v6, v1, Lcom/gathin/tvhome/DiyaDrawable;->scaleFrom:F

    aget v2, v5, v2

    iput v2, v1, Lcom/gathin/tvhome/DiyaDrawable;->scaleTo:F

    iput-wide v3, v1, Lcom/gathin/tvhome/DiyaDrawable;->scaleStart:J

    goto :goto_12

    :cond_1f
    invoke-virtual {v1}, Lcom/gathin/tvhome/DiyaDrawable;->snap()V

    :goto_12
    invoke-virtual {v1}, Lcom/gathin/tvhome/DiyaDrawable;->kick()V

    goto :goto_15

    :cond_20
    iget v1, v0, Lcom/gathin/tvhome/MainActivity;->wifiIcon:I

    if-eq v10, v1, :cond_21

    iput v10, v0, Lcom/gathin/tvhome/MainActivity;->wifiIcon:I

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_21
    if-eqz v15, :cond_22

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->wifiOnlineTint:Landroid/content/res/ColorStateList;

    goto :goto_13

    :cond_22
    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->wifiPlainTint:Landroid/content/res/ColorStateList;

    :goto_13
    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->wifiNoInternetTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_25

    if-nez v15, :cond_23

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->wifiOfflineTint:Landroid/content/res/ColorStateList;

    goto :goto_14

    :cond_23
    if-eqz v19, :cond_24

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->wifiOnlineTint:Landroid/content/res/ColorStateList;

    goto :goto_14

    :cond_24
    move-object v1, v2

    :cond_25
    :goto_14
    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->wifiOnlineTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eq v2, v1, :cond_26

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    :cond_26
    :goto_15
    return-void
.end method
