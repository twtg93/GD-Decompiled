.class final Lcom/everyplay/Everyplay/view/videoplayer/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/videoplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/c;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/c;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/c$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/c$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/c;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/c;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/c$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/c;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/videoplayer/c;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->f:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/c$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/c;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/c;->b()V

    :cond_0
    return-void
.end method
