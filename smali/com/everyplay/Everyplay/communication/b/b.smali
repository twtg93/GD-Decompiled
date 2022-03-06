.class public final Lcom/everyplay/Everyplay/communication/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/communication/b/b$a;
    }
.end annotation


# instance fields
.field private a:Lorg/apache/http/HttpEntity;

.field private b:Lcom/everyplay/Everyplay/communication/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/everyplay/Everyplay/communication/b/h",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcom/everyplay/Everyplay/communication/b/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/everyplay/Everyplay/communication/b/h",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/b/b;->a:Lorg/apache/http/HttpEntity;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/b/b;->b:Lcom/everyplay/Everyplay/communication/b/h;

    return-void
.end method


# virtual methods
.method public final consumeContent()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/b/b;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/b/b;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/b/b;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/b/b;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/b/b;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/b/b;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/b/b;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/b/b;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/b/b;->a:Lorg/apache/http/HttpEntity;

    new-instance v1, Lcom/everyplay/Everyplay/communication/b/b$a;

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/b/b;->b:Lcom/everyplay/Everyplay/communication/b/h;

    invoke-direct {v1, p0, p1, v2}, Lcom/everyplay/Everyplay/communication/b/b$a;-><init>(Lcom/everyplay/Everyplay/communication/b/b;Ljava/io/OutputStream;Lcom/everyplay/Everyplay/communication/b/h;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
