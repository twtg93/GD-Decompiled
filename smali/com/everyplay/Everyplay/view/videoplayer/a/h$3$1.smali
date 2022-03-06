.class final Lcom/everyplay/Everyplay/view/videoplayer/a/h$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;->onLogin(Lcom/everyplay/Everyplay/a/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$3$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$3$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)Lcom/everyplay/Everyplay/c/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/q;->a(Z)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$3$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)Lcom/everyplay/Everyplay/c/q;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$3$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h;

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)Lcom/everyplay/Everyplay/c/q;

    move-result-object v1

    iget v1, v1, Lcom/everyplay/Everyplay/c/q;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/q;->a(I)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
