.class Lcom/gathin/tvhome/TvControlCenter$6;
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

    .line 220
    iput-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$6;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/gathin/tvhome/TvControlCenter$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 223
    iget-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 225
    :try_start_0
    iget-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$6;->val$activity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    goto :goto_0

    .line 226
    :catchall_0
    move-exception p1

    .line 227
    iget-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$6;->val$activity:Landroid/app/Activity;

    const-string v0, "Could not open Settings"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 229
    :goto_0
    return-void
.end method
