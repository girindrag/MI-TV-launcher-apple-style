.class public final synthetic Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget v2, p0, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :pswitch_0
    sget v2, Lcom/gathin/tvhome/ProbeActivity;->$r8$clinit:I

    check-cast v1, Lcom/gathin/tvhome/ProbeActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/gathin/tvhome/PetalShowerView;

    invoke-virtual {v1}, Lcom/gathin/tvhome/PetalShowerView;->finish()V

    return-void

    :pswitch_2
    check-cast v1, Lcom/gathin/tvhome/MainActivity$19;

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity$19;->this$0:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->updateWifiLabel()V

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->updateInputsButton()V

    :goto_0
    return-void

    :pswitch_3
    check-cast v1, Lcom/gathin/tvhome/MarigoldDrawable;

    iget-boolean v0, v1, Lcom/gathin/tvhome/MarigoldDrawable;->reduced:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v2, v1, Lcom/gathin/tvhome/MarigoldDrawable;->rotation:D

    iput-wide v2, v1, Lcom/gathin/tvhome/MarigoldDrawable;->from:D

    iget-wide v2, v1, Lcom/gathin/tvhome/MarigoldDrawable;->target:D

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/gathin/tvhome/MarigoldDrawable;->target:D

    iget-object v0, v1, Lcom/gathin/tvhome/MarigoldDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void

    :pswitch_4
    check-cast v1, Lcom/gathin/tvhome/BellDrawable;

    iget-boolean v0, v1, Lcom/gathin/tvhome/BellDrawable;->reduced:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget v0, v1, Lcom/gathin/tvhome/BellDrawable;->angle:F

    iput v0, v1, Lcom/gathin/tvhome/BellDrawable;->startAngle:F

    iget v0, v1, Lcom/gathin/tvhome/BellDrawable;->direction:I

    neg-int v0, v0

    iput v0, v1, Lcom/gathin/tvhome/BellDrawable;->direction:I

    const/high16 v2, 0x41800000    # 16.0f

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, v1, Lcom/gathin/tvhome/BellDrawable;->amplitude:F

    iget-object v0, v1, Lcom/gathin/tvhome/BellDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void

    :pswitch_5
    sget v0, Lcom/gathin/tvhome/HomeKeyService;->$r8$clinit:I

    check-cast v1, Lcom/gathin/tvhome/HomeKeyService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_6
    check-cast v1, Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v0, v1, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/gathin/tvhome/AppLibraryDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/gathin/tvhome/AppLibraryDialog;->actionPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, v1, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, v1, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_4
    :goto_3
    return-void

    :pswitch_7
    const-string v2, "keyevent"

    const-string v3, "input"

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "223"

    filled-new-array {v3, v2, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "26"

    filled-new-array {v3, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_4
    check-cast v1, Landroid/content/Context;

    const-string v2, "sleep_timer_prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "target_ms"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "minutes"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
