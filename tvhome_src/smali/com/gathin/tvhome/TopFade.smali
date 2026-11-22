.class public final Lcom/gathin/tvhome/TopFade;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final length:F

.field public final paint:Landroid/graphics/Paint;

.field public shaderHeight:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/TopFade;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/gathin/tvhome/TopFade;->shaderHeight:F

    iput p1, p0, Lcom/gathin/tvhome/TopFade;->length:F

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 11

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/gathin/tvhome/TopFade;->length:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/gathin/tvhome/TopFade;->shaderHeight:F

    cmpl-float v1, v0, v1

    iget-object v10, p0, Lcom/gathin/tvhome/TopFade;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/LinearGradient;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/high16 v7, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move v6, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput v0, p0, Lcom/gathin/tvhome/TopFade;->shaderHeight:F

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float v5, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v6, v0

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
