.class public final synthetic Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->iconsLoading:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->closed:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    const v3, 0x7f070007

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iget-object v0, v0, Lcom/gathin/tvhome/AppLibraryDialog;->icons:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/gathin/tvhome/Sky;->replaceList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v0, v2, v3}, Lcom/gathin/tvhome/Sky;->replaceList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v0, v3, v2}, Lcom/gathin/tvhome/Sky;->replaceList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "accessibility_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
