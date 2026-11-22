.class public final synthetic Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/AppLibraryDialog$Catalog;

.field public final synthetic f$1:Landroid/content/pm/ResolveInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AppLibraryDialog$Catalog;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/AppLibraryDialog$Catalog;

    iput-object p2, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/AppLibraryDialog$Catalog;

    iget-object v1, v1, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    invoke-virtual {v1}, Lcom/gathin/tvhome/AppLibraryDialog;->dismissActions()V

    iget-object v2, v0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/ResolveInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPackage:Ljava/lang/String;

    iget-object v4, v1, Lcom/gathin/tvhome/AppLibraryDialog;->spring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    iget-object v4, v1, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, v1, Lcom/gathin/tvhome/AppLibraryDialog;->panel:Landroid/widget/LinearLayout;

    const v7, 0x7f0b0010

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0900ad

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/PopupWindow;

    const/16 v10, 0xdc

    invoke-virtual {v1, v10}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v11

    const/4 v12, -0x2

    const/4 v13, 0x1

    invoke-direct {v9, v5, v11, v12, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, v1, Lcom/gathin/tvhome/AppLibraryDialog;->actionPopup:Landroid/widget/PopupWindow;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v11}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v13}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v9, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/PopupWindow;->setElevation(F)V

    new-instance v12, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;

    const/4 v14, 0x2

    invoke-direct {v12, v1, v9, v14}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v12}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v12, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;

    const/4 v14, 0x1

    invoke-direct {v12, v1, v2, v14}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v14, 0x7f100047

    invoke-virtual {v1, v7, v14, v12}, Lcom/gathin/tvhome/AppLibraryDialog;->addAction(Landroid/widget/LinearLayout;ILjava/lang/Runnable;)V

    iget-object v12, v1, Lcom/gathin/tvhome/AppLibraryDialog;->onHome:Ljava/util/function/Predicate;

    invoke-interface {v12, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const v14, 0x7f100049

    goto :goto_0

    :cond_1
    const v14, 0x7f100041

    :goto_0
    new-instance v15, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;

    const/4 v11, 0x1

    invoke-direct {v15, v1, v2, v12, v11}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v1, v7, v14, v15}, Lcom/gathin/tvhome/AppLibraryDialog;->addAction(Landroid/widget/LinearLayout;ILjava/lang/Runnable;)V

    invoke-static {v4, v3}, Lcom/gathin/tvhome/Sky;->appInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v11, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;

    const/4 v12, 0x1

    invoke-direct {v11, v1, v3, v2, v12}, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, 0x7f100042

    invoke-virtual {v1, v7, v2, v11}, Lcom/gathin/tvhome/AppLibraryDialog;->addAction(Landroid/widget/LinearLayout;ILjava/lang/Runnable;)V

    :cond_2
    invoke-virtual {v1, v10}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v2

    move v3, v8

    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_3

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0900d9

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    const/16 v12, 0x3a

    invoke-virtual {v1, v12}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    const/16 v10, 0x18

    invoke-virtual {v1, v10}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v10

    sub-int/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v5, v3, v8}, Landroid/view/View;->measure(II)V

    const/4 v3, 0x2

    new-array v10, v3, [I

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v3, v3, [I

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v12, Landroid/graphics/Rect;

    aget v14, v3, v8

    aget v15, v3, v13

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v16

    add-int v8, v16, v14

    aget v3, v3, v13

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {v12, v14, v15, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, v12, Landroid/graphics/Rect;->left:I

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v8

    add-int/2addr v8, v3

    const/4 v3, 0x0

    aget v14, v10, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v14

    invoke-virtual {v1, v6}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v11

    sub-int/2addr v3, v11

    iget v11, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v2

    invoke-virtual {v1, v6}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v2

    sub-int/2addr v11, v2

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v6}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v8

    add-int/2addr v8, v3

    aget v3, v10, v13

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v11

    add-int/2addr v11, v3

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v3, v12

    invoke-virtual {v1, v6}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    const v6, 0x3f6b851f    # 0.92f

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v10}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v6, 0x800033

    invoke-virtual {v9, v4, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-boolean v1, v1, Lcom/gathin/tvhome/AppLibraryDialog;->reducedMotion:Z

    if-eqz v1, :cond_4

    const-wide/16 v3, 0x5a

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0xdc

    :goto_2
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fcccccd    # 1.6f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    return v13
.end method
