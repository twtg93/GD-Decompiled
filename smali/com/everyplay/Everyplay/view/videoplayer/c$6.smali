.class final Lcom/everyplay/Everyplay/view/videoplayer/c$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/c;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

.field final synthetic b:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

.field final synthetic c:Lcom/everyplay/Everyplay/view/videoplayer/c;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/c;Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/c$6;->c:Lcom/everyplay/Everyplay/view/videoplayer/c;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/c$6;->a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    iput-object p3, p0, Lcom/everyplay/Everyplay/view/videoplayer/c$6;->b:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/c$6;->a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->f:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/c$6;->b:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/c$6;->c:Lcom/everyplay/Everyplay/view/videoplayer/c;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/c;->b()V

    goto :goto_0
.end method
