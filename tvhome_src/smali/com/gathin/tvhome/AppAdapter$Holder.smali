.class public final Lcom/gathin/tvhome/AppAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final banner:Landroid/widget/ImageView;

.field public final card:Landroid/view/View;

.field public final cardBackground:Landroid/graphics/drawable/Drawable;

.field public final icon:Landroid/widget/ImageView;

.field public final label:Landroid/widget/TextView;

.field public final name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/gathin/tvhome/AppAdapter$TileListener;ZZZFZ)V
    .locals 12

    move-object v9, p0

    move-object v0, p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v1, 0x7f09003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v9, Lcom/gathin/tvhome/AppAdapter$Holder;->card:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v9, Lcom/gathin/tvhome/AppAdapter$Holder;->cardBackground:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f09002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v9, Lcom/gathin/tvhome/AppAdapter$Holder;->banner:Landroid/widget/ImageView;

    const v1, 0x7f09006b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v9, Lcom/gathin/tvhome/AppAdapter$Holder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f09008b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v9, Lcom/gathin/tvhome/AppAdapter$Holder;->label:Landroid/widget/TextView;

    const v1, 0x7f090090

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v9, Lcom/gathin/tvhome/AppAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Lcom/gathin/tvhome/AppAdapter$Holder$1;

    invoke-direct {v0, v6}, Lcom/gathin/tvhome/AppAdapter$Holder$1;-><init>(F)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    move-object v8, p2

    invoke-direct {v0, p0, p2, v1}, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v11, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;

    move-object v0, v11

    move-object v1, p0

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;-><init>(Lcom/gathin/tvhome/AppAdapter$Holder;ZZFZFZLcom/gathin/tvhome/AppAdapter$TileListener;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
