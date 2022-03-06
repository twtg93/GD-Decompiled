.class final Lcom/everyplay/Everyplay/view/videoplayer/a/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/j;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/a/j;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/j;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/j;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    const-string v1, "replayButtonPressed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/e;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/j;->c(Lcom/everyplay/Everyplay/view/videoplayer/a/j;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/j;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/j;)Lcom/everyplay/Everyplay/c/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/e;->setVideo(Lcom/everyplay/Everyplay/c/q;)V

    return-void
.end method
