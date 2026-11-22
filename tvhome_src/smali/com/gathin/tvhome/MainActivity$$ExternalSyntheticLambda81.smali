.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gathin/tvhome/CardFeature$Step;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda81;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda81;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda81;->f$2:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 6

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda81;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->cards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gathin/tvhome/Cards$Card;

    iget-object v4, v2, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda81;->f$1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    iget v4, v2, Lcom/gathin/tvhome/Cards$Card;->state:I

    if-eq v4, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/gathin/tvhome/MainActivity;->decideCard(Lcom/gathin/tvhome/Cards$Card;Z)V

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda81;->f$2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/MainActivity;->updateCardStates(Landroid/widget/LinearLayout;)V

    :goto_2
    return-object v3
.end method
