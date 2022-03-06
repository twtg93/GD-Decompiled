.class final Lcom/everyplay/Everyplay/view/videoplayer/b$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/c/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/b;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/everyplay/Everyplay/view/videoplayer/b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/b;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$7;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$7;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->c:Lcom/everyplay/Everyplay/c/a/d;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$7;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    sget-object v1, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->h:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/b;->setState(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$7;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$7;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v0, v2, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c/a/c;->b()Lcom/everyplay/Everyplay/c/a/d;

    move-result-object v3

    iget-object v0, v2, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    invoke-virtual {v0, v3}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v2, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->c:Lcom/everyplay/Everyplay/c/a/d;

    if-ne v3, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/everyplay/Everyplay/view/videoplayer/b;->p:Z

    iget-boolean v0, v2, Lcom/everyplay/Everyplay/view/videoplayer/b;->p:Z

    invoke-virtual {v2, v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->b(Z)V

    iget-object v0, v2, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    invoke-virtual {v0, v3}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v1}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Ljava/lang/String;ZI)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$7;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$7;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/b;->a(Lcom/everyplay/Everyplay/view/videoplayer/b;Ljava/util/ArrayList;)V

    goto :goto_1
.end method
