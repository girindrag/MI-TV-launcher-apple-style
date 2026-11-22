.class public final Lcom/gathin/tvhome/AppAdapter$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ambient:I

.field public backdrop:[I

.field public final banner:Landroid/graphics/drawable/Drawable;

.field public final component:Landroid/content/ComponentName;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final kind:I

.field public final label:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gathin/tvhome/AppAdapter$Entry;->kind:I

    iput-object p2, p0, Lcom/gathin/tvhome/AppAdapter$Entry;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter$Entry;->pkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/gathin/tvhome/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/gathin/tvhome/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u00b7 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/gathin/tvhome/AppAdapter$Entry;->name:Ljava/lang/String;

    iput p7, p0, Lcom/gathin/tvhome/AppAdapter$Entry;->ambient:I

    return-void
.end method
