.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/gathin/tvhome/Config;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;ILcom/gathin/tvhome/Config;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda6;->f$2:Lcom/gathin/tvhome/Config;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    sub-int p8, p5, p3

    sub-int/2addr p4, p2

    iget-object p9, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget-object p1, p9, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    iget-object p1, p9, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int p1, p4, p1

    sget p3, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda6;->f$2:Lcom/gathin/tvhome/Config;

    iget-boolean p5, v0, Lcom/gathin/tvhome/Config;->dockTitle:Z

    iget p7, p9, Lcom/gathin/tvhome/MainActivity;->density:F

    iget v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda6;->f$1:I

    iget-boolean p6, v0, Lcom/gathin/tvhome/Config;->dockRow:Z

    move p2, p8

    move p4, v1

    invoke-static/range {p1 .. p7}, Lcom/gathin/tvhome/AppAdapter;->tileWidthPx(IIIIZZF)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42ca0000    # 101.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x43340000    # 180.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p9, Lcom/gathin/tvhome/MainActivity;->density:F

    const/high16 p3, 0x42340000    # 45.0f

    mul-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p2, p1

    const/high16 p1, 0x41900000    # 18.0f

    iget p3, p9, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr p3, p1

    float-to-int p1, p3

    add-int/2addr p1, p2

    mul-int/2addr p2, v1

    iget-boolean p3, v0, Lcom/gathin/tvhome/Config;->appLibrary:Z

    if-eqz p3, :cond_0

    iget-object p3, p9, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/high16 p4, 0x42200000    # 40.0f

    iget p5, p9, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr p5, p4

    float-to-int p4, p5

    add-int/2addr p3, p4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    sub-int/2addr p8, p1

    sub-int/2addr p8, p2

    const/high16 p1, 0x41f00000    # 30.0f

    iget p2, p9, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    sub-int/2addr p8, p1

    invoke-static {p3, p8}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-boolean p2, p9, Lcom/gathin/tvhome/MainActivity;->dockRow:Z

    if-eqz p2, :cond_1

    iget-boolean p2, v0, Lcom/gathin/tvhome/Config;->dockTitle:Z

    if-eqz p2, :cond_1

    if-lez v1, :cond_1

    const/high16 p2, 0x42d00000    # 104.0f

    iget p3, p9, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr p3, p2

    float-to-int p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_1
    iget-boolean p2, p9, Lcom/gathin/tvhome/MainActivity;->dockRow:Z

    if-nez p2, :cond_2

    const/high16 p1, 0x41400000    # 12.0f

    iget p2, p9, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :cond_2
    iget-boolean p2, p9, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    if-eqz p2, :cond_3

    iget-boolean p2, v0, Lcom/gathin/tvhome/Config;->alwaysShowNames:Z

    if-nez p2, :cond_3

    const/high16 p2, 0x41e80000    # 29.0f

    iget p3, p9, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr p3, p2

    float-to-int p2, p3

    add-int/2addr p1, p2

    :cond_3
    iget-object p2, p9, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    if-eq p2, p1, :cond_4

    iget-object p2, p9, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    iget-object p4, p9, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    iget-object p5, p9, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p5}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p1, p9, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    if-eqz p1, :cond_4

    iget-object p1, p9, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 p3, 0x8

    invoke-direct {p2, p9, p3}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object p1, p9, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 p3, 0x9

    invoke-direct {p2, p9, p3}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
