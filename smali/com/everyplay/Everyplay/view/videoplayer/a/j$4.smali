.class final Lcom/everyplay/Everyplay/view/videoplayer/a/j$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/c/q;

.field final synthetic b:Lcom/everyplay/Everyplay/view/videoplayer/a/j;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/j;Lcom/everyplay/Everyplay/c/q;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$4;->b:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$4;->a:Lcom/everyplay/Everyplay/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$4;->b:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$4;->a:Lcom/everyplay/Everyplay/c/q;

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/j;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/j;Lcom/everyplay/Everyplay/c/q;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$4;->b:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/j;->e(Lcom/everyplay/Everyplay/view/videoplayer/a/j;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    instance-of v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "index"

    const-string v2, "endscreen"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "selectedVideoId"

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$4;->a:Lcom/everyplay/Everyplay/c/q;

    iget v2, v2, Lcom/everyplay/Everyplay/c/q;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$4;->b:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/j;->f(Lcom/everyplay/Everyplay/view/videoplayer/a/j;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    const-string v2, "cfVideoSelect"

    invoke-static {v0, v2, v1}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/e;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Error genrating eventData"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
