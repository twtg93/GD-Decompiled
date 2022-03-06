.class final Lcom/everyplay/Everyplay/view/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/k;->onUploadCompleted(Lcom/everyplay/Everyplay/communication/upload/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/k;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->f(Lcom/everyplay/Everyplay/view/k;)Z

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->g(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->h(Lcom/everyplay/Everyplay/view/k;)Lcom/everyplay/Everyplay/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->i(Lcom/everyplay/Everyplay/view/k;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    new-instance v1, Lcom/everyplay/Everyplay/c/n;

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v2}, Lcom/everyplay/Everyplay/view/k;->i(Lcom/everyplay/Everyplay/view/k;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/everyplay/Everyplay/c/n;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/k;->a(Lcom/everyplay/Everyplay/view/k;Lcom/everyplay/Everyplay/c/n;)Lcom/everyplay/Everyplay/c/n;

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->h(Lcom/everyplay/Everyplay/view/k;)Lcom/everyplay/Everyplay/c/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->h(Lcom/everyplay/Everyplay/view/k;)Lcom/everyplay/Everyplay/c/n;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/k$3;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v2}, Lcom/everyplay/Everyplay/view/k;->h(Lcom/everyplay/Everyplay/view/k;)Lcom/everyplay/Everyplay/c/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/everyplay/Everyplay/view/k;->a(Lcom/everyplay/Everyplay/c/n;)V

    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
