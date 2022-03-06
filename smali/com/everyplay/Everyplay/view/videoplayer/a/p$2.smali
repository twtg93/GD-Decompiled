.class final Lcom/everyplay/Everyplay/view/videoplayer/a/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/a/p;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/p$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/p$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/p;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/p;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/p;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/p$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/p;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/p;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/p;)Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->g:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->c(Lcom/everyplay/Everyplay/c/a/d;)V

    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/p$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/p;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/p;->c(Lcom/everyplay/Everyplay/view/videoplayer/a/p;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/p$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/p;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/p;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/p;)Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->f:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->c(Lcom/everyplay/Everyplay/c/a/d;)V

    goto :goto_0
.end method
