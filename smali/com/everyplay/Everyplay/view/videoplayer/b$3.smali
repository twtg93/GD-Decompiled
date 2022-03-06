.class final Lcom/everyplay/Everyplay/view/videoplayer/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/view/videoplayer/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/videoplayer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/b;->b(Lcom/everyplay/Everyplay/view/videoplayer/c;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    new-instance v1, Lcom/everyplay/Everyplay/view/videoplayer/a/b;

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-virtual {v2}, Lcom/everyplay/Everyplay/view/videoplayer/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->o()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/everyplay/Everyplay/view/videoplayer/a/b;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    iput-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->s:Lcom/everyplay/Everyplay/view/videoplayer/a/b;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/videoplayer/b;->y:Lcom/everyplay/Everyplay/view/videoplayer/a/a;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/b;->b(Lcom/everyplay/Everyplay/view/videoplayer/c;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    new-instance v1, Lcom/everyplay/Everyplay/view/videoplayer/a/c;

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-virtual {v2}, Lcom/everyplay/Everyplay/view/videoplayer/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/everyplay/Everyplay/view/videoplayer/a/c;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->x:Lcom/everyplay/Everyplay/view/videoplayer/a/c;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->v:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    sget-object v1, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->f:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->b(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/videoplayer/b;->x:Lcom/everyplay/Everyplay/view/videoplayer/a/c;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/videoplayer/b;->s:Lcom/everyplay/Everyplay/view/videoplayer/a/b;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    return-void
.end method
