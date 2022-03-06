.class public final Lcom/everyplay/Everyplay/view/videoplayer/a/f;
.super Lcom/everyplay/Everyplay/view/videoplayer/d;


# instance fields
.field private c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/d;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/f;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    sget v0, Lcom/everyplay/Everyplay/R$layout;->everyplay_editor_processing:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/f;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/f;->c:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/everyplay/Everyplay/view/n;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/f;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/d;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V

    return-void
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/f;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "processing"

    return-object v0
.end method
