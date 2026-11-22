.class public Lcom/gathin/tvhome/InputKeyService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# instance fields
.field public appKeys:Ljava/util/Map;

.field public appScancodes:Ljava/util/Map;

.field public consumeVolumeKeys:Z

.field public gamepads:Lcom/gathin/tvhome/GamepadPassthrough;

.field public holdAppKeys:Ljava/util/Map;

.field public holdAppScancodes:Ljava/util/Map;

.field public inputKeycodes:[I

.field public repairRecord:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/gathin/tvhome/InputKeyService;->inputKeycodes:[I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/InputKeyService;->appKeys:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/InputKeyService;->appScancodes:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/InputKeyService;->holdAppKeys:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/InputKeyService;->holdAppScancodes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/gathin/tvhome/InputKeyService;->gamepads:Lcom/gathin/tvhome/GamepadPassthrough;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/gathin/tvhome/GamepadPassthrough;->input:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/gathin/tvhome/InputKeyService;->consumeVolumeKeys:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gathin/tvhome/Sky;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/gathin/tvhome/Sky;->step:Lcom/gathin/tvhome/VolumeKeys$1;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/gathin/tvhome/Sky;->step:Lcom/gathin/tvhome/VolumeKeys$1;

    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onInterrupt()V
    .locals 0

    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/gathin/tvhome/InputKeyService;->consumeVolumeKeys:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/gathin/tvhome/Sky;->handle(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/InputKeyService;->appScancodes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/gathin/tvhome/InputKeyService;->holdAppScancodes:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/gathin/tvhome/InputKeyService;->appKeys:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/gathin/tvhome/InputKeyService;->holdAppKeys:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, p1, v0, v2}, Lcom/gathin/tvhome/Sky;->handle(Landroid/content/Context;Landroid/view/KeyEvent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0xaa

    if-eq v0, v2, :cond_6

    const/16 v2, 0xb2

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/gathin/tvhome/InputKeyService;->inputKeycodes:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget v6, v2, v5

    if-ne v0, v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v4

    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_7

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.tv.action.VIEW_INPUTS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    return v1
.end method

.method public final onServiceConnected()V
    .locals 5

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    invoke-static {p0}, Lcom/gathin/tvhome/Config;->load(Landroid/content/Context;)Lcom/gathin/tvhome/Config;

    move-result-object v0

    iget-boolean v1, v0, Lcom/gathin/tvhome/Config;->restoreKeyServices:Z

    iput-boolean v1, p0, Lcom/gathin/tvhome/InputKeyService;->repairRecord:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "accessibility_helpers"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v1, v0, Lcom/gathin/tvhome/Config;->inputKeycodes:[I

    iput-object v1, p0, Lcom/gathin/tvhome/InputKeyService;->inputKeycodes:[I

    iget-boolean v1, v0, Lcom/gathin/tvhome/Config;->consumeVolumeKeys:Z

    iput-boolean v1, p0, Lcom/gathin/tvhome/InputKeyService;->consumeVolumeKeys:Z

    new-instance v1, Lcom/gathin/tvhome/RemoteKeys$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, Lcom/gathin/tvhome/Config;->appKeys:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/gathin/tvhome/Sky;->parseAppKeys(Ljava/lang/Iterable;Ljava/util/function/ToIntFunction;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/gathin/tvhome/InputKeyService;->appKeys:Ljava/util/Map;

    invoke-static {v2}, Lcom/gathin/tvhome/Sky;->parseAppScancodes(Ljava/lang/Iterable;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/gathin/tvhome/InputKeyService;->appScancodes:Ljava/util/Map;

    iget-boolean v1, v0, Lcom/gathin/tvhome/Config;->keyFilter:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget v4, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v4, v4, -0x21

    iput v4, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    invoke-virtual {p0, v3}, Landroid/accessibilityservice/AccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    :goto_0
    new-instance v3, Lcom/gathin/tvhome/RemoteKeys$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Lcom/gathin/tvhome/Sky;->holdEntries(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/gathin/tvhome/Sky;->parseAppKeys(Ljava/lang/Iterable;Ljava/util/function/ToIntFunction;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/gathin/tvhome/InputKeyService;->holdAppKeys:Ljava/util/Map;

    invoke-static {v2}, Lcom/gathin/tvhome/Sky;->holdEntries(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/gathin/tvhome/Sky;->parseAppScancodes(Ljava/lang/Iterable;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/gathin/tvhome/InputKeyService;->holdAppScancodes:Ljava/util/Map;

    iget-boolean v0, v0, Lcom/gathin/tvhome/Config;->gamepadPassthrough:Z

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/gathin/tvhome/InputKeyService;->gamepads:Lcom/gathin/tvhome/GamepadPassthrough;

    if-nez v0, :cond_3

    new-instance v0, Lcom/gathin/tvhome/GamepadPassthrough;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/GamepadPassthrough;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    iput-object v0, p0, Lcom/gathin/tvhome/InputKeyService;->gamepads:Lcom/gathin/tvhome/GamepadPassthrough;

    iget-object v1, v0, Lcom/gathin/tvhome/GamepadPassthrough;->input:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/gathin/tvhome/GamepadPassthrough;->update()V

    :cond_3
    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/gathin/tvhome/InputKeyService;->repairRecord:Z

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
