.class public Lcom/gathin/tvhome/TvKeyHandler;
.super Ljava/lang/Object;
.source "TvKeyHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TvKeyHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPendingUnlockOnResume(Lcom/gathin/tvhome/MainActivity;)V
    .locals 3

    .line 150
    const-string v0, "unlock_and_launch_package"

    :try_start_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 154
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 157
    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 158
    :cond_0
    if-eqz v1, :cond_1

    .line 159
    invoke-static {p0, v1}, Lcom/gathin/tvhome/ChildLockManager;->handleOpen(Lcom/gathin/tvhome/MainActivity;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    const/high16 v0, 0x10200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_1
    goto :goto_0

    .line 166
    :catch_0
    move-exception p0

    .line 167
    const-string v0, "TvKeyHandler"

    const-string v1, "Error checking pending unlock"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :goto_0
    return-void
.end method

.method public static ensureAccessibilityEnabled(Landroid/content/Context;)V
    .locals 4

    .line 173
    const-string v0, "enabled_accessibility_services"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/gathin/tvhome/HomeKeyService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 176
    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    const-string p0, "TvKeyHandler"

    const-string v0, "Auto-enabled HomeKeyService accessibility service"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_3
    goto :goto_1

    .line 181
    :catch_0
    move-exception p0

    .line 184
    :goto_1
    return-void
.end method

.method public static handleVoiceKey(Landroid/content/Context;II)Z
    .locals 2

    .line 20
    invoke-static {p1}, Lcom/gathin/tvhome/TvKeyHandler;->isVoiceKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    const/4 p0, 0x0

    return p0

    .line 23
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voice key intercepted: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TvKeyHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p0}, Lcom/gathin/tvhome/TvVoiceAssistant;->start(Landroid/content/Context;)V

    .line 27
    :cond_1
    return v0
.end method

.method public static handleVoiceKeyFromActivity(Landroid/app/Activity;II)Z
    .locals 2

    .line 31
    invoke-static {p1}, Lcom/gathin/tvhome/TvKeyHandler;->isVoiceKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const/4 p0, 0x0

    return p0

    .line 34
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voice key intercepted from Activity: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TvKeyHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {p0}, Lcom/gathin/tvhome/TvVoiceAssistant;->start(Landroid/content/Context;)V

    .line 38
    :cond_1
    return v0
.end method

.method public static handleYouTubeKey(Landroid/content/Context;II)Z
    .locals 2

    .line 49
    invoke-static {p1}, Lcom/gathin/tvhome/TvKeyHandler;->isYouTubeKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 p0, 0x0

    return p0

    .line 52
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YouTube key intercepted: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TvKeyHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p0}, Lcom/gathin/tvhome/TvKeyHandler;->launchYouTube(Landroid/content/Context;)V

    .line 56
    :cond_1
    return v0
.end method

.method public static handleYouTubeKeyFromActivity(Lcom/gathin/tvhome/MainActivity;II)Z
    .locals 2

    .line 60
    invoke-static {p1}, Lcom/gathin/tvhome/TvKeyHandler;->isYouTubeKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 p0, 0x0

    return p0

    .line 63
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YouTube key intercepted from MainActivity: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TvKeyHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {p0}, Lcom/gathin/tvhome/TvKeyHandler;->launchYouTubeFromActivity(Lcom/gathin/tvhome/MainActivity;)V

    .line 67
    :cond_1
    return v0
.end method

.method public static isVoiceKey(I)Z
    .locals 1

    .line 14
    const/16 v0, 0xe7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x54

    if-eq p0, v0, :cond_1

    const/16 v0, 0xdb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isYouTubeKey(I)Z
    .locals 1

    .line 42
    const/16 v0, 0xbe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x120

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static launchYouTube(Landroid/content/Context;)V
    .locals 6

    .line 72
    const-string v0, "com.google.android.youtube.tv"

    const-string v1, "TvKeyHandler"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 73
    nop

    .line 74
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const-string v4, "org.smarttube.stable"

    if-nez v3, :cond_0

    .line 76
    nop

    .line 77
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object v5, v4

    goto :goto_0

    .line 75
    :cond_0
    move-object v5, v0

    .line 79
    :goto_0
    if-nez v3, :cond_1

    .line 80
    nop

    .line 81
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    .line 79
    :cond_1
    move-object v0, v5

    .line 83
    :goto_1
    if-nez v3, :cond_2

    .line 84
    nop

    .line 85
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_2

    .line 83
    :cond_2
    move-object v4, v0

    .line 88
    :goto_2
    if-nez v3, :cond_3

    .line 89
    const-string p0, "No YouTube app installed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 94
    :cond_3
    invoke-static {p0}, Lcom/gathin/tvhome/ChildLockManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, v4}, Lcom/gathin/tvhome/ChildLockManager;->isPackageLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is child-locked, redirecting to MainActivity for PIN check"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/gathin/tvhome/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v2, "unlock_and_launch_package"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void

    .line 105
    :cond_4
    const/high16 v0, 0x10200000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launched "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " directly"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    goto :goto_3

    .line 108
    :catch_0
    move-exception p0

    .line 109
    const-string v0, "Error launching YouTube"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_3
    return-void
.end method

.method public static launchYouTubeFromActivity(Lcom/gathin/tvhome/MainActivity;)V
    .locals 5

    .line 115
    const-string v0, "com.google.android.youtube.tv"

    const-string v1, "TvKeyHandler"

    :try_start_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 116
    nop

    .line 117
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const-string v4, "org.smarttube.stable"

    if-nez v3, :cond_0

    .line 119
    nop

    .line 120
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 122
    :cond_0
    if-nez v3, :cond_1

    .line 123
    nop

    .line 124
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 126
    :cond_1
    if-nez v3, :cond_2

    .line 127
    nop

    .line 128
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 131
    :cond_2
    if-nez v3, :cond_3

    .line 132
    const-string p0, "No YouTube app installed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 136
    :cond_3
    invoke-static {p0, v3}, Lcom/gathin/tvhome/ChildLockManager;->handleOpen(Lcom/gathin/tvhome/MainActivity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    const-string p0, "Child lock PIN prompt shown for YouTube"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 141
    :cond_4
    const/high16 v0, 0x10200000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v3}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception p0

    .line 144
    const-string v0, "Error in launchYouTubeFromActivity"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_0
    return-void
.end method
