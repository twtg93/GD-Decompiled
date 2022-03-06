.class final Lcom/everyplay/Everyplay/view/videoplayer/a/h$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/a/h;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$4;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onLogin(Lcom/everyplay/Everyplay/a/a;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/videos/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$4;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h;

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)Lcom/everyplay/Everyplay/c/q;

    move-result-object v1

    iget v1, v1, Lcom/everyplay/Everyplay/c/q;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/share"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->c:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v2, Lcom/everyplay/Everyplay/view/videoplayer/a/h$4$1;

    invoke-direct {v2, p0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h$4$1;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/a/h$4;)V

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/view/f;->b(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    const/4 v0, 0x1

    return v0
.end method
