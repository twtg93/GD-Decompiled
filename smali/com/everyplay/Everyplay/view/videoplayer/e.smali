.class public final Lcom/everyplay/Everyplay/view/videoplayer/e;
.super Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

# interfaces
.implements Lcom/everyplay/Everyplay/c/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/view/videoplayer/e$b;,
        Lcom/everyplay/Everyplay/view/videoplayer/e$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/everyplay/Everyplay/c/q$c;

.field public static final p:Lcom/everyplay/Everyplay/c/q$c;


# instance fields
.field private q:Lcom/everyplay/Everyplay/c/q;

.field private r:Z

.field private s:Lcom/everyplay/Everyplay/c/q$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/c/q$c;->d:Lcom/everyplay/Everyplay/c/q$c;

    sput-object v0, Lcom/everyplay/Everyplay/view/videoplayer/e;->o:Lcom/everyplay/Everyplay/c/q$c;

    sget-object v0, Lcom/everyplay/Everyplay/c/q$c;->b:Lcom/everyplay/Everyplay/c/q$c;

    sput-object v0, Lcom/everyplay/Everyplay/view/videoplayer/e;->p:Lcom/everyplay/Everyplay/c/q$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->r:Z

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/e;->p:Lcom/everyplay/Everyplay/c/q$c;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->s:Lcom/everyplay/Everyplay/c/q$c;

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/e;->o:Lcom/everyplay/Everyplay/c/q$c;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->s:Lcom/everyplay/Everyplay/c/q$c;

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/e;->p:Lcom/everyplay/Everyplay/c/q$c;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->s:Lcom/everyplay/Everyplay/c/q$c;

    :cond_1
    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/r;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/t;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/n;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/o;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/k;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/m;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/q;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/e$1;

    invoke-direct {v0, p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/e$1;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/e;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/view/videoplayer/e;)Lcom/everyplay/Everyplay/c/q;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    return-object v0
.end method

.method static synthetic b(Lcom/everyplay/Everyplay/view/videoplayer/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/everyplay/Everyplay/view/videoplayer/e;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->r:Z

    return v0
.end method

.method private getPreferredVideoFile()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/q;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/q;->m:Ljava/lang/String;

    const-string v1, "encoding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/q;->r:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->s:Lcom/everyplay/Everyplay/c/q$c;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/q;->a(Lcom/everyplay/Everyplay/c/q$c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->s:Lcom/everyplay/Everyplay/c/q$c;

    sget-object v2, Lcom/everyplay/Everyplay/view/videoplayer/e;->o:Lcom/everyplay/Everyplay/c/q$c;

    if-ne v0, v2, :cond_5

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/e;->p:Lcom/everyplay/Everyplay/c/q$c;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/everyplay/Everyplay/c/q;->a(Lcom/everyplay/Everyplay/c/q$c;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    sget-object v1, Lcom/everyplay/Everyplay/c/q$c;->c:Lcom/everyplay/Everyplay/c/q$c;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/q;->a(Lcom/everyplay/Everyplay/c/q$c;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/q;->r:Ljava/lang/String;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/e;->o:Lcom/everyplay/Everyplay/c/q$c;

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/c/e;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->b()V

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/c/q$c;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    invoke-virtual {v0, p1}, Lcom/everyplay/Everyplay/c/q;->a(Lcom/everyplay/Everyplay/c/q$c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No url for video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    iget v1, v1, Lcom/everyplay/Everyplay/c/q;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/everyplay/Everyplay/c/q$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->s:Lcom/everyplay/Everyplay/c/q$c;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/c;

    instance-of v3, v0, Lcom/everyplay/Everyplay/view/videoplayer/e$b;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e$b;

    invoke-interface {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/e$b;->a(Lcom/everyplay/Everyplay/c/q$c;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->f:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    sget-object v2, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->f:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->getCurrentPosition()I

    move-result v1

    :goto_2
    iget-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->f:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    sget-object v3, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->j:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->getPreferredVideoFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/e;->a(Ljava/lang/String;ZI)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->f:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    sget-object v2, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->g:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->getCurrentPosition()I

    move-result v0

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->f:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    sget-object v2, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->d:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->h:Z

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->getCurrentPosition()I

    move-result v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public final d()V
    .locals 0

    invoke-super {p0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->d()V

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-super {p0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->e()V

    return-void
.end method

.method public final getQuality()Lcom/everyplay/Everyplay/c/q$c;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->s:Lcom/everyplay/Everyplay/c/q$c;

    return-object v0
.end method

.method public final getVideo()Lcom/everyplay/Everyplay/c/q;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    return-object v0
.end method

.method public final setVideo(Lcom/everyplay/Everyplay/c/q;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/everyplay/Everyplay/c/q;->d:I

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    iget v1, v1, Lcom/everyplay/Everyplay/c/q;->d:I

    if-eq v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->r:Z

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    invoke-virtual {v0, p0}, Lcom/everyplay/Everyplay/c/q;->b(Lcom/everyplay/Everyplay/c/r;)V

    :cond_1
    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->q:Lcom/everyplay/Everyplay/c/q;

    invoke-virtual {v0, p0}, Lcom/everyplay/Everyplay/c/q;->a(Lcom/everyplay/Everyplay/c/r;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/c;

    instance-of v2, v0, Lcom/everyplay/Everyplay/view/videoplayer/e$a;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e$a;

    invoke-interface {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/e$a;->a(Lcom/everyplay/Everyplay/c/q;)V

    goto :goto_0

    :cond_3
    const-string v0, "enterPlaybackState"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/e;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget v0, p1, Lcom/everyplay/Everyplay/c/q;->j:I

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->getPreferredVideoFile()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/everyplay/Everyplay/c/q;->j:I

    invoke-virtual {p0, v0, v4, v1}, Lcom/everyplay/Everyplay/view/videoplayer/e;->a(Ljava/lang/String;ZI)Z

    :goto_1
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->getPreferredVideoFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v3}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Ljava/lang/String;ZI)Z

    goto :goto_1
.end method
