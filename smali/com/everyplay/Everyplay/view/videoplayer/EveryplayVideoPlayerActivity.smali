.class public Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;
.super Lcom/everyplay/Everyplay/view/c;

# interfaces
.implements Lcom/everyplay/Everyplay/c/r;


# static fields
.field public static e:I


# instance fields
.field private f:Lcom/everyplay/Everyplay/view/videoplayer/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/c/e;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    invoke-virtual {p1}, Lcom/everyplay/Everyplay/c/e;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->e:I

    invoke-virtual {p0, v1, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/everyplay/Everyplay/view/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videoData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/everyplay/Everyplay/c/q;

    invoke-direct {v1, v0}, Lcom/everyplay/Everyplay/c/q;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, p0}, Lcom/everyplay/Everyplay/c/q;->a(Lcom/everyplay/Everyplay/c/r;)V

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/everyplay/Everyplay/view/videoplayer/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->f:Lcom/everyplay/Everyplay/view/videoplayer/e;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->f:Lcom/everyplay/Everyplay/view/videoplayer/e;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->f:Lcom/everyplay/Everyplay/view/videoplayer/e;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/e;->setVideo(Lcom/everyplay/Everyplay/c/q;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Video data is invalid!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->f:Lcom/everyplay/Everyplay/view/videoplayer/e;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->g()V

    invoke-super {p0}, Lcom/everyplay/Everyplay/view/c;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/everyplay/Everyplay/view/c;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->f:Lcom/everyplay/Everyplay/view/videoplayer/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/e;->a(Z)V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->f:Lcom/everyplay/Everyplay/view/videoplayer/e;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->forceLayout()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->f:Lcom/everyplay/Everyplay/view/videoplayer/e;

    const-string v1, "backButtonPressed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/e;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/everyplay/Everyplay/view/c;->onPause()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->f:Lcom/everyplay/Everyplay/view/videoplayer/e;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayVideoPlayerActivity;->f:Lcom/everyplay/Everyplay/view/videoplayer/e;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->d()V

    :cond_0
    return-void
.end method
