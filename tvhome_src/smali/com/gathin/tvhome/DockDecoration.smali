.class public final Lcom/gathin/tvhome/DockDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final band:Landroid/graphics/Paint;

.field public final bandAll:Z

.field public final density:F

.field public final dockSize:I

.field public final edge:Landroid/graphics/Paint;

.field public final evenPadding:Z

.field public final lightGlass:Z

.field public final namesRoom:F

.field public final rect:Landroid/graphics/RectF;

.field public shaderBottom:F

.field public shaderTop:F

.field public final singleRow:Z


# direct methods
.method public constructor <init>(IFZZIZZZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/gathin/tvhome/DockDecoration;->band:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/gathin/tvhome/DockDecoration;->edge:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/gathin/tvhome/DockDecoration;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, p0, Lcom/gathin/tvhome/DockDecoration;->shaderTop:F

    iput v3, p0, Lcom/gathin/tvhome/DockDecoration;->shaderBottom:F

    iput p1, p0, Lcom/gathin/tvhome/DockDecoration;->dockSize:I

    iput-boolean p8, p0, Lcom/gathin/tvhome/DockDecoration;->singleRow:Z

    if-eqz p8, :cond_0

    if-eqz p9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/gathin/tvhome/DockDecoration;->bandAll:Z

    iput p2, p0, Lcom/gathin/tvhome/DockDecoration;->density:F

    if-eqz p4, :cond_1

    const/high16 p1, 0x41b00000    # 22.0f

    mul-float/2addr p1, p2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/gathin/tvhome/DockDecoration;->namesRoom:F

    iput-boolean p6, p0, Lcom/gathin/tvhome/DockDecoration;->lightGlass:Z

    iput-boolean p7, p0, Lcom/gathin/tvhome/DockDecoration;->evenPadding:Z

    if-eqz p3, :cond_2

    const p1, -0x73edefec

    goto :goto_2

    :cond_2
    int-to-float p1, p5

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    const p4, 0x141416

    or-int/2addr p1, p4

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p6, :cond_3

    const p1, 0x38ffffff

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    const p1, 0x26ffffff

    goto :goto_3

    :cond_4
    const p1, 0x1fffffff

    :goto_3
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-ltz p2, :cond_1

    iget-boolean p3, p0, Lcom/gathin/tvhome/DockDecoration;->singleRow:Z

    if-nez p3, :cond_0

    iget p3, p0, Lcom/gathin/tvhome/DockDecoration;->dockSize:I

    if-ge p2, p3, :cond_1

    :cond_0
    const/high16 p2, 0x40c00000    # 6.0f

    iget p3, p0, Lcom/gathin/tvhome/DockDecoration;->density:F

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iget-object v7, v0, Lcom/gathin/tvhome/DockDecoration;->rect:Landroid/graphics/RectF;

    iget v8, v0, Lcom/gathin/tvhome/DockDecoration;->dockSize:I

    if-ge v3, v6, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_4

    iget-boolean v10, v0, Lcom/gathin/tvhome/DockDecoration;->bandAll:Z

    if-nez v10, :cond_0

    if-lt v9, v8, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    instance-of v9, v8, Lcom/gathin/tvhome/AppAdapter$Holder;

    if-eqz v9, :cond_1

    check-cast v8, Lcom/gathin/tvhome/AppAdapter$Holder;

    iget-object v8, v8, Lcom/gathin/tvhome/AppAdapter$Holder;->card:Landroid/view/View;

    goto :goto_1

    :cond_1
    const v8, 0x7f09003a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v9, v5

    int-to-float v5, v9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v6, v9

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v6

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-nez v4, :cond_3

    invoke-virtual {v7, v5, v6, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v4, 0x1

    :goto_2
    move v5, v8

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v5, v6, v9, v10}, Landroid/graphics/RectF;->union(FFFF)V

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    return-void

    :cond_6
    iget v3, v0, Lcom/gathin/tvhome/DockDecoration;->density:F

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v3

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float/2addr v6, v3

    iget v9, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v3

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v5, v3}, Lcom/gathin/tvhome/AppAdapter;->cornerRadius(IF)F

    move-result v11

    iget-boolean v12, v0, Lcom/gathin/tvhome/DockDecoration;->evenPadding:Z

    iget-boolean v13, v0, Lcom/gathin/tvhome/DockDecoration;->singleRow:Z

    if-eqz v12, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    iget v6, v7, Landroid/graphics/RectF;->top:F

    if-eqz v13, :cond_7

    goto :goto_4

    :cond_7
    iget v9, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v14, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v14

    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_4
    sub-float/2addr v6, v3

    if-lez v8, :cond_8

    int-to-float v4, v4

    int-to-float v8, v8

    div-float/2addr v4, v8

    int-to-float v5, v5

    sub-float/2addr v4, v5

    goto :goto_5

    :cond_8
    move v4, v10

    :goto_5
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    neg-float v5, v4

    invoke-virtual {v7, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    add-float/2addr v11, v4

    goto :goto_7

    :cond_9
    if-eqz v13, :cond_a

    neg-float v5, v6

    goto :goto_6

    :cond_a
    neg-float v5, v9

    :goto_6
    neg-float v4, v4

    invoke-virtual {v7, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 v4, 0x41d00000    # 26.0f

    mul-float v11, v3, v4

    :goto_7
    if-eqz v13, :cond_b

    iget v4, v7, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v7, Landroid/graphics/RectF;->left:F

    iget v4, v7, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v7, Landroid/graphics/RectF;->right:F

    :cond_b
    iget v2, v7, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/gathin/tvhome/DockDecoration;->namesRoom:F

    add-float/2addr v2, v3

    iput v2, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v3, v0, Lcom/gathin/tvhome/DockDecoration;->band:Landroid/graphics/Paint;

    iget-boolean v4, v0, Lcom/gathin/tvhome/DockDecoration;->lightGlass:Z

    if-eqz v4, :cond_d

    iget v4, v7, Landroid/graphics/RectF;->top:F

    iget v5, v0, Lcom/gathin/tvhome/DockDecoration;->shaderTop:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_c

    iget v4, v0, Lcom/gathin/tvhome/DockDecoration;->shaderBottom:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_d

    :cond_c
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v14, v7, Landroid/graphics/RectF;->top:F

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, 0x0

    const v17, 0x24ffffff

    const/4 v13, 0x0

    const v18, 0xdffffff

    move-object v12, v2

    move/from16 v16, v4

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iput v2, v0, Lcom/gathin/tvhome/DockDecoration;->shaderTop:F

    iget v2, v7, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Lcom/gathin/tvhome/DockDecoration;->shaderBottom:F

    :cond_d
    invoke-virtual {v1, v7, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/gathin/tvhome/DockDecoration;->edge:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v11, v11, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
