.class Lcom/gathin/tvhome/WatchNextManager$1;
.super Ljava/lang/Object;
.source "WatchNextManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/WatchNextManager;->showWatchNextHub(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$wi:Lcom/gathin/tvhome/WatchNextManager$WatchItem;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;Lcom/gathin/tvhome/WatchNextManager$WatchItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/gathin/tvhome/WatchNextManager$1;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/gathin/tvhome/WatchNextManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gathin/tvhome/WatchNextManager$1;->val$wi:Lcom/gathin/tvhome/WatchNextManager$WatchItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/gathin/tvhome/WatchNextManager$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 215
    iget-object p1, p0, Lcom/gathin/tvhome/WatchNextManager$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/gathin/tvhome/WatchNextManager$1;->val$wi:Lcom/gathin/tvhome/WatchNextManager$WatchItem;

    invoke-static {p1, v0}, Lcom/gathin/tvhome/WatchNextManager;->access$000(Landroid/app/Activity;Lcom/gathin/tvhome/WatchNextManager$WatchItem;)V

    .line 216
    return-void
.end method
