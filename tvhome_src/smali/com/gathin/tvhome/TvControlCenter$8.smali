.class Lcom/gathin/tvhome/TvControlCenter$8;
.super Ljava/lang/Object;
.source "TvControlCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/TvControlCenter;->openControlCenter(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$8;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/gathin/tvhome/TvControlCenter$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 263
    iget-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 264
    iget-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$8;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/gathin/tvhome/TvControlCenter$8$1;

    iget-object v1, p0, Lcom/gathin/tvhome/TvControlCenter$8;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/gathin/tvhome/TvControlCenter$8$1;-><init>(Lcom/gathin/tvhome/TvControlCenter$8;Landroid/app/Activity;)V

    const-string v1, "\ud83d\udee1\ufe0f Parental Controls"

    const-string v2, "Enter Parent PIN to manage Child Lock"

    invoke-static {p1, v1, v2, v0}, Lcom/gathin/tvhome/ChildLockManager;->showPinDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method
