.class public final synthetic Lcom/gathin/tvhome/MainActivity$$BtClickLambda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$BtClickLambda;->f$0:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$BtClickLambda;->f$0:Lcom/gathin/tvhome/MainActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/BluetoothMenu;->show(Lcom/gathin/tvhome/MainActivity;)V

    return-void
.end method
