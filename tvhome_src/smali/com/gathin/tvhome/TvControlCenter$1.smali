.class Lcom/gathin/tvhome/TvControlCenter$1;
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

.field final synthetic val$mins:I


# direct methods
.method constructor <init>(Landroid/app/Activity;ILandroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$1;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/gathin/tvhome/TvControlCenter$1;->val$mins:I

    iput-object p3, p0, Lcom/gathin/tvhome/TvControlCenter$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$1;->val$activity:Landroid/app/Activity;

    iget v0, p0, Lcom/gathin/tvhome/TvControlCenter$1;->val$mins:I

    invoke-static {p1, v0}, Lcom/gathin/tvhome/TvControlCenter;->access$000(Landroid/app/Activity;I)V

    .line 108
    iget-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 109
    return-void
.end method
