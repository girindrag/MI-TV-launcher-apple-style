.class public final Lcom/gathin/tvhome/MainActivity$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$3;->this$0:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$3;->this$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v0, p1, Lcom/gathin/tvhome/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v2, 0x1c

    invoke-direct {v1, p1, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 3

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$3;->this$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v0, p1, Lcom/gathin/tvhome/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v2, 0x1c

    invoke-direct {v1, p1, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
