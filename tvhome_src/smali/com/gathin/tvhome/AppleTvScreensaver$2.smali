.class Lcom/gathin/tvhome/AppleTvScreensaver$2;
.super Ljava/lang/Object;
.source "AppleTvScreensaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/AppleTvScreensaver;->launchScreensaver(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$clockView:Landroid/widget/TextView;

.field final synthetic val$screensaverHandler:Landroid/os/Handler;

.field final synthetic val$timeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/text/SimpleDateFormat;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/gathin/tvhome/AppleTvScreensaver$2;->val$clockView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gathin/tvhome/AppleTvScreensaver$2;->val$timeFormat:Ljava/text/SimpleDateFormat;

    iput-object p3, p0, Lcom/gathin/tvhome/AppleTvScreensaver$2;->val$screensaverHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/gathin/tvhome/AppleTvScreensaver$2;->val$clockView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gathin/tvhome/AppleTvScreensaver$2;->val$timeFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/gathin/tvhome/AppleTvScreensaver$2;->val$screensaverHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method
