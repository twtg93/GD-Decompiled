.class final Lcom/everyplay/Everyplay/communication/upload/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/upload/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/upload/b;->g()Lcom/everyplay/Everyplay/communication/upload/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/upload/b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/upload/b$1;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemUploadCompleted(Lcom/everyplay/Everyplay/communication/upload/a;)V
    .locals 4

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/upload/b$1;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/upload/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/d;

    invoke-interface {v0, p1}, Lcom/everyplay/Everyplay/communication/upload/d;->onItemUploadCompleted(Lcom/everyplay/Everyplay/communication/upload/a;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/upload/b$1;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    const/4 v0, 0x1

    iget-object v1, v1, Lcom/everyplay/Everyplay/communication/upload/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/upload/a;->c:Lcom/everyplay/Everyplay/communication/upload/b$a;

    sget-object v3, Lcom/everyplay/Everyplay/communication/upload/b$a;->e:Lcom/everyplay/Everyplay/communication/upload/b$a;

    if-eq v0, v3, :cond_3

    const/4 v0, 0x0

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/upload/b$1;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v1, Lcom/everyplay/Everyplay/communication/upload/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/d;

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/communication/upload/d;->onUploadCompleted(Lcom/everyplay/Everyplay/communication/upload/b;)V

    goto :goto_3

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final onItemUploadFailed(Lcom/everyplay/Everyplay/communication/upload/a;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/upload/b$1;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/upload/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/d;

    invoke-interface {v0, p1, p2}, Lcom/everyplay/Everyplay/communication/upload/d;->onItemUploadFailed(Lcom/everyplay/Everyplay/communication/upload/a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onItemUploadProgress(Lcom/everyplay/Everyplay/communication/upload/a;)V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/upload/b$1;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/upload/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/d;

    invoke-interface {v0, p1}, Lcom/everyplay/Everyplay/communication/upload/d;->onItemUploadProgress(Lcom/everyplay/Everyplay/communication/upload/a;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/upload/b$1;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v1, Lcom/everyplay/Everyplay/communication/upload/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/d;

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/communication/upload/d;->onUploadProgress(Lcom/everyplay/Everyplay/communication/upload/b;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onUploadCompleted(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    return-void
.end method

.method public final onUploadFailed(Lcom/everyplay/Everyplay/communication/upload/b;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final onUploadProgress(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    return-void
.end method

.method public final onUploadSessionReceived(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    return-void
.end method

.method public final onUploadStarted(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    return-void
.end method
