.class public Lcom/gathin/tvhome/HomeKeyService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public appKeys:Ljava/util/Map;

.field public appScancodes:Ljava/util/Map;

.field public consumeVolumeKeys:Z

.field public gamepads:Lcom/gathin/tvhome/GamepadPassthrough;

.field public final handler:Landroid/os/Handler;

.field public holdAppKeys:Ljava/util/Map;

.field public holdAppScancodes:Ljava/util/Map;

.field public repairRecord:Z

.field public settingsKeycodes:[I

.field public settingsScancodes:[I

.field public final stockHome:Ljava/util/HashSet;

.field public unlockReceiver:Lcom/gathin/tvhome/MainActivity$4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/gathin/tvhome/HomeKeyService;->settingsScancodes:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->settingsKeycodes:[I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->appKeys:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->appScancodes:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->holdAppKeys:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->holdAppScancodes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->stockHome:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final loadConfig()V
    .locals 11

    invoke-static {p0}, Lcom/gathin/tvhome/Config;->load(Landroid/content/Context;)Lcom/gathin/tvhome/Config;

    move-result-object v0

    iget-boolean v1, v0, Lcom/gathin/tvhome/Config;->restoreKeyServices:Z

    iput-boolean v1, p0, Lcom/gathin/tvhome/HomeKeyService;->repairRecord:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "accessibility_helpers"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v1, v0, Lcom/gathin/tvhome/Config;->settingsKeycodes:[I

    iput-object v1, p0, Lcom/gathin/tvhome/HomeKeyService;->settingsKeycodes:[I

    iget-boolean v1, v0, Lcom/gathin/tvhome/Config;->consumeVolumeKeys:Z

    iput-boolean v1, p0, Lcom/gathin/tvhome/HomeKeyService;->consumeVolumeKeys:Z

    new-instance v1, Lcom/gathin/tvhome/RemoteKeys$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v3, v0, Lcom/gathin/tvhome/Config;->appKeys:Ljava/util/List;

    invoke-static {v3, v1}, Lcom/gathin/tvhome/Sky;->parseAppKeys(Ljava/lang/Iterable;Ljava/util/function/ToIntFunction;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/gathin/tvhome/HomeKeyService;->appKeys:Ljava/util/Map;

    invoke-static {v3}, Lcom/gathin/tvhome/Sky;->parseAppScancodes(Ljava/lang/Iterable;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/gathin/tvhome/HomeKeyService;->appScancodes:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_skip_kf

    iget v5, v4, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    invoke-virtual {p0, v4}, Landroid/accessibilityservice/AccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    :cond_skip_kf
    :goto_0
    iget-object v4, p0, Lcom/gathin/tvhome/HomeKeyService;->stockHome:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    const-string v5, "com.google.android.apps.tv.launcherx.home.HomeActivity"

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.google.android.apps.tv.launcherx"

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/gathin/tvhome/Config;->stockHomeRedirect:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x200

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    invoke-virtual {p0, v5}, Landroid/accessibilityservice/AccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    :cond_4
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "boot_count"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "boot"

    invoke-virtual {p0, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "probe_boot"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    if-ltz v4, :cond_5

    if-eq v4, v6, :cond_5

    const-wide/32 v9, 0x2bf20

    cmp-long v6, v7, v9

    if-gez v6, :cond_5

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/gathin/tvhome/ProbeActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10010000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    new-instance v2, Lcom/gathin/tvhome/RemoteKeys$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Lcom/gathin/tvhome/Sky;->holdEntries(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/gathin/tvhome/Sky;->parseAppKeys(Ljava/lang/Iterable;Ljava/util/function/ToIntFunction;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/gathin/tvhome/HomeKeyService;->holdAppKeys:Ljava/util/Map;

    invoke-static {v3}, Lcom/gathin/tvhome/Sky;->holdEntries(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/gathin/tvhome/Sky;->parseAppScancodes(Ljava/lang/Iterable;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/gathin/tvhome/HomeKeyService;->holdAppScancodes:Ljava/util/Map;

    iget-boolean v0, v0, Lcom/gathin/tvhome/Config;->gamepadPassthrough:Z

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->gamepads:Lcom/gathin/tvhome/GamepadPassthrough;

    if-nez v0, :cond_6

    new-instance v0, Lcom/gathin/tvhome/GamepadPassthrough;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/GamepadPassthrough;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    iput-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->gamepads:Lcom/gathin/tvhome/GamepadPassthrough;

    iget-object v1, v0, Lcom/gathin/tvhome/GamepadPassthrough;->input:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/gathin/tvhome/GamepadPassthrough;->update()V

    :cond_6
    return-void
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->stockHome:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10200000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->unlockReceiver:Lcom/gathin/tvhome/MainActivity$4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/gathin/tvhome/HomeKeyService;->unlockReceiver:Lcom/gathin/tvhome/MainActivity$4;

    :goto_0
    iget-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->gamepads:Lcom/gathin/tvhome/GamepadPassthrough;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/gathin/tvhome/GamepadPassthrough;->input:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_1
    iget-boolean v0, p0, Lcom/gathin/tvhome/HomeKeyService;->consumeVolumeKeys:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gathin/tvhome/Sky;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/gathin/tvhome/Sky;->step:Lcom/gathin/tvhome/VolumeKeys$1;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    sput-object v1, Lcom/gathin/tvhome/Sky;->step:Lcom/gathin/tvhome/VolumeKeys$1;

    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onInterrupt()V
    .locals 0

    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
    move-result v1
    invoke-static {p0, v0, v1}, Lcom/gathin/tvhome/TvKeyHandler;->handleYouTubeKey(Landroid/content/Context;II)Z
    move-result v0
    if-eqz v0, :cond_yt_resume
    const/4 v0, 0x1
    return v0

    :cond_yt_resume
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
    move-result v1
    invoke-static {p0, v0, v1}, Lcom/gathin/tvhome/TvKeyHandler;->handleVoiceKey(Landroid/content/Context;II)Z
    move-result v0
    if-eqz v0, :cond_voice_resume
    const/4 v0, 0x1
    return v0

    :cond_voice_resume
    iget-boolean v0, p0, Lcom/gathin/tvhome/HomeKeyService;->consumeVolumeKeys:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/gathin/tvhome/Sky;->handle(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->appScancodes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/gathin/tvhome/HomeKeyService;->holdAppScancodes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, p1, v0, v2}, Lcom/gathin/tvhome/Sky;->handle(Landroid/content/Context;Landroid/view/KeyEvent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0xb0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->settingsScancodes:[I

    array-length v2, v0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget v5, v0, v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v6

    if-ne v6, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->settingsKeycodes:[I

    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_7

    aget v5, v0, v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v6, v5, :cond_6

    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.gathin.tvhome.action.LAUNCHER_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const p1, 0x7f100057

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_3
    return v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->appKeys:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/gathin/tvhome/HomeKeyService;->holdAppKeys:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, p1, v0, v2}, Lcom/gathin/tvhome/Sky;->handle(Landroid/content/Context;Landroid/view/KeyEvent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v6, p1

    sub-long/2addr v4, v0

    cmp-long p1, v4, v6

    if-gez p1, :cond_9

    iget-object p1, p0, Lcom/gathin/tvhome/HomeKeyService;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return v3

    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x11c

    if-eq v0, v2, :cond_b

    return v3

    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10200000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_c
    return v1
.end method

.method public final onServiceConnected()V
    .locals 4

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->settingsScancodes:[I

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/gathin/tvhome/HomeKeyService;->loadConfig()V

    return-void

    :cond_0
    new-instance v1, Lcom/gathin/tvhome/MainActivity$4;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/gathin/tvhome/MainActivity$4;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v1, p0, Lcom/gathin/tvhome/HomeKeyService;->unlockReceiver:Lcom/gathin/tvhome/MainActivity$4;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->unlockReceiver:Lcom/gathin/tvhome/MainActivity$4;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gathin/tvhome/HomeKeyService;->unlockReceiver:Lcom/gathin/tvhome/MainActivity$4;

    :goto_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/HomeKeyService;->loadConfig()V

    :cond_2
    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/gathin/tvhome/HomeKeyService;->repairRecord:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "accessibility_helpers"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
