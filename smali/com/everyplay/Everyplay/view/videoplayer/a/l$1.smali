.class final Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/view/videoplayer/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/l;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;I)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;II)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->c:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v2, v3, v5}, Lcom/everyplay/Everyplay/d/b;->a(IIZ)F

    move-result v1

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/l;F)F

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->getHeight()I

    move-result v0

    if-le v2, v3, :cond_2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v2}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->j:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->a(Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;)V

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->c(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    int-to-float v1, v1

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v2}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->h:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->c(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->d(Lcom/everyplay/Everyplay/view/videoplayer/a/l;)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplayFaceCamVideoPlayerError:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-virtual {v1, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->b(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/l;Z)Z

    return-void
.end method

.method public final c(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V
    .locals 0

    return-void
.end method

.method public final d(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V
    .locals 0

    return-void
.end method

.method public final e(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/l$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/l;Z)Z

    return-void
.end method
