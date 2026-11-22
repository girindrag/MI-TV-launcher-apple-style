.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;->f$0:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, -0x1

    const/16 v1, 0x3c

    const/4 v2, 0x0

    const/16 v3, 0x2a

    const-class v4, Lcom/gathin/tvhome/LauncherSettingsActivity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget v8, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->updateWifiLabel()V

    return-void

    :pswitch_0
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->showInputs()V

    return-void

    :pswitch_1
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->focusLibrary()V

    return-void

    :pswitch_2
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_3
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->openNetworkPill()V

    return-void

    :pswitch_4
    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v2, 0x1b

    invoke-direct {v1, v7, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_5
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    const-string v0, "com.mediatek.tvinput/.hdmi.HDMIInputService/HW6"

    invoke-virtual {v7, v0}, Lcom/gathin/tvhome/MainActivity;->openInput(Ljava/lang/String;)V

    return-void

    :pswitch_6
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    const-string v0, "com.mediatek.tvinput/.hdmi.HDMIInputService/HW5"

    invoke-virtual {v7, v0}, Lcom/gathin/tvhome/MainActivity;->openInput(Ljava/lang/String;)V

    return-void

    :pswitch_7
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    const-string v0, "com.mediatek.tvinput/.hdmi.HDMIInputService/HW4"

    invoke-virtual {v7, v0}, Lcom/gathin/tvhome/MainActivity;->openInput(Ljava/lang/String;)V

    return-void

    :pswitch_8
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/gathin/tvhome/SleepTimer;->handler:Landroid/os/Handler;

    const-string v0, "sleep_timer_prefs"

    invoke-virtual {v7, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "minutes"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1e

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const/16 v1, 0x78

    goto :goto_0

    :cond_2
    move v1, v6

    :goto_0
    invoke-static {v7, v1}, Lcom/gathin/tvhome/SleepTimer;->setTimer(Landroid/content/Context;I)V

    return-void

    :pswitch_9
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/gathin/tvhome/Sky;->optimizeMemory(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Samsung Device Care: Freed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " MB RAM!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_a
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_b
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->toggleReorder()V

    return-void

    :pswitch_c
    iget-boolean v1, v7, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    :cond_3
    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->beginReorder()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v5, v7, Lcom/gathin/tvhome/MainActivity;->dockEditing:Z

    iput v0, v7, Lcom/gathin/tvhome/MainActivity;->dockEditSlot:I

    invoke-virtual {v7, v6}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    const v0, 0x7f10001e

    invoke-static {v7, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :pswitch_d
    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/gathin/tvhome/Sky;->broken:Z

    xor-int/2addr v0, v5

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, v7, v5}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda25;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-static {v0, v2}, Lcom/gathin/tvhome/Sky;->run(Lcom/gathin/tvhome/CardFeature$Step;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    const v0, 0x7f100056

    invoke-static {v7, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void

    :pswitch_e
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/gathin/tvhome/Sky;->vendorIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    :cond_7
    return-void

    :pswitch_f
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_10
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->showSamsungQuickBar()V

    return-void

    :pswitch_11
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->openSourcePanel()V

    return-void

    :pswitch_12
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v0}, Lcom/gathin/tvhome/AppAdapter;->appCount()I

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, v7, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    sget v0, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    iget-object v1, v7, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v1}, Lcom/gathin/tvhome/AppAdapter;->appCount()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, v7, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f09003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    const/high16 v1, 0x40c00000    # 6.0f

    iget v3, v7, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v3, v1

    iget-object v1, v7, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v1}, Lcom/gathin/tvhome/AppAdapter;->focusScale()F

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    float-to-int v1, v5

    iget-boolean v3, v7, Lcom/gathin/tvhome/MainActivity;->glassShown:Z

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v5, v7, Lcom/gathin/tvhome/MainActivity;->glassCardW:I

    if-ne v3, v5, :cond_b

    iget-object v3, v7, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ne v3, v4, :cond_b

    iget-object v3, v7, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_c

    :cond_b
    invoke-virtual {v7, v2, v0}, Lcom/gathin/tvhome/MainActivity;->onTileFocused(Landroid/view/View;I)V

    :cond_c
    :goto_5
    return-void

    :pswitch_13
    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/gathin/tvhome/MainActivity$10;

    invoke-direct {v1, v7}, Lcom/gathin/tvhome/MainActivity$10;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void

    :pswitch_14
    iget-boolean v0, v7, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    if-eqz v0, :cond_d

    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->appLibrary:Lcom/gathin/tvhome/AppLibraryDialog;

    if-nez v0, :cond_d

    invoke-virtual {v7}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->focusLibrary()V

    :cond_d
    return-void

    :pswitch_15
    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->appLibrary:Lcom/gathin/tvhome/AppLibraryDialog;

    if-nez v0, :cond_f

    invoke-virtual {v7}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v7, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v1}, Lcom/gathin/tvhome/AppAdapter;->appCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, v7, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v1}, Lcom/gathin/tvhome/AppAdapter;->appCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v6, v7, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    :cond_f
    :goto_6
    return-void

    :pswitch_16
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->updateClockVisibility()V

    return-void

    :pswitch_17
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gathin/tvhome/ClockActivity;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_18
    sget v2, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v7}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_a

    :cond_10
    new-instance v2, Lcom/gathin/tvhome/PetalShowerView;

    invoke-direct {v2, v7}, Lcom/gathin/tvhome/PetalShowerView;-><init>(Landroid/content/Context;)V

    iget-object v3, v7, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;

    const/4 v3, 0x3

    invoke-direct {v0, v7, v2, v3}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-boolean v3, v2, Lcom/gathin/tvhome/PetalShowerView;->playing:Z

    iget-object v4, v2, Lcom/gathin/tvhome/PetalShowerView;->finish:Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    if-eqz v3, :cond_11

    invoke-virtual {v2, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Lcom/gathin/tvhome/PetalShowerView;->finish()V

    :cond_11
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->xFrac:[F

    array-length v3, v3

    if-lt v3, v1, :cond_12

    goto :goto_7

    :cond_12
    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->xFrac:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->delay:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->life:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->drop:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->size:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->swayAmp:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->swayFreq:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->swayPhase:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->rot0:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->spin:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->flipFreq:[F

    new-array v3, v1, [F

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->flipPhase:[F

    new-array v3, v1, [I

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->color:[I

    new-array v3, v1, [I

    iput-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->shape:[I

    :goto_7
    iput v1, v2, Lcom/gathin/tvhome/PetalShowerView;->count:I

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x898

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/gathin/tvhome/PetalShowerView;->duration:J

    iput-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->onDone:Ljava/lang/Runnable;

    :goto_8
    if-ge v6, v1, :cond_14

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->xFrac:[F

    int-to-float v3, v6

    iget-object v7, v2, Lcom/gathin/tvhome/PetalShowerView;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v8

    add-float/2addr v8, v3

    int-to-float v3, v1

    div-float/2addr v8, v3

    aput v8, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->delay:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v8, 0x3ea3d70a    # 0.32f

    mul-float/2addr v3, v8

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->life:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget-object v8, v2, Lcom/gathin/tvhome/PetalShowerView;->delay:[F

    aget v8, v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    const v10, 0x3f19999a    # 0.6f

    sub-float/2addr v8, v10

    mul-float/2addr v8, v3

    add-float/2addr v8, v10

    aput v8, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->drop:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v8, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v8

    const v8, 0x3f4ccccd    # 0.8f

    add-float/2addr v3, v8

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->size:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v8, 0x40e00000    # 7.0f

    mul-float/2addr v3, v8

    const/high16 v8, 0x41100000    # 9.0f

    add-float/2addr v3, v8

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->swayAmp:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v8, 0x41c00000    # 24.0f

    mul-float/2addr v3, v8

    const/high16 v8, 0x41200000    # 10.0f

    add-float/2addr v3, v8

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->swayFreq:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v10

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v3, v8

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->swayPhase:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v8, 0x40c90fdb

    mul-float/2addr v3, v8

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->rot0:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v10, 0x43b40000    # 360.0f

    mul-float/2addr v3, v10

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->spin:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v10, 0x42f00000    # 120.0f

    mul-float/2addr v3, v10

    const/high16 v10, 0x42200000    # 40.0f

    add-float/2addr v3, v10

    invoke-virtual {v7}, Ljava/util/Random;->nextBoolean()Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_9

    :cond_13
    const/high16 v9, -0x40800000    # -1.0f

    :goto_9
    mul-float/2addr v3, v9

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->flipFreq:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v9, 0x3ecccccd    # 0.4f

    add-float/2addr v3, v9

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->flipPhase:[F

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v8

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->color:[I

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aput v3, v0, v6

    iget-object v0, v2, Lcom/gathin/tvhome/PetalShowerView;->shape:[I

    iget-object v3, v2, Lcom/gathin/tvhome/PetalShowerView;->shapes:[Landroid/graphics/Path;

    array-length v3, v3

    invoke-virtual {v7, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aput v3, v0, v6

    add-int/2addr v6, v5

    goto/16 :goto_8

    :cond_14
    iput-boolean v5, v2, Lcom/gathin/tvhome/PetalShowerView;->playing:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/gathin/tvhome/PetalShowerView;->start:J

    iget-wide v0, v2, Lcom/gathin/tvhome/PetalShowerView;->duration:J

    invoke-virtual {v2, v4, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v2}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_15
    :goto_a
    return-void

    :pswitch_19
    iput-object v2, v7, Lcom/gathin/tvhome/MainActivity;->appLibrary:Lcom/gathin/tvhome/AppLibraryDialog;

    iput-object v2, v7, Lcom/gathin/tvhome/MainActivity;->openPopup:Landroid/widget/PopupWindow;

    iget-boolean v0, v7, Lcom/gathin/tvhome/MainActivity;->libraryFromTopBar:Z

    if-eqz v0, :cond_16

    iput-boolean v6, v7, Lcom/gathin/tvhome/MainActivity;->libraryFromTopBar:Z

    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->btnLibraryTop:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_b

    :cond_16
    iput-boolean v5, v7, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    iget-object v0, v7, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/4 v2, 0x7

    invoke-direct {v1, v7, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_b
    return-void

    :pswitch_1a
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7, v6, v5, v5}, Lcom/gathin/tvhome/MainActivity;->reloadApps(ZZZ)V

    return-void

    :pswitch_1b
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v7, v6}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
