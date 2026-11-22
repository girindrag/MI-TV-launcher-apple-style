.class public final Lcom/gathin/tvhome/AppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final advancedEffects:Z

.field public final animations:Z

.field public final appBanners:Ljava/util/Map;

.field public final appLabels:Ljava/util/Map;

.field public final cinematic:Z

.field public final ctx:Landroid/content/Context;

.field public final dockRow:Z

.field public final dockSize:I

.field public final dockTitle:Z

.field public docked:I

.field public emptySlots:I

.field public final favourites:Ljava/util/List;

.field public final fillDock:Z

.field public final focusOvershoot:Z

.field public final hidden:Ljava/util/HashSet;

.field public final items:Ljava/util/ArrayList;

.field public final launchActions:Ljava/util/Map;

.field public leanbackPackages:Ljava/util/HashSet;

.field public final libraryPreload:Ljava/util/HashSet;

.field public final listener:Lcom/gathin/tvhome/AppAdapter$TileListener;

.field public final reducedMotion:Z

.field public reordering:Z

.field public final restNameAlpha:F

.field public final rowsBelowDock:I

.field public savedDocked:I

.field public savedRanks:Ljava/util/Map;

.field public final showHomeSettings:Z

.field public final showLibrary:Z

.field public final singleRow:Z

.field public final tileMenu:Z

.field public final uniformTiles:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gathin/tvhome/AppAdapter$TileListener;ILcom/gathin/tvhome/Config;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->savedRanks:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/gathin/tvhome/AppAdapter;->savedDocked:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->leanbackPackages:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/gathin/tvhome/AppAdapter;->listener:Lcom/gathin/tvhome/AppAdapter$TileListener;

    iput p3, p0, Lcom/gathin/tvhome/AppAdapter;->dockSize:I

    iget-object p1, p4, Lcom/gathin/tvhome/Config;->dockApps:Ljava/util/List;

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter;->favourites:Ljava/util/List;

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->fillDock:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->fillDock:Z

    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p4, Lcom/gathin/tvhome/Config;->hiddenApps:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter;->hidden:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p4, Lcom/gathin/tvhome/Config;->libraryApps:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter;->libraryPreload:Ljava/util/HashSet;

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->animations:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->animations:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->advancedEffects:Z

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->advancedEffects:Z

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->showHomeSettingsShortcut:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->showHomeSettings:Z

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->appLibrary:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->showLibrary:Z

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->reducedMotion:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->reducedMotion:Z

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->focusOvershoot:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->focusOvershoot:Z

    iget p1, p4, Lcom/gathin/tvhome/Config;->rowsBelowDock:I

    iput p1, p0, Lcom/gathin/tvhome/AppAdapter;->rowsBelowDock:I

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->dockTitle:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->dockTitle:Z

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->dockRow:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->dockRow:Z

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->singleRow:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->singleRow:Z

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->alwaysShowNames:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/gathin/tvhome/AppAdapter;->restNameAlpha:F

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->cinematicHome:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->cinematic:Z

    iget-object p1, p4, Lcom/gathin/tvhome/Config;->launchActions:Ljava/util/Map;

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter;->launchActions:Ljava/util/Map;

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->tileMenu:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->tileMenu:Z

    iget-object p1, p4, Lcom/gathin/tvhome/Config;->appLabels:Ljava/util/Map;

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter;->appLabels:Ljava/util/Map;

    iget-object p1, p4, Lcom/gathin/tvhome/Config;->appBanners:Ljava/util/Map;

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter;->appBanners:Ljava/util/Map;

    iget-boolean p1, p4, Lcom/gathin/tvhome/Config;->uniformTiles:Z

    iput-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->uniformTiles:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result p1

    if-nez p1, :cond_2

    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static cornerRadius(IF)F
    .locals 2

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, p1

    int-to-float p0, p0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr p1, v1

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float/2addr p0, v0

    return p0
.end method

.method public static mix(IIF)I
    .locals 6

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, v3, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static plateColor(Landroid/graphics/Bitmap;I)I
    .locals 19

    move/from16 v5, p1

    rsub-int/lit8 v0, v5, 0x2f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v0, v4, 0x2

    const/16 v8, 0x30

    rsub-int/lit8 v9, v0, 0x30

    new-array v10, v9, [I

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move v3, v9

    move v6, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-array v0, v9, [I

    new-array v1, v9, [I

    new-array v2, v9, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v9, :cond_1

    aget v6, v10, v4

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v11, 0xf0

    if-ge v7, v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    aput v7, v0, v5

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v7

    aput v7, v1, v5

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-float v4, v5

    int-to-float v6, v9

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v7, v6

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_2
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    div-int/lit8 v7, v5, 0x2

    aget v4, v4, v7

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->sort([I)V

    aget v9, v9, v7

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->sort([I)V

    aget v7, v10, v7

    const-wide/16 v10, 0x0

    move-wide v12, v10

    move-wide v14, v12

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v3, v5, :cond_4

    aget v17, v0, v3

    sub-int v17, v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    aget v18, v1, v3

    sub-int v18, v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v2, v3

    sub-int v17, v17, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 p1, v4

    add-int v4, v17, v18

    if-lt v4, v8, :cond_3

    move/from16 v18, v9

    goto :goto_4

    :cond_3
    aget v4, v0, v3

    move/from16 v18, v9

    int-to-long v8, v4

    add-long/2addr v10, v8

    aget v4, v1, v3

    int-to-long v8, v4

    add-long/2addr v12, v8

    aget v4, v2, v3

    int-to-long v8, v4

    add-long/2addr v14, v8

    move/from16 v4, v16

    add-int/lit8 v16, v4, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, p1

    move/from16 v9, v18

    const/16 v8, 0x30

    goto :goto_3

    :cond_4
    move/from16 v4, v16

    int-to-float v0, v4

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v6, v1

    cmpg-float v0, v0, v6

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    int-to-long v0, v4

    div-long/2addr v10, v0

    long-to-int v2, v10

    div-long/2addr v12, v0

    long-to-int v3, v12

    div-long/2addr v14, v0

    long-to-int v0, v14

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    :goto_5
    return v3
.end method

.method public static tileWidthPx(IIIIZZF)I
    .locals 3

    const/high16 v0, 0x43340000    # 180.0f

    mul-float v1, p6, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x42a00000    # 80.0f

    if-lez p0, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    div-int/2addr p0, p2

    int-to-float p0, p0

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p2, p6

    sub-float/2addr p0, p2

    const p2, 0x3f8ccccd    # 1.1f

    div-float/2addr p0, p2

    float-to-int p0, p0

    mul-float p2, p6, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    :goto_0
    if-lez p1, :cond_6

    if-gtz p3, :cond_2

    goto :goto_4

    :cond_2
    if-eqz p5, :cond_4

    if-eqz p4, :cond_3

    const/high16 p0, 0x42d00000    # 104.0f

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    const/high16 p2, 0x42400000    # 48.0f

    add-float/2addr p0, p2

    goto :goto_2

    :cond_4
    const/high16 p0, 0x41e00000    # 28.0f

    :goto_2
    mul-float/2addr p0, p6

    int-to-float p1, p1

    sub-float/2addr p1, p0

    add-int/lit8 p3, p3, 0x1

    int-to-float p0, p3

    div-float/2addr p1, p0

    if-eqz p5, :cond_5

    const/high16 p0, 0x42340000    # 45.0f

    goto :goto_3

    :cond_5
    const/high16 p0, 0x42000000    # 32.0f

    :goto_3
    mul-float/2addr p0, p6

    sub-float/2addr p1, p0

    mul-float/2addr p1, v0

    const/high16 p0, 0x42ca0000    # 101.0f

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-float/2addr p6, v2

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, v1

    const p3, 0x3f59999a    # 0.85f

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_6
    :goto_4
    return v1
.end method


# virtual methods
.method public final ambientColorAt(I)I
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, -0xbbbbbc

    if-ltz v1, :cond_14

    iget-object v3, v0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget v3, v1, Lcom/gathin/tvhome/AppAdapter$Entry;->ambient:I

    if-nez v3, :cond_13

    const/4 v3, 0x1

    iget-boolean v4, v0, Lcom/gathin/tvhome/AppAdapter;->uniformTiles:Z

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/gathin/tvhome/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v10, v1, Lcom/gathin/tvhome/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    if-nez v10, :cond_b

    if-nez v9, :cond_1

    :goto_0
    const v2, -0x91918d

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v11, 0x18

    invoke-static {v11, v11, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v8, v8, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v4, 0xc

    new-array v9, v4, [F

    new-array v12, v7, [I

    aput v6, v12, v3

    aput v4, v12, v8

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[F

    new-array v6, v6, [F

    move v13, v8

    :goto_1
    if-ge v13, v11, :cond_7

    move v14, v8

    :goto_2
    if-ge v14, v11, :cond_6

    invoke-virtual {v10, v14, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v11, 0x80

    if-ge v2, v11, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v15, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v6, v3

    const v11, 0x3e99999a    # 0.3f

    cmpg-float v11, v2, v11

    if-ltz v11, :cond_5

    aget v11, v6, v7

    cmpg-float v16, v11, v5

    if-gez v16, :cond_4

    goto :goto_3

    :cond_4
    aget v16, v6, v8

    const/high16 v17, 0x41f00000    # 30.0f

    div-float v5, v16, v17

    float-to-int v5, v5

    rem-int/2addr v5, v4

    mul-float/2addr v2, v11

    aget v11, v9, v5

    add-float/2addr v11, v2

    aput v11, v9, v5

    aget-object v11, v12, v5

    aget v16, v11, v8

    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float v4, v4, v16

    aput v4, v11, v8

    aget-object v4, v12, v5

    aget v11, v4, v3

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v8, v11

    aput v8, v4, v3

    aget-object v4, v12, v5

    aget v5, v4, v7

    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    aput v8, v4, v7

    :cond_5
    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0xc

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v8, 0x0

    const/16 v11, 0x18

    goto :goto_2

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/16 v4, 0xc

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v8, 0x0

    const/16 v11, 0x18

    goto :goto_1

    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    move v5, v3

    const/4 v2, 0x0

    const/16 v4, 0xc

    :goto_4
    if-ge v5, v4, :cond_9

    aget v6, v9, v5

    aget v8, v9, v2

    cmpl-float v6, v6, v8

    if-lez v6, :cond_8

    move v2, v5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    aget v4, v9, v2

    const/16 v5, 0x240

    int-to-float v5, v5

    const v6, 0x3cf5c28f    # 0.03f

    mul-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_a

    goto/16 :goto_0

    :cond_a
    aget-object v2, v12, v2

    const/4 v5, 0x0

    aget v5, v2, v5

    div-float/2addr v5, v4

    float-to-int v5, v5

    aget v3, v2, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    aget v2, v2, v7

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v5, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    goto/16 :goto_9

    :cond_b
    if-eqz v10, :cond_c

    move-object v9, v10

    :cond_c
    if-nez v9, :cond_d

    move-object/from16 v18, v1

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_e
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v8, 0xc

    invoke-static {v8, v8, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v4, 0x90

    new-array v9, v4, [I

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move/from16 v21, v8

    move/from16 v24, v8

    move/from16 v25, v8

    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    new-array v5, v6, [F

    const-wide/16 v12, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    move v8, v11

    move-wide v10, v12

    move-wide v14, v10

    :goto_5
    if-ge v8, v4, :cond_11

    aget v7, v9, v8

    shr-int/lit8 v4, v7, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v3, v7, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v0, v7, 0xff

    move-object/from16 v18, v1

    move/from16 v19, v2

    int-to-long v1, v4

    add-long/2addr v12, v1

    int-to-long v1, v3

    add-long/2addr v10, v1

    int-to-long v1, v0

    add-long/2addr v14, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v1, :cond_f

    const/4 v0, 0x0

    goto :goto_6

    :cond_f
    sub-int v0, v1, v0

    int-to-float v0, v0

    int-to-float v2, v1

    div-float/2addr v0, v2

    :goto_6
    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const v2, 0x3fb33333    # 1.4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v0

    cmpl-float v0, v1, v6

    if-lez v0, :cond_10

    move v6, v1

    move v2, v7

    goto :goto_7

    :cond_10
    move/from16 v2, v19

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    const/16 v4, 0x90

    const/4 v7, 0x2

    goto :goto_5

    :cond_11
    move-object/from16 v18, v1

    move/from16 v19, v2

    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_12

    const/16 v0, 0x90

    int-to-long v0, v0

    div-long/2addr v12, v0

    long-to-int v2, v12

    div-long/2addr v10, v0

    long-to-int v3, v10

    div-long/2addr v14, v0

    long-to-int v0, v14

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    aget v1, v5, v0

    const v2, 0x3f0ccccd    # 0.55f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v5, v0

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    goto :goto_8

    :cond_12
    move/from16 v2, v19

    const/4 v0, 0x2

    invoke-static {v2, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x1

    aget v2, v5, v1

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v5, v1

    const/high16 v1, 0x3f000000    # 0.5f

    aget v2, v5, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v5, v0

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    :goto_8
    move-object/from16 v1, v18

    :goto_9
    iput v2, v1, Lcom/gathin/tvhome/AppAdapter$Entry;->ambient:I

    :cond_13
    iget v0, v1, Lcom/gathin/tvhome/AppAdapter$Entry;->ambient:I

    return v0

    :cond_14
    :goto_a
    return v2
.end method

.method public final appCount()I
    .locals 1

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final focusScale()F
    .locals 1

    iget-boolean v0, p0, Lcom/gathin/tvhome/AppAdapter;->animations:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/gathin/tvhome/AppAdapter;->advancedEffects:Z

    if-eqz v0, :cond_1

    const v0, 0x3f8f5c29    # 1.12f

    goto :goto_0

    :cond_1
    const v0, 0x3f8ccccd    # 1.1f

    :goto_0
    return v0
.end method

.method public final focusablePosition(I)I
    .locals 2

    iget v0, p0, Lcom/gathin/tvhome/AppAdapter;->docked:I

    iget v1, p0, Lcom/gathin/tvhome/AppAdapter;->emptySlots:I

    if-lez v1, :cond_0

    if-lt p1, v0, :cond_0

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    add-int/lit8 p1, v0, -0x1

    :cond_0
    return p1
.end method

.method public final getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/gathin/tvhome/AppAdapter;->showLibrary:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget-object p1, p1, Lcom/gathin/tvhome/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result p1

    return p1
.end method

.method public final isLibraryAt(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/gathin/tvhome/AppAdapter;->showLibrary:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final keyAt(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget-object p1, p1, Lcom/gathin/tvhome/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final movableCount()I
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget v0, v0, Lcom/gathin/tvhome/AppAdapter$Entry;->kind:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final movableKeys()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget v3, v2, Lcom/gathin/tvhome/AppAdapter$Entry;->kind:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v2, v2, Lcom/gathin/tvhome/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final move(II)V
    .locals 2

    if-eq p1, p2, :cond_2

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gathin/tvhome/AppAdapter$Entry;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    iget v1, p0, Lcom/gathin/tvhome/AppAdapter;->dockSize:I

    if-lt p1, v1, :cond_1

    if-ge p2, v1, :cond_2

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v2, p1

    check-cast v2, Lcom/gathin/tvhome/AppAdapter$Holder;

    iget-object v3, v0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget v4, v3, Lcom/gathin/tvhome/AppAdapter$Entry;->kind:I

    iget-object v5, v2, Lcom/gathin/tvhome/AppAdapter$Holder;->icon:Landroid/widget/ImageView;

    iget-object v6, v2, Lcom/gathin/tvhome/AppAdapter$Holder;->banner:Landroid/widget/ImageView;

    iget-object v7, v2, Lcom/gathin/tvhome/AppAdapter$Holder;->name:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/gathin/tvhome/AppAdapter$Holder;->card:Landroid/view/View;

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-ne v4, v9, :cond_1

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v12}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_1
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v13, v3, Lcom/gathin/tvhome/AppAdapter$Entry;->name:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v13, v0, Lcom/gathin/tvhome/AppAdapter;->dockRow:Z

    if-eqz v13, :cond_3

    iget-boolean v13, v0, Lcom/gathin/tvhome/AppAdapter;->singleRow:Z

    if-nez v13, :cond_2

    iget v13, v0, Lcom/gathin/tvhome/AppAdapter;->dockSize:I

    if-ge v1, v13, :cond_3

    :cond_2
    move v13, v4

    goto :goto_0

    :cond_3
    move v13, v12

    :goto_0
    iget v14, v0, Lcom/gathin/tvhome/AppAdapter;->restNameAlpha:F

    const/4 v15, 0x0

    if-eqz v13, :cond_4

    cmpl-float v13, v14, v15

    if-nez v13, :cond_4

    goto :goto_1

    :cond_4
    move v10, v12

    :goto_1
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_5

    const/high16 v14, 0x3f800000    # 1.0f

    :cond_5
    invoke-virtual {v7, v14}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v7, v0, Lcom/gathin/tvhome/AppAdapter;->animations:Z

    if-eqz v10, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/AppAdapter;->focusScale()F

    move-result v14

    goto :goto_2

    :cond_6
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v8, v14}, Landroid/view/View;->setScaleX(F)V

    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/AppAdapter;->focusScale()F

    move-result v7

    goto :goto_3

    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v8, v7}, Landroid/view/View;->setScaleY(F)V

    iget-object v7, v0, Lcom/gathin/tvhome/AppAdapter;->ctx:Landroid/content/Context;

    iget-boolean v14, v0, Lcom/gathin/tvhome/AppAdapter;->advancedEffects:Z

    if-eqz v10, :cond_8

    if-eqz v14, :cond_8

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    const/high16 v16, -0x3f800000    # -4.0f

    mul-float v15, v15, v16

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v8, v15}, Landroid/view/View;->setTranslationY(F)V

    if-eqz v10, :cond_9

    if-eqz v14, :cond_9

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v15, 0x41000000    # 8.0f

    mul-float/2addr v15, v7

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v8, v15}, Landroid/view/View;->setTranslationZ(F)V

    const v7, 0x3f847ae1    # 1.035f

    if-eqz v10, :cond_a

    if-eqz v14, :cond_a

    move v15, v7

    goto :goto_6

    :cond_a
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v6, v15}, Landroid/view/View;->setScaleX(F)V

    if-eqz v10, :cond_b

    if-eqz v14, :cond_b

    goto :goto_7

    :cond_b
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_7
    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    iget-object v7, v3, Lcom/gathin/tvhome/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v10

    const/4 v14, -0x1

    if-ne v10, v14, :cond_c

    move-object v10, v11

    goto :goto_8

    :cond_c
    iget-object v10, v2, Lcom/gathin/tvhome/AppAdapter$Holder;->cardBackground:Landroid/graphics/drawable/Drawable;

    :goto_8
    invoke-virtual {v8, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v10, v0, Lcom/gathin/tvhome/AppAdapter;->uniformTiles:Z

    iget-object v14, v3, Lcom/gathin/tvhome/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_18

    if-nez v7, :cond_18

    iget-object v15, v3, Lcom/gathin/tvhome/AppAdapter$Entry;->backdrop:[I

    if-nez v15, :cond_17

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/AppAdapter;->ambientColorAt(I)I

    move-result v1

    const v15, 0x3f1eb852    # 0.62f

    if-nez v14, :cond_d

    move-object v0, v11

    goto/16 :goto_c

    :cond_d
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v16

    if-eqz v16, :cond_e

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 p1, v16

    goto :goto_9

    :cond_e
    move-object/from16 p1, v14

    :goto_9
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v11, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v9, 0x30

    invoke-static {v9, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v13, p1

    invoke-virtual {v13, v12, v12, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v11, 0x7

    invoke-static {v4, v11}, Lcom/gathin/tvhome/AppAdapter;->plateColor(Landroid/graphics/Bitmap;I)I

    move-result v12

    const/16 v13, 0x28

    invoke-static {v4, v13}, Lcom/gathin/tvhome/AppAdapter;->plateColor(Landroid/graphics/Bitmap;I)I

    move-result v18

    if-nez v12, :cond_f

    if-eqz v18, :cond_f

    const/16 v12, 0xa

    invoke-static {v4, v12}, Lcom/gathin/tvhome/AppAdapter;->plateColor(Landroid/graphics/Bitmap;I)I

    move-result v19

    move v11, v13

    move/from16 v9, v18

    move v13, v12

    move/from16 v12, v19

    goto :goto_a

    :cond_f
    if-nez v18, :cond_10

    if-eqz v12, :cond_10

    const/16 v13, 0x25

    invoke-static {v4, v13}, Lcom/gathin/tvhome/AppAdapter;->plateColor(Landroid/graphics/Bitmap;I)I

    move-result v18

    move/from16 v9, v18

    move/from16 v21, v13

    move v13, v11

    move/from16 v11, v21

    goto :goto_a

    :cond_10
    move v13, v11

    move/from16 v9, v18

    const/16 v11, 0x28

    :goto_a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v12, :cond_14

    if-nez v9, :cond_11

    goto :goto_b

    :cond_11
    int-to-float v4, v13

    mul-float/2addr v4, v15

    const/16 v15, 0x30

    int-to-float v15, v15

    div-float/2addr v4, v15

    const v19, 0x3e428f5c    # 0.19f

    add-float v4, v4, v19

    int-to-float v0, v11

    const v20, 0x3f1eb852    # 0.62f

    mul-float v0, v0, v20

    div-float/2addr v0, v15

    add-float v0, v0, v19

    neg-float v15, v4

    sub-float/2addr v0, v4

    div-float/2addr v15, v0

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v4, v17, v4

    div-float/2addr v4, v0

    const/4 v0, 0x7

    if-ne v13, v0, :cond_12

    const/16 v0, 0x28

    if-eq v11, v0, :cond_13

    :cond_12
    const v0, -0x414ccccd    # -0.35f

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const v0, 0x3faccccd    # 1.35f

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_13
    invoke-static {v12, v9, v15}, Lcom/gathin/tvhome/AppAdapter;->mix(IIF)I

    move-result v0

    invoke-static {v12, v9, v4}, Lcom/gathin/tvhome/AppAdapter;->mix(IIF)I

    move-result v4

    filled-new-array {v0, v4}, [I

    move-result-object v0

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_15

    goto :goto_d

    :cond_15
    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x0

    aget v4, v0, v1

    const/high16 v1, 0x42280000    # 42.0f

    cmpl-float v1, v4, v1

    if-lez v1, :cond_16

    const/high16 v1, 0x428c0000    # 70.0f

    cmpg-float v1, v4, v1

    if-gez v1, :cond_16

    const/4 v1, 0x1

    aget v1, v0, v1

    const v4, 0x3e99999a    # 0.3f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_16

    const/high16 v1, 0x42100000    # 36.0f

    const/4 v4, 0x0

    aput v1, v0, v4

    :cond_16
    const/4 v1, 0x2

    aget v4, v0, v1

    const v9, 0x3f1eb852    # 0.62f

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aget v9, v0, v1

    const v11, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v11

    aput v9, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    filled-new-array {v4, v0}, [I

    move-result-object v0

    :goto_d
    iput-object v0, v3, Lcom/gathin/tvhome/AppAdapter$Entry;->backdrop:[I

    :cond_17
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, v3, Lcom/gathin/tvhome/AppAdapter$Entry;->backdrop:[I

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    const/16 v0, 0x8

    iget-object v1, v2, Lcom/gathin/tvhome/AppAdapter$Holder;->label:Landroid/widget/TextView;

    if-eqz v7, :cond_19

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_19
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v3, Lcom/gathin/tvhome/AppAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_1a

    move v12, v0

    goto :goto_e

    :cond_1a
    move v12, v4

    :goto_e
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    new-instance v0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    move-object/from16 v4, p0

    invoke-direct {v0, v4, v3, v1}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, v4, v2, v3}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/gathin/tvhome/AppAdapter;Lcom/gathin/tvhome/AppAdapter$Holder;Lcom/gathin/tvhome/AppAdapter$Entry;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/gathin/tvhome/AppAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0011

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090034

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v1}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance p2, Lcom/gathin/tvhome/AppAdapter$1;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0006

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/gathin/tvhome/AppAdapter;->dockSize:I

    iget v7, p0, Lcom/gathin/tvhome/AppAdapter;->rowsBelowDock:I

    iget-boolean v8, p0, Lcom/gathin/tvhome/AppAdapter;->dockTitle:Z

    iget-boolean v9, p0, Lcom/gathin/tvhome/AppAdapter;->dockRow:Z

    move v4, v0

    move v10, p2

    invoke-static/range {v4 .. v10}, Lcom/gathin/tvhome/AppAdapter;->tileWidthPx(IIIIZZF)I

    move-result p1

    int-to-float v2, p1

    const/high16 v4, 0x42ca0000    # 101.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x43340000    # 180.0f

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const v4, 0x7f09003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f090090

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->dockRow:Z

    if-eqz p1, :cond_2

    const/4 v6, 0x7

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    :goto_1
    int-to-float v6, v6

    mul-float/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v6, v2

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez p1, :cond_3

    const/high16 p1, 0x41a00000    # 20.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v3, p2, p1, v6, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->singleRow:Z

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/gathin/tvhome/AppAdapter;->dockSize:I

    div-int/2addr v0, p2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_4
    iget-boolean p1, p0, Lcom/gathin/tvhome/AppAdapter;->uniformTiles:Z

    if-eqz p1, :cond_5

    const p1, 0x7f09006b

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v0, v2

    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    new-instance p1, Lcom/gathin/tvhome/AppAdapter$Holder;

    iget-boolean v6, p0, Lcom/gathin/tvhome/AppAdapter;->advancedEffects:Z

    iget-boolean v7, p0, Lcom/gathin/tvhome/AppAdapter;->reducedMotion:Z

    iget-object v4, p0, Lcom/gathin/tvhome/AppAdapter;->listener:Lcom/gathin/tvhome/AppAdapter$TileListener;

    iget-boolean v5, p0, Lcom/gathin/tvhome/AppAdapter;->animations:Z

    iget v8, p0, Lcom/gathin/tvhome/AppAdapter;->restNameAlpha:F

    iget-boolean v9, p0, Lcom/gathin/tvhome/AppAdapter;->focusOvershoot:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/gathin/tvhome/AppAdapter$Holder;-><init>(Landroid/view/View;Lcom/gathin/tvhome/AppAdapter$TileListener;ZZZFZ)V

    return-object p1
.end method

.method public final packageAt(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget-object p1, p1, Lcom/gathin/tvhome/AppAdapter$Entry;->pkg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final positionOf(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget-object v2, v2, Lcom/gathin/tvhome/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
