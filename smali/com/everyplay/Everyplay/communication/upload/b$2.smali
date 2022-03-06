.class final Lcom/everyplay/Everyplay/communication/upload/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/upload/b;->e()V
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

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/upload/b$2;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/upload/b$2;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v1, Lcom/everyplay/Everyplay/communication/upload/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/d;

    invoke-interface {v0, v1, p1}, Lcom/everyplay/Everyplay/communication/upload/d;->onUploadFailed(Lcom/everyplay/Everyplay/communication/upload/b;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/upload/b$2;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    new-instance v1, Lcom/everyplay/Everyplay/c/o;

    invoke-direct {v1, p1}, Lcom/everyplay/Everyplay/c/o;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/everyplay/Everyplay/communication/upload/b;->e:Lcom/everyplay/Everyplay/c/o;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/upload/b$2;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v1, Lcom/everyplay/Everyplay/communication/upload/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/d;

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/communication/upload/d;->onUploadSessionReceived(Lcom/everyplay/Everyplay/communication/upload/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/upload/b$2;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/upload/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/a;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/communication/upload/a;->c()V

    goto :goto_1

    :cond_1
    return-void
.end method
