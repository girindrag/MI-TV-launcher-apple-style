.class public final Lcom/gathin/tvhome/AppLibraryDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KNOWN:Ljava/util/HashMap;

.field public static final LOADER:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public actionPopup:Landroid/widget/PopupWindow;

.field public final activity:Landroid/app/Activity;

.field public final animations:Z

.field public apps:Ljava/util/List;

.field public catalog:Landroidx/recyclerview/widget/RecyclerView;

.field public catalogTime:J

.field public final catalogWidth:I

.field public final changed:Ljava/lang/Runnable;

.field public closed:Z

.field public final density:F

.field public final dismissed:Ljava/lang/Runnable;

.field public highlight:Lcom/gathin/tvhome/GlassView;

.field public highlightShown:Z

.field public final icons:Ljava/util/HashMap;

.field public final iconsLoading:Ljava/util/HashSet;

.field public final installTimes:Ljava/util/HashMap;

.field public instructions:Landroid/widget/TextView;

.field public final labels:Ljava/util/HashMap;

.field public final loads:Lcom/gathin/tvhome/LibraryLoads;

.field public final main:Landroid/os/Handler;

.field public final onHome:Ljava/util/function/Predicate;

.field public final panel:Landroid/widget/LinearLayout;

.field public final popup:Landroid/widget/PopupWindow;

.field public final reducedMotion:Z

.field public final rtl:Z

.field public scrollOffset:F

.field public selectedOffset:I

.field public selectedPackage:Ljava/lang/String;

.field public selectedPosition:I

.field public final selectionMode:Z

.field public shelf:Landroid/widget/FrameLayout;

.field public spring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public totalApps:I

.field public final tvPackages:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/AppLibraryDialog;->LOADER:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gathin/tvhome/AppLibraryDialog;->KNOWN:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZZLcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda21;Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->main:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->icons:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->iconsLoading:Ljava/util/HashSet;

    new-instance v0, Lcom/gathin/tvhome/LibraryLoads;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->loads:Lcom/gathin/tvhome/LibraryLoads;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->installTimes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->labels:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->tvPackages:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->animations:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f040026

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->rtl:Z

    iput-boolean p3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->reducedMotion:Z

    iput-boolean p4, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectionMode:Z

    iput-object p5, p0, Lcom/gathin/tvhome/AppLibraryDialog;->onHome:Ljava/util/function/Predicate;

    iput-object p6, p0, Lcom/gathin/tvhome/AppLibraryDialog;->changed:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/gathin/tvhome/AppLibraryDialog;->dismissed:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    iput p3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->density:F

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p4, 0xc

    invoke-virtual {p0, p4}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result p5

    const/16 p6, 0x8

    invoke-virtual {p0, p6}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result p6

    invoke-virtual {p0, p4}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v0

    invoke-virtual {p0, p4}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result p4

    invoke-virtual {p3, p5, p6, v0, p4}, Landroid/view/View;->setPadding(IIII)V

    const p4, 0x7f070006

    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p4, 0x320

    invoke-virtual {p0, p4}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result p4

    const/16 p5, 0xc8

    invoke-virtual {p0, p5}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const/16 p6, 0x40

    invoke-virtual {p0, p6}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result p6

    sub-int/2addr p1, p6

    invoke-static {p5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalogWidth:I

    const/16 p4, 0x118

    invoke-virtual {p0, p4}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result p4

    new-instance p5, Landroid/widget/PopupWindow;

    invoke-direct {p5, p3, p1, p4, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p5, p0, Lcom/gathin/tvhome/AppLibraryDialog;->popup:Landroid/widget/PopupWindow;

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p5, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p5, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p5, p3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance p1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0, p7, p2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p5, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public final addAction(Landroid/widget/LinearLayout;ILjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const p2, 0x7f09006b

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090055

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0900c2

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {p2, p3, v1}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public final changeHome(Landroid/content/pm/ResolveInfo;Z)V
    .locals 8

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-static {v1, v0, p2}, Lcom/gathin/tvhome/Sky;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const p1, 0x7f10004a

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectionMode:Z

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->changed:Ljava/lang/Runnable;

    iget-boolean v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->rtl:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v6, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v6, :cond_3

    move v4, v7

    goto :goto_0

    :cond_3
    sub-int/2addr v4, v2

    :goto_0
    iput v5, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedOffset:I

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p2

    sub-int/2addr v2, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, p2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int v2, p2, v0

    :goto_1
    iput v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedOffset:I

    :cond_5
    if-ltz v4, :cond_6

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    :cond_6
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPackage:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AppLibraryDialog;->fill(Ljava/util/ArrayList;)V

    return-void

    :cond_7
    iput v5, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedOffset:I

    if-eqz p2, :cond_e

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_e

    iget p2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPosition:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, p1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int v0, p1, p2

    :goto_2
    iput v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedOffset:I

    :cond_9
    iget p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPosition:I

    iget-object p2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v0, p2, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v0, v2

    :goto_3
    if-ge v0, p2, :cond_c

    add-int v3, p1, v0

    rem-int v4, v3, p2

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/gathin/tvhome/AppLibraryDialog;->onHome:Ljava/util/function/Predicate;

    invoke-interface {v6, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v0, p1, 0x1

    if-ge v0, p2, :cond_d

    move v4, v0

    goto :goto_4

    :cond_d
    sub-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v4, p1

    :goto_4
    if-ltz v4, :cond_e

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPackage:Ljava/lang/String;

    iput v4, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPosition:I

    :cond_e
    invoke-virtual {p0}, Lcom/gathin/tvhome/AppLibraryDialog;->dismissActions()V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->load(Z)V

    return-void
.end method

.method public final close()V
    .locals 2

    invoke-virtual {p0}, Lcom/gathin/tvhome/AppLibraryDialog;->dismissActions()V

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->closed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->closed:Z

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->dismissed:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dismissActions()V
    .locals 2

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->actionPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->actionPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final dp(I)I
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final fill(Ljava/util/ArrayList;)V
    .locals 14

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->totalApps:I

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->onHome:Ljava/util/function/Predicate;

    invoke-interface {v2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalogTime:J

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    new-instance v2, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda3;-><init>(Lcom/gathin/tvhome/AppLibraryDialog;Ljava/util/HashMap;Ljava/text/Collator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->spring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->highlightShown:Z

    const/16 v1, 0x118

    invoke-virtual {p0, v1}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v1

    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->popup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalogWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3, v1}, Landroid/widget/PopupWindow;->update(II)V

    :cond_3
    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v10

    invoke-virtual {p0, v7}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v7

    invoke-virtual {v2, v6, v8, v10, v7}, Landroid/view/View;->setPadding(IIII)V

    const v6, 0x7f100004

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x16

    const/4 v8, -0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/gathin/tvhome/AppLibraryDialog;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x24

    invoke-virtual {p0, v10}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v0, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v10, p0, Lcom/gathin/tvhome/AppLibraryDialog;->totalApps:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const/high16 v13, 0x7f0e0000

    invoke-virtual {v6, v13, v10, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v10, -0x59000001

    const/16 v12, 0xd

    invoke-virtual {p0, v6, v12, v10}, Lcom/gathin/tvhome/AppLibraryDialog;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v10, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x2c

    invoke-virtual {p0, v10}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v10

    invoke-direct {v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/AppLibraryDialog;->hint(Z)Ljava/lang/String;

    move-result-object v2

    const v6, -0x44000001

    invoke-virtual {p0, v2, v12, v6}, Lcom/gathin/tvhome/AppLibraryDialog;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->instructions:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->instructions:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->instructions:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v6

    invoke-virtual {p0, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v10

    const/4 v12, 0x6

    invoke-virtual {p0, v12}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v12

    invoke-virtual {v2, v6, v0, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->instructions:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x1a

    invoke-virtual {p0, v10}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v10

    invoke-direct {v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/16 v6, 0xa

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->instructions:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f100043

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x12

    invoke-virtual {p0, p1, v0, v8}, Lcom/gathin/tvhome/AppLibraryDialog;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v0

    invoke-virtual {p0, v6}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v5

    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_4

    :cond_4
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->shelf:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->shelf:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v2, v3, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-boolean v5, p0, Lcom/gathin/tvhome/AppLibraryDialog;->rtl:Z

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutDirection(I)V

    iput-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/gathin/tvhome/AppLibraryDialog$1;

    invoke-direct {v5, p0}, Lcom/gathin/tvhome/AppLibraryDialog$1;-><init>(Lcom/gathin/tvhome/AppLibraryDialog;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {p0, v6}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v7

    invoke-virtual {p0, v9}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v10

    invoke-virtual {p0, v6}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v6

    invoke-virtual {p0, v9}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v9

    invoke-virtual {v2, v7, v10, v6, v9}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;

    invoke-direct {v6, p0}, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;-><init>(Lcom/gathin/tvhome/AppLibraryDialog;)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v6, p0, Lcom/gathin/tvhome/AppLibraryDialog;->shelf:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/gathin/tvhome/GlassView;

    invoke-direct {v6, v3, p1}, Lcom/gathin/tvhome/GlassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Lcom/gathin/tvhome/GlassView;->setRadius(F)V

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->shelf:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x90

    invoke-virtual {p0, v7}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v7

    const/16 v9, 0xb4

    invoke-virtual {p0, v9}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v9

    invoke-direct {v6, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->scrollOffset:F

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    new-instance v5, Lcom/gathin/tvhome/MainActivity$12;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Lcom/gathin/tvhome/MainActivity$12;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v3, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Lkotlin/ResultKt;)V

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->spring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->reducedMotion:Z

    if-eqz v3, :cond_5

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v5, 0x466a6000    # 15000.0f

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    invoke-virtual {v3, v11}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v3, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    goto :goto_1

    :cond_5
    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v5, 0x43820000    # 260.0f

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const v5, 0x3f147ae1    # 0.58f

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v3, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    :goto_1
    new-instance p1, Lcom/gathin/tvhome/MainActivity$11;

    const/4 v3, 0x2

    invoke-direct {p1, p0, v3}, Lcom/gathin/tvhome/MainActivity$11;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->shelf:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPosition:I

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move p1, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectedOffset:I

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_8

    iput v8, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    :cond_8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;-><init>(Ljava/lang/Object;Landroid/view/View;II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void
.end method

.method public final hint(Z)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->selectionMode:Z

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const p1, 0x7f100049

    goto :goto_0

    :cond_0
    const p1, 0x7f100041

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    const p1, 0x7f100045

    goto :goto_1

    :cond_2
    const p1, 0x7f100044

    :goto_1
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final label(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 4

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->labels:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/gathin/tvhome/Cards;->cleanLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public final load(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/gathin/tvhome/AppLibraryDialog;->dismissActions()V

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->loads:Lcom/gathin/tvhome/LibraryLoads;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iput-boolean v1, v0, Lcom/gathin/tvhome/LibraryLoads;->revealPending:Z

    :cond_0
    iget p1, v0, Lcom/gathin/tvhome/LibraryLoads;->latest:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/gathin/tvhome/LibraryLoads;->latest:I

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;-><init>(Lcom/gathin/tvhome/AppLibraryDialog;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    sget-object p1, Lcom/gathin/tvhome/AppLibraryDialog;->LOADER:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final open(Landroid/content/pm/ResolveInfo;)V
    .locals 5

    invoke-virtual {p0}, Lcom/gathin/tvhome/AppLibraryDialog;->close()V

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "com.android.tv.settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.xiaomi.gtv.settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.gathin.tvhome.action.LAUNCHER_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/gathin/tvhome/AppLibraryDialog;->tvPackages:Ljava/util/HashSet;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 v2, 0x10200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AppLibraryDialog;->label(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f100006

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final text(Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f10002c

    invoke-static {v1, p1}, Lcom/gathin/tvhome/Sky;->get(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-object v0
.end method
