.class final Lcom/everyplay/Everyplay/view/k$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/k;->onUploadProgress(Lcom/everyplay/Everyplay/communication/upload/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/upload/b;

.field final synthetic b:Lcom/everyplay/Everyplay/view/k;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/k;Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/k$4;->b:Lcom/everyplay/Everyplay/view/k;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/k$4;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$4;->b:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->j(Lcom/everyplay/Everyplay/view/k;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$4;->b:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->k(Lcom/everyplay/Everyplay/view/k;)V

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$4;->b:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->g(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$4;->b:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->g(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$4;->b:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->g(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$4;->b:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->l(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/k$4;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/communication/upload/b;->a()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method
