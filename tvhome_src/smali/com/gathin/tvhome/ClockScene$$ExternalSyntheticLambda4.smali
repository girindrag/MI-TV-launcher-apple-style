.class public final synthetic Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/ClockScene;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Bitmap;

.field public final synthetic f$3:Landroid/content/res/Resources;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/ClockScene;ILandroid/graphics/Bitmap;Landroid/content/res/Resources;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;->f$0:Lcom/gathin/tvhome/ClockScene;

    iput p2, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;->f$2:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;->f$3:Landroid/content/res/Resources;

    iput p5, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;->f$0:Lcom/gathin/tvhome/ClockScene;

    iget v2, v1, Lcom/gathin/tvhome/ClockScene;->wallpaperGeneration:I

    iget v3, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;->f$1:I

    iget-object v4, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;->f$2:Landroid/graphics/Bitmap;

    if-ne v3, v2, :cond_1

    iget-boolean v2, v1, Lcom/gathin/tvhome/ClockScene;->wallpaperShown:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, v1, Lcom/gathin/tvhome/ClockScene;->wallpaperShown:Z

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;->f$3:Landroid/content/res/Resources;

    invoke-direct {v3, v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;->f$4:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v4, v5, v0

    invoke-direct {v2, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/gathin/tvhome/ClockScene;->ambient:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    return-void
.end method
