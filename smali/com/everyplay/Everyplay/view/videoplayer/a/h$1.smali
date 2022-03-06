.class final Lcom/everyplay/Everyplay/view/videoplayer/a/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;

.field final synthetic b:Lcom/everyplay/Everyplay/view/videoplayer/a/h;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/h;Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$1;->b:Lcom/everyplay/Everyplay/view/videoplayer/a/h;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$1;->b:Lcom/everyplay/Everyplay/view/videoplayer/a/h;

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->b()V

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$7;->a:[I

    invoke-virtual {v2}, Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled BottomBar action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    check-cast v1, Lcom/everyplay/Everyplay/view/videoplayer/e;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/view/videoplayer/e;->getQuality()Lcom/everyplay/Everyplay/c/q$c;

    move-result-object v1

    sget-object v2, Lcom/everyplay/Everyplay/view/videoplayer/e;->o:Lcom/everyplay/Everyplay/c/q$c;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/everyplay/Everyplay/view/videoplayer/e;->p:Lcom/everyplay/Everyplay/c/q$c;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/e;->a(Lcom/everyplay/Everyplay/c/q$c;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/everyplay/Everyplay/view/videoplayer/e;->o:Lcom/everyplay/Everyplay/c/q$c;

    goto :goto_2

    :pswitch_1
    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/c/q;->c:Z

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    instance-of v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    const-string v2, "playerLike"

    const-string v3, "event/player"

    invoke-static {v0, v2, v5, v3}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/e;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$2;

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h$2;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->c(Lcom/everyplay/Everyplay/a/c;)V

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    instance-of v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    const-string v2, "playerUnlike"

    const-string v3, "event/player"

    invoke-static {v0, v2, v5, v3}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/e;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h$3;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->c(Lcom/everyplay/Everyplay/a/c;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    instance-of v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    const-string v2, "playerComment"

    const-string v3, "event/player"

    invoke-static {v0, v2, v5, v3}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/e;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/videos/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget v2, v2, Lcom/everyplay/Everyplay/c/q;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/everyplay/Everyplay/view/f$c;->c:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v3, Lcom/everyplay/Everyplay/view/videoplayer/a/h$5;

    invoke-direct {v3, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h$5;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)V

    invoke-static {v0, v2, v3}, Lcom/everyplay/Everyplay/view/f;->b(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    instance-of v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    const-string v2, "playerEveryplay"

    const-string v3, "event/player"

    invoke-static {v0, v2, v5, v3}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/e;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/videos/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget v2, v2, Lcom/everyplay/Everyplay/c/q;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/everyplay/Everyplay/view/f$c;->c:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v3, Lcom/everyplay/Everyplay/view/videoplayer/a/h$6;

    invoke-direct {v3, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h$6;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)V

    invoke-static {v0, v2, v3}, Lcom/everyplay/Everyplay/view/f;->b(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    instance-of v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    const-string v3, "playerShare"

    const-string v4, "event/player"

    invoke-static {v0, v3, v5, v4}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/e;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_8
    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$4;

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h$4;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->c(Lcom/everyplay/Everyplay/a/c;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
