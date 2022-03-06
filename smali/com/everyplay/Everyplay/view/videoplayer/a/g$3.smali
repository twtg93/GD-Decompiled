.class final Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/c/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/g;->a(Ljava/util/ArrayList;DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:D

.field final synthetic c:D

.field final synthetic d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/g;Ljava/util/ArrayList;DD)V
    .locals 1

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->a:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->b:D

    iput-wide p5, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->e(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->e(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->e(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->d(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider;->setMinValue(F)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->d(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider;->setMaxValue(F)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->d(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider;->setShowMinMaxButtons(Z)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->e(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->e(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->f(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->g(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->h()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->h(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    const-string v1, "enterTrimmedState"

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->a:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->b:D

    iget-wide v4, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$3;->c:D

    invoke-static/range {v0 .. v5}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/g;Ljava/util/ArrayList;DD)V

    goto :goto_0
.end method
