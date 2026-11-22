.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;->f$1:Ljava/lang/Object;

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;->f$0:Ljava/lang/Object;

    iget v4, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    check-cast v3, Lcom/gathin/tvhome/WallpaperPlayer;

    iget-object v0, v3, Lcom/gathin/tvhome/WallpaperPlayer;->caption:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_0
    check-cast v3, Lcom/gathin/tvhome/MainActivity$14;

    iget-object v0, v3, Lcom/gathin/tvhome/MainActivity$14;->this$0:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->showInputs()V

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    check-cast v3, Lcom/gathin/tvhome/MainActivity;

    iget-object v0, v3, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v3, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, v3, Lcom/gathin/tvhome/MainActivity;->heroArtAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_2
    check-cast v3, Lcom/gathin/tvhome/MainActivity;

    iget-object v0, v3, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    check-cast v2, Lcom/gathin/tvhome/PetalShowerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :pswitch_3
    check-cast v3, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, v3, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v4, v3, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v4, v0, v0, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v3, Lcom/gathin/tvhome/AppLibraryDialog;->shelf:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, v3, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v6

    add-int/2addr v6, v2

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v3, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v3, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v3, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, v3, Lcom/gathin/tvhome/AppLibraryDialog;->scrollOffset:F

    add-float/2addr v0, v2

    iget-boolean v2, v3, Lcom/gathin/tvhome/AppLibraryDialog;->highlightShown:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v3, Lcom/gathin/tvhome/AppLibraryDialog;->animations:Z

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v3, Lcom/gathin/tvhome/AppLibraryDialog;->spring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, v3, Lcom/gathin/tvhome/AppLibraryDialog;->spring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object v2, v3, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    iget v4, v3, Lcom/gathin/tvhome/AppLibraryDialog;->scrollOffset:F

    sub-float/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/gathin/tvhome/AppLibraryDialog;->highlightShown:Z

    iget-object v0, v3, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_3
    return-void

    :pswitch_4
    check-cast v3, Lcom/gathin/tvhome/AppLibraryDialog;

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v2}, Lcom/gathin/tvhome/AppLibraryDialog;->open(Landroid/content/pm/ResolveInfo;)V

    return-void

    :pswitch_5
    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    check-cast v3, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/gathin/tvhome/CoocaaSources;->LIST:Landroid/net/Uri;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    check-cast v2, Lcom/gathin/tvhome/CoocaaSources$Source;

    iget-object v4, v2, Lcom/gathin/tvhome/CoocaaSources$Source;->name:Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "index"

    iget v2, v2, Lcom/gathin/tvhome/CoocaaSources$Source;->index:I

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/gathin/tvhome/CoocaaSources;->METHOD:Landroid/net/Uri;

    const-string v5, "METHOD_GOTO_SOURCE"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "ret"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_6

    goto :goto_4

    :catch_0
    :cond_6
    const v1, 0x7f100057

    invoke-static {v3, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
