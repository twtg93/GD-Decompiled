.class final Lcom/everyplay/Everyplay/view/EveryplayWebView$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/EveryplayWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/EveryplayWebView;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/EveryplayWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/EveryplayWebView$2;->a:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/EveryplayWebView$2;->a:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->c(Lcom/everyplay/Everyplay/view/EveryplayWebView;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/everyplay/Everyplay/communication/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/EveryplayWebView$2;->a:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->c(Lcom/everyplay/Everyplay/view/EveryplayWebView;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method
