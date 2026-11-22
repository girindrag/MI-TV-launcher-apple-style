.class Lcom/gathin/tvhome/ChildLockManager$12;
.super Ljava/lang/Object;
.source "ChildLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ChildLockManager;->promptNewPin(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$entered:Ljava/lang/StringBuilder;

.field final synthetic val$tvDots:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 680
    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$12;->val$entered:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$12;->val$tvDots:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 683
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$12;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 686
    if-ge v2, v0, :cond_0

    .line 687
    const-string v3, "\u25cf  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 689
    :cond_0
    const-string v3, "\u25cb  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$12;->val$tvDots:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$12;->val$tvDots:Landroid/widget/TextView;

    const-string v1, "#38bdf8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 694
    return-void
.end method
