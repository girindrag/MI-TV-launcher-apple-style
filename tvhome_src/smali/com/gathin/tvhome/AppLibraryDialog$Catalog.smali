.class public final Lcom/gathin/tvhome/AppLibraryDialog$Catalog;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/gathin/tvhome/AppLibraryDialog;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/AppLibraryDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v0, v0, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/gathin/tvhome/AppLibraryDialog$Row;

    iget-object v8, v0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v2, v8, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    move/from16 v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const v2, 0x7f09006b

    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v8, Lcom/gathin/tvhome/AppLibraryDialog;->icons:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v2, :cond_1

    iget-object v2, v8, Lcom/gathin/tvhome/AppLibraryDialog;->iconsLoading:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v8, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v12, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;

    move-object v2, v12

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v2 .. v7}, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;-><init>(Lcom/gathin/tvhome/AppLibraryDialog;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/widget/ImageView;)V

    sget-object v2, Lcom/gathin/tvhome/AppLibraryDialog;->LOADER:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const v2, 0x7f0900d9

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Lcom/gathin/tvhome/AppLibraryDialog;->label(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v2, 0x7f0900c2

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v8, Lcom/gathin/tvhome/AppLibraryDialog;->onHome:Ljava/util/function/Predicate;

    invoke-interface {v3, v10}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    iget-boolean v5, v8, Lcom/gathin/tvhome/AppLibraryDialog;->selectionMode:Z

    const/4 v6, 0x0

    if-nez v5, :cond_2

    iget-object v7, v8, Lcom/gathin/tvhome/AppLibraryDialog;->installTimes:Ljava/util/HashMap;

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v14, v8, Lcom/gathin/tvhome/AppLibraryDialog;->catalogTime:J

    invoke-static {v12, v13, v14, v15}, Lcom/gathin/tvhome/Sky;->recent(JJ)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    if-eqz v3, :cond_3

    const v12, 0x7f100046

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    const v12, 0x7f100048

    goto :goto_2

    :cond_4
    const v12, 0x7f100041

    :goto_2
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_5

    const v2, 0x1475bba4

    goto :goto_3

    :cond_5
    const v2, 0xcffffff

    :goto_3
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0x12

    invoke-virtual {v8, v2}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v8, v4}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v13

    const v14, 0x18ffffff

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v12, 0x7f090055

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    const/16 v15, 0x8

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v2, v15

    :goto_4
    invoke-virtual {v8, v2}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v2

    iput v2, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v3, :cond_7

    const/16 v13, 0x12

    goto :goto_5

    :cond_7
    move v13, v15

    :goto_5
    invoke-virtual {v8, v13}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v13

    iput v13, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v3, :cond_8

    const v2, 0x7f07001c

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_8
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v13, -0x8f2660

    invoke-virtual {v2, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v8, v15}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v8, v4}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    if-nez v3, :cond_a

    if-eqz v7, :cond_9

    goto :goto_7

    :cond_9
    move v6, v15

    :cond_a
    :goto_7
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;

    invoke-direct {v2, v0, v9, v10}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;-><init>(Lcom/gathin/tvhome/AppLibraryDialog$Catalog;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v5, :cond_b

    const/4 v2, 0x0

    goto :goto_8

    :cond_b
    new-instance v2, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v9}, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda1;-><init>(Lcom/gathin/tvhome/AppLibraryDialog$Catalog;Landroid/content/pm/ResolveInfo;)V

    :goto_8
    invoke-virtual {v11, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v2, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v10, v1}, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda2;-><init>(Lcom/gathin/tvhome/AppLibraryDialog$Catalog;Ljava/lang/String;Lcom/gathin/tvhome/AppLibraryDialog$Row;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v2, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v0, p2, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v1, 0x84

    invoke-virtual {p2, v1}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v1

    const/16 v2, 0xaa

    invoke-virtual {p2, v2}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v4

    invoke-virtual {p2, v1}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v1

    invoke-virtual {p2, v3}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p2, v2}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v2

    invoke-virtual {p2, v0}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v4

    invoke-virtual {p2, v0}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v5

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p2, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v6, 0x7f09006b

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x3c

    invoke-virtual {p2, v7}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v8

    invoke-virtual {p2, v7}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xf

    const-string v6, ""

    invoke-virtual {p2, v6, v1, v5}, Lcom/gathin/tvhome/AppLibraryDialog;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    const v7, 0x7f0900d9

    invoke-virtual {v1, v7}, Landroid/view/View;->setId(I)V

    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x2c

    invoke-virtual {p2, v9}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v9

    invoke-direct {v8, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v0

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xb

    const v1, -0x44000001

    invoke-virtual {p2, v6, v0, v1}, Lcom/gathin/tvhome/AppLibraryDialog;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x12

    invoke-virtual {p2, v2}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v4

    invoke-virtual {p2, v2}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v2

    const v5, 0x800035

    invoke-direct {v1, v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p2, v3}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result v2

    invoke-virtual {p2, v3}, Lcom/gathin/tvhome/AppLibraryDialog;->dp(I)I

    move-result p2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/gathin/tvhome/AppLibraryDialog$Row;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
