.class final Lcom/everyplay/Everyplay/view/videoplayer/e$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/e$1;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/e$1;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/e$1;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/e$1$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e$1$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/e$1;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/e$1;->c:Lcom/everyplay/Everyplay/view/videoplayer/e;

    const-string v1, "bottombar"

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/e;->a(Ljava/lang/String;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->h:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->h:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->h:Landroid/view/View;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
