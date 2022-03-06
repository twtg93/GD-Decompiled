.class final Lcom/everyplay/Everyplay/view/videoplayer/a/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/a/q;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/q$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/q$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/q;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/q;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/q;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/q$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/q;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/q;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/q;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
