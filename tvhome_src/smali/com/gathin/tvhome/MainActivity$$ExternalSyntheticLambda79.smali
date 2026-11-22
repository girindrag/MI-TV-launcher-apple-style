.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AppLibraryDialog$Catalog;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->f$1:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->f$1:Ljava/lang/String;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->f$2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->f$0:Ljava/lang/Object;

    iget v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    check-cast v1, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;

    iget-object v1, v1, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iget-boolean v2, v1, Lcom/gathin/tvhome/AppLibraryDialog;->selectionMode:Z

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Lcom/gathin/tvhome/AppLibraryDialog;->onHome:Ljava/util/function/Predicate;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v3, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {v1, v0, p1}, Lcom/gathin/tvhome/AppLibraryDialog;->changeHome(Landroid/content/pm/ResolveInfo;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {v3, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Lcom/gathin/tvhome/AppLibraryDialog;->open(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0, v4}, Lcom/gathin/tvhome/AppLibraryDialog;->changeHome(Landroid/content/pm/ResolveInfo;Z)V

    :goto_0
    return-void

    :pswitch_0
    sget v2, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    check-cast v1, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda81;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1, p1, v0}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda81;-><init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lcom/gathin/tvhome/Sky;->run(Lcom/gathin/tvhome/CardFeature$Step;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
