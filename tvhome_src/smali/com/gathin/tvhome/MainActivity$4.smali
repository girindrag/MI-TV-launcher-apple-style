.class public final Lcom/gathin/tvhome/MainActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$4;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$4;->this$0:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$4;->this$0:Landroid/content/ContextWrapper;

    iget v0, p0, Lcom/gathin/tvhome/MainActivity$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget p2, Lcom/gathin/tvhome/HomeKeyService;->$r8$clinit:I

    check-cast p1, Lcom/gathin/tvhome/HomeKeyService;

    iget-object p2, p1, Lcom/gathin/tvhome/HomeKeyService;->unlockReceiver:Lcom/gathin/tvhome/MainActivity$4;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/gathin/tvhome/HomeKeyService;->unlockReceiver:Lcom/gathin/tvhome/MainActivity$4;

    :goto_0
    invoke-virtual {p1}, Lcom/gathin/tvhome/HomeKeyService;->loadConfig()V

    return-void

    :pswitch_0
    sget p2, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    check-cast p1, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {p1}, Lcom/gathin/tvhome/MainActivity;->updateClockVisibility()V

    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/gathin/tvhome/MainActivity;

    iget-object p2, p1, Lcom/gathin/tvhome/MainActivity;->tileRefresh:Lcom/gathin/tvhome/TileRefresh;

    iget-boolean v0, p2, Lcom/gathin/tvhome/TileRefresh;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1, v2, v2}, Lcom/gathin/tvhome/MainActivity;->reloadApps(ZZZ)V

    iget-object p1, p1, Lcom/gathin/tvhome/MainActivity;->appLibrary:Lcom/gathin/tvhome/AppLibraryDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/gathin/tvhome/AppLibraryDialog;->load(Z)V

    goto :goto_1

    :cond_2
    iput-boolean v2, p2, Lcom/gathin/tvhome/TileRefresh;->stale:Z

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
