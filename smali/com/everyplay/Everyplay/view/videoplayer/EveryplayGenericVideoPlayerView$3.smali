.class final Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$3;->a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V

    :cond_0
    return-void
.end method
