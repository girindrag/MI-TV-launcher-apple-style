.class public final Lcom/gathin/tvhome/AppLibraryDialog$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/gathin/tvhome/AppLibraryDialog;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/AppLibraryDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog$1;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final isLayoutRTL()Z
    .locals 1

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog$1;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iget-boolean v0, v0, Lcom/gathin/tvhome/AppLibraryDialog;->rtl:Z

    return v0
.end method
