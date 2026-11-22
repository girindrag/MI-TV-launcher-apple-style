.class public final Lcom/gathin/tvhome/AppAdapter$Holder$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic val$density:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    iput p1, p0, Lcom/gathin/tvhome/AppAdapter$Holder$1;->val$density:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/gathin/tvhome/AppAdapter$Holder$1;->val$density:F

    invoke-static {p1, v0}, Lcom/gathin/tvhome/AppAdapter;->cornerRadius(IF)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
