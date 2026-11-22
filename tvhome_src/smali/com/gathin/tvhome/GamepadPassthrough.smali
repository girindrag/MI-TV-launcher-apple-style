.class public final Lcom/gathin/tvhome/GamepadPassthrough;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final input:Landroid/hardware/input/InputManager;

.field public final service:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/GamepadPassthrough;->service:Landroid/accessibilityservice/AccessibilityService;

    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/gathin/tvhome/GamepadPassthrough;->input:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/gathin/tvhome/GamepadPassthrough;->update()V

    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/gathin/tvhome/GamepadPassthrough;->update()V

    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/gathin/tvhome/GamepadPassthrough;->update()V

    return-void
.end method

.method public final update()V
    .locals 11

    iget-object v0, p0, Lcom/gathin/tvhome/GamepadPassthrough;->service:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/gathin/tvhome/GamepadPassthrough;->input:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_2

    aget v8, v3, v6

    invoke-virtual {v2, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Landroid/view/InputDevice;->getSources()I

    move-result v8

    and-int/lit16 v9, v8, 0x401

    const/16 v10, 0x401

    if-ne v9, v10, :cond_1

    const v9, 0x1000010

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_1
    xor-int/2addr v2, v7

    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v4, v3, 0x20

    if-eqz v4, :cond_3

    move v5, v7

    :cond_3
    if-ne v2, v5, :cond_4

    return-void

    :cond_4
    xor-int/lit8 v2, v3, 0x20

    iput v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method
