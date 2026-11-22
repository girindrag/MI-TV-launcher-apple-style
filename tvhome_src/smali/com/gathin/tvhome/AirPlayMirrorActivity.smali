.class public Lcom/gathin/tvhome/AirPlayMirrorActivity;
.super Landroid/app/Activity;
.source "AirPlayMirrorActivity.java"

# interfaces
.implements Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;


# instance fields
.field private ivMirrorDisplay:Landroid/widget/ImageView;

.field private ivQrCode:Landroid/widget/ImageView;

.field private mirrorContainer:Landroid/widget/FrameLayout;

.field private qrContainer:Landroid/widget/LinearLayout;

.field private server:Lcom/gathin/tvhome/AirPlayServer;

.field private tvAirPlayUrl:Landroid/widget/TextView;

.field private tvMirrorOverlay:Landroid/widget/TextView;

.field private tvStatusBadge:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private generateQrBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 61
    :try_start_0
    sget-object v0, Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;->MEDIUM:Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;

    invoke-static {p1, v0}, Lcom/gathin/tvhome/qrcodegen/QrCode;->encodeText(Ljava/lang/CharSequence;Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)Lcom/gathin/tvhome/qrcodegen/QrCode;

    move-result-object p1

    .line 62
    nop

    .line 63
    iget v0, p1, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    add-int/lit8 v0, v0, 0x4

    .line 64
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 66
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    .line 67
    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    iget v6, p1, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    add-int/2addr v6, v5

    if-ge v4, v6, :cond_0

    if-lt v3, v5, :cond_0

    iget v6, p1, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    add-int/2addr v6, v5

    if-ge v3, v6, :cond_0

    add-int/lit8 v5, v4, -0x2

    add-int/lit8 v6, v3, -0x2

    .line 68
    invoke-virtual {p1, v5, v6}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getModule(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    .line 69
    :goto_2
    if-eqz v5, :cond_1

    const/high16 v5, -0x1000000

    goto :goto_3

    :cond_1
    const/4 v5, -0x1

    :goto_3
    invoke-virtual {v1, v4, v3, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 65
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_3
    invoke-static {v1, p2, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-gathin-tvhome-AirPlayMirrorActivity(Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->finish()V

    return-void
.end method

.method public onClientConnected(Ljava/lang/String;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->tvStatusBadge:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udd35 iPhone Connected ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->tvStatusBadge:Landroid/widget/TextView;

    const v0, -0xc74208

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const p1, 0x7f0b0013

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->setContentView(I)V

    .line 31
    const p1, 0x7f0900e6

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->ivQrCode:Landroid/widget/ImageView;

    .line 32
    const p1, 0x7f0900e7

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->tvAirPlayUrl:Landroid/widget/TextView;

    .line 33
    const p1, 0x7f0900e8

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->tvStatusBadge:Landroid/widget/TextView;

    .line 34
    const p1, 0x7f0900ea

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->mirrorContainer:Landroid/widget/FrameLayout;

    .line 35
    const p1, 0x7f0900e5

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->qrContainer:Landroid/widget/LinearLayout;

    .line 36
    const p1, 0x7f0900eb

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->ivMirrorDisplay:Landroid/widget/ImageView;

    .line 37
    const p1, 0x7f0900ec

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->tvMirrorOverlay:Landroid/widget/TextView;

    .line 39
    invoke-static {p0}, Lcom/gathin/tvhome/AirPlayServer;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x1b9e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->tvAirPlayUrl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const/16 v0, 0x190

    invoke-direct {p0, p1, v0}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->generateQrBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/gathin/tvhome/AirPlayServer;->getInstance(Landroid/content/Context;)Lcom/gathin/tvhome/AirPlayServer;

    move-result-object p1

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->server:Lcom/gathin/tvhome/AirPlayServer;

    .line 49
    iget-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->server:Lcom/gathin/tvhome/AirPlayServer;

    invoke-virtual {p1, p0}, Lcom/gathin/tvhome/AirPlayServer;->setListener(Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;)V

    .line 50
    iget-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->server:Lcom/gathin/tvhome/AirPlayServer;

    invoke-virtual {p1}, Lcom/gathin/tvhome/AirPlayServer;->startServer()V

    .line 52
    const p1, 0x7f0900e9

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    new-instance v0, Lcom/gathin/tvhome/AirPlayMirrorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/AirPlayMirrorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/AirPlayMirrorActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 57
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->server:Lcom/gathin/tvhome/AirPlayServer;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->server:Lcom/gathin/tvhome/AirPlayServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/AirPlayServer;->setListener(Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 125
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 126
    iget-object p1, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->mirrorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->onMirrorStopped()V

    .line 128
    return p2

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/AirPlayMirrorActivity;->finish()V

    .line 131
    return p2

    .line 133
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMirrorStopped()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->mirrorContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->qrContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->tvStatusBadge:Landroid/widget/TextView;

    const-string v1, "\ud83d\udfe2 Ready to Connect"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->tvStatusBadge:Landroid/widget/TextView;

    const v1, -0xcb2c67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    return-void
.end method

.method public onPhotoReceived(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->qrContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->qrContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->mirrorContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->tvMirrorOverlay:Landroid/widget/TextView;

    const-string v1, "\ud83d\udcf8 iPhone Photo Cast \u2022 Press BACK to exit"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->ivMirrorDisplay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    return-void
.end method

.method public onRemoteKeyReceived(Ljava/lang/String;)V
    .locals 0

    .line 113
    return-void
.end method

.method public onScreenFrameReceived(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->qrContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->qrContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->mirrorContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->tvMirrorOverlay:Landroid/widget/TextView;

    const-string v1, "\ud83d\udcf1 iPhone Screen Mirroring \u2022 Press BACK to exit"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayMirrorActivity;->ivMirrorDisplay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    return-void
.end method

.method public onVideoReceived(Ljava/lang/String;)V
    .locals 0

    .line 108
    return-void
.end method
