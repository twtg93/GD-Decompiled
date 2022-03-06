.class public final Lcom/everyplay/Everyplay/view/videoplayer/a/a;
.super Lcom/everyplay/Everyplay/view/videoplayer/d;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/everyplay/Everyplay/view/videoplayer/f;


# instance fields
.field private c:Landroid/widget/RelativeLayout;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/d;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->k:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->b(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->h:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->b(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->b(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/everyplay/Everyplay/view/n;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    const/16 v4, 0x17

    const/16 v3, 0x12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    sget v1, Lcom/everyplay/Everyplay/R$layout;->everyplay_editor_buttons:I

    invoke-virtual {p0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    sget v1, Lcom/everyplay/Everyplay/R$id;->editorBrowseButton:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    sget v1, Lcom/everyplay/Everyplay/R$id;->editorShareButton:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->i:Landroid/view/View;

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplayShowFaceCamButton:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_4

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplayShowMicrophoneAvatar:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/everyplay/Everyplay/view/n;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V
    .locals 3

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->f:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/d;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->e()V

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/view/videoplayer/f;)V
    .locals 2

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/everyplay/Everyplay/view/videoplayer/f;)V
    .locals 2

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "editorbuttons"

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x17

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->j:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->q:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->r:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->j()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->k:Landroid/view/View;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->q:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->k()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->h:Landroid/view/View;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    const-string v1, "everyplayButtonPressed"

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Ljava/lang/String;)V

    const-string v0, "kEveryplayDefaultPathKey"

    invoke-static {v0}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->c:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v2, Lcom/everyplay/Everyplay/view/videoplayer/a/a$1;

    invoke-direct {v2, p0}, Lcom/everyplay/Everyplay/view/videoplayer/a/a$1;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/a/a;)V

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/view/f;->b(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_0

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.RECORD_AUDIO"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->a(Lcom/everyplay/Everyplay/device/e;)V

    const-string v0, "EveryplayVideoEditor"

    const-string v1, "onFaceCamButtonClicked"

    invoke-static {v0, v1, v3}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_1

    const-string v1, "android.permission.RECORD_AUDIO"

    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->a(Lcom/everyplay/Everyplay/device/e;)V

    const-string v0, "EveryplayVideoEditor"

    const-string v1, "onMicrophoneButtonClicked"

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->i:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->canShowSharing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    const-string v1, "shareReplayButtonPressed"

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Ljava/lang/String;)V

    sget-object v0, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v1, Lcom/everyplay/Everyplay/view/videoplayer/a/a$2;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/videoplayer/a/a$2;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/a/a;)V

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/view/f;->a(Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;I)V

    goto :goto_2
.end method
