.class public final Lcom/gathin/tvhome/MainActivity$8;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$8;->this$0:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$8;->this$0:Lcom/gathin/tvhome/MainActivity;

    iget-boolean v1, v0, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
