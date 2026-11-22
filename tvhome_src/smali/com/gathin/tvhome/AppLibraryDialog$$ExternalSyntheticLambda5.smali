.class public final synthetic Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/AppLibraryDialog;

.field public final synthetic f$1:Landroid/content/pm/ResolveInfo;

.field public final synthetic f$2:Landroid/content/pm/PackageManager;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AppLibraryDialog;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;->f$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iput-object p2, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;->f$1:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;->f$2:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;->f$4:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;->f$1:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;->f$2:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;->f$0:Lcom/gathin/tvhome/AppLibraryDialog;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, v3, Lcom/gathin/tvhome/AppLibraryDialog;->main:Landroid/os/Handler;

    new-instance v1, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;

    iget-object v4, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget-object v6, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda5;->f$4:Landroid/widget/ImageView;

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/gathin/tvhome/ServiceRepair$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
