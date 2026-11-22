.class Lcom/gathin/tvhome/TvControlCenter$5;
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

    .line 205
    iput-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$5;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/gathin/tvhome/TvControlCenter$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 209
    iget-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$5;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/gathin/tvhome/AppleTvScreensaver;->launchScreensaver(Landroid/app/Activity;)V

    .line 210
    return-void
.end method
