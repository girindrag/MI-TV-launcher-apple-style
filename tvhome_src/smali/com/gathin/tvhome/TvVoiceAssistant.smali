.class public Lcom/gathin/tvhome/TvVoiceAssistant;
.super Ljava/lang/Object;
.source "TvVoiceAssistant.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TvVoiceAssistant"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleVoiceKey(Landroid/content/Context;II)Z
    .locals 2

    .line 29
    invoke-static {p1}, Lcom/gathin/tvhome/TvVoiceAssistant;->isVoiceKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 30
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voice hotkey intercepted: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TvVoiceAssistant"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p0}, Lcom/gathin/tvhome/TvVoiceAssistant;->start(Landroid/content/Context;)V

    .line 34
    :cond_1
    return v0
.end method

.method public static handleVoiceKeyFromActivity(Landroid/app/Activity;II)Z
    .locals 2

    .line 38
    invoke-static {p1}, Lcom/gathin/tvhome/TvVoiceAssistant;->isVoiceKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voice hotkey intercepted from Activity: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TvVoiceAssistant"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0}, Lcom/gathin/tvhome/TvVoiceAssistant;->start(Landroid/content/Context;)V

    .line 43
    :cond_1
    return v0
.end method

.method public static isVoiceKey(I)Z
    .locals 1

    .line 23
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

.method public static start(Landroid/content/Context;)V
    .locals 3

    .line 13
    const-string v0, "TvVoiceAssistant"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    const-string p0, "Started VoiceAssistantActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string v1, "Error starting VoiceAssistantActivity"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    :goto_0
    return-void
.end method
