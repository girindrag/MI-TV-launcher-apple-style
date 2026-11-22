.class public final synthetic Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/AppAdapter;

.field public final synthetic f$1:Lcom/gathin/tvhome/AppAdapter$Holder;

.field public final synthetic f$2:Lcom/gathin/tvhome/AppAdapter$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AppAdapter;Lcom/gathin/tvhome/AppAdapter$Holder;Lcom/gathin/tvhome/AppAdapter$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/AppAdapter;

    iput-object p2, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/gathin/tvhome/AppAdapter$Holder;

    iput-object p3, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/gathin/tvhome/AppAdapter$Entry;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/AppAdapter;

    iget-object v0, v0, Lcom/gathin/tvhome/AppAdapter;->ctx:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/gathin/tvhome/AppAdapter$Entry;

    iget-object v1, v1, Lcom/gathin/tvhome/AppAdapter$Entry;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/gathin/tvhome/AppAdapter$Entry;

    iget-object v2, v2, Lcom/gathin/tvhome/AppAdapter$Entry;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/gathin/tvhome/AppCategoryManager;->showAppContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
