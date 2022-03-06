.class public final Lcom/everyplay/Everyplay/view/videoplayer/b;
.super Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

# interfaces
.implements Lcom/everyplay/Everyplay/device/e;
.implements Lcom/everyplay/Everyplay/view/videoplayer/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/view/videoplayer/b$b;,
        Lcom/everyplay/Everyplay/view/videoplayer/b$a;
    }
.end annotation


# instance fields
.field public o:Lcom/everyplay/Everyplay/c/a/c;

.field public p:Z

.field public q:Ljava/lang/Boolean;

.field public r:Ljava/lang/Boolean;

.field public s:Lcom/everyplay/Everyplay/view/videoplayer/a/b;

.field public t:Lcom/everyplay/Everyplay/view/videoplayer/c;

.field public u:Lcom/everyplay/Everyplay/view/videoplayer/a/d;

.field public v:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

.field public w:Lcom/everyplay/Everyplay/view/videoplayer/a/e;

.field public x:Lcom/everyplay/Everyplay/view/videoplayer/a/c;

.field public y:Lcom/everyplay/Everyplay/view/videoplayer/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->q:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->r:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->s:Lcom/everyplay/Everyplay/view/videoplayer/a/b;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->u:Lcom/everyplay/Everyplay/view/videoplayer/a/d;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->v:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->w:Lcom/everyplay/Everyplay/view/videoplayer/a/e;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->x:Lcom/everyplay/Everyplay/view/videoplayer/a/c;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->y:Lcom/everyplay/Everyplay/view/videoplayer/a/a;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    iput-boolean v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->p:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->m:I

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->n:Z

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->q:Ljava/lang/Boolean;

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->r:Ljava/lang/Boolean;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->v:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->v:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/a;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->y:Lcom/everyplay/Everyplay/view/videoplayer/a/a;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->y:Lcom/everyplay/Everyplay/view/videoplayer/a/a;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/o;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/c;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/e;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->w:Lcom/everyplay/Everyplay/view/videoplayer/a/e;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->w:Lcom/everyplay/Everyplay/view/videoplayer/a/e;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/k;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/b$1;

    invoke-direct {v0, p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/b$1;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/f;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->c:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->c:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->e:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->e:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->g:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->g:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->a(Ljava/util/ArrayList;)V

    :goto_5
    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->d:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->d:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->f:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->f:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->h:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->setState(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    goto :goto_5
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/view/videoplayer/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->m()V

    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/view/videoplayer/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/everyplay/Everyplay/view/videoplayer/b$a;Lcom/everyplay/Everyplay/view/videoplayer/b$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/everyplay/Everyplay/view/videoplayer/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/everyplay/Everyplay/view/videoplayer/b$a;Lcom/everyplay/Everyplay/view/videoplayer/b$a;)V

    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/view/videoplayer/b;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/b;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/everyplay/Everyplay/view/videoplayer/b$a;Lcom/everyplay/Everyplay/view/videoplayer/b$a;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/everyplay/Everyplay/view/videoplayer/b$2;

    invoke-direct {v2, p0, p4}, Lcom/everyplay/Everyplay/view/videoplayer/b$2;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;Lcom/everyplay/Everyplay/view/videoplayer/b$a;)V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/everyplay/Everyplay/view/videoplayer/b$14;

    invoke-direct {v2, p0, p5}, Lcom/everyplay/Everyplay/view/videoplayer/b$14;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;Lcom/everyplay/Everyplay/view/videoplayer/b$a;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everyplay/Everyplay/c/a/d;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    new-instance v2, Lcom/everyplay/Everyplay/view/videoplayer/b$7;

    invoke-direct {v2, p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/b$7;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Lcom/everyplay/Everyplay/c/a/c;->a(Lcom/everyplay/Everyplay/c/a/d;Lcom/everyplay/Everyplay/c/a/h;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/everyplay/Everyplay/view/videoplayer/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->n()V

    return-void
.end method

.method static synthetic c(Lcom/everyplay/Everyplay/view/videoplayer/b;)Lcom/everyplay/Everyplay/view/videoplayer/b$a;
    .locals 1

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/b$3;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/view/videoplayer/b$3;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;)V

    return-object v0
.end method

.method private c(Z)Lcom/everyplay/Everyplay/view/videoplayer/b$a;
    .locals 2

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->o()I

    move-result v0

    sget v1, Lcom/everyplay/Everyplay/view/videoplayer/b$b;->a:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/b$12;

    invoke-direct {v0, p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/b$12;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/b$13;

    invoke-direct {v0, p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/b$13;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/everyplay/Everyplay/view/videoplayer/b;)Lcom/everyplay/Everyplay/view/videoplayer/b$a;
    .locals 1

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/b$4;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/view/videoplayer/b$4;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;)V

    return-object v0
.end method

.method static synthetic e(Lcom/everyplay/Everyplay/view/videoplayer/b;)Lcom/everyplay/Everyplay/view/videoplayer/b$a;
    .locals 1

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->l()Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/everyplay/Everyplay/view/videoplayer/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->j()V

    return-void
.end method

.method static synthetic g(Lcom/everyplay/Everyplay/view/videoplayer/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->k()V

    return-void
.end method

.method private l()Lcom/everyplay/Everyplay/view/videoplayer/b$a;
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->o()I

    move-result v0

    sget v1, Lcom/everyplay/Everyplay/view/videoplayer/b$b;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/b$8;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/view/videoplayer/b$8;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->o()I

    move-result v0

    sget v1, Lcom/everyplay/Everyplay/view/videoplayer/b$b;->c:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/b$9;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/view/videoplayer/b$9;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/b$10;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/view/videoplayer/b$10;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/b$11;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/view/videoplayer/b$11;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;)V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/l;

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/p;

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Lcom/everyplay/Everyplay/view/videoplayer/c;)Lcom/everyplay/Everyplay/view/videoplayer/c;

    :cond_0
    return-void
.end method

.method private o()I
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->f:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->g:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    sget v0, Lcom/everyplay/Everyplay/view/videoplayer/b$b;->c:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->d:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->e:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    sget v0, Lcom/everyplay/Everyplay/view/videoplayer/b$b;->b:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/everyplay/Everyplay/view/videoplayer/b$b;->a:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->a(Lcom/everyplay/Everyplay/device/e;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->r:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->q:Ljava/lang/Boolean;

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_4

    aget-object v2, p2, v0

    const-string v4, "android.permission.CAMERA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, p3, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->r:Ljava/lang/Boolean;

    :cond_0
    aget-object v2, p2, v0

    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget v2, p3, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->q:Ljava/lang/Boolean;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    const-string v0, "onFaceCamButtonClicked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/everyplay/Everyplay/view/videoplayer/b$5;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/videoplayer/b$5;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    const-string v0, "onMicrophoneButtonClicked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/everyplay/Everyplay/view/videoplayer/b$6;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/videoplayer/b$6;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/b;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->b(Lcom/everyplay/Everyplay/view/videoplayer/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->t:Lcom/everyplay/Everyplay/view/videoplayer/c;

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->e:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->m()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->g:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->n()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->d:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->m()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->f:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->n()V

    goto :goto_0
.end method

.method public final getSession()Lcom/everyplay/Everyplay/c/a/c;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    return-object v0
.end method

.method public final h()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->c:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->p:Z

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->p:Z

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->b(Z)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->c:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v2}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Ljava/lang/String;ZI)Z

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->j:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->setState(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->a(Z)V

    return-void
.end method

.method public final j()V
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->d()V

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "To hear the game and for best result, please use headphones with microphone."

    const-string v2, "Ok"

    const-string v3, "Cancel"

    invoke-direct {p0, v4}, Lcom/everyplay/Everyplay/view/videoplayer/b;->c(Z)Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v4

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->l()Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/everyplay/Everyplay/view/videoplayer/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/everyplay/Everyplay/view/videoplayer/b$a;Lcom/everyplay/Everyplay/view/videoplayer/b$a;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/everyplay/Everyplay/view/videoplayer/b;->c(Z)Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b$a;->a()V

    goto :goto_0
.end method

.method public final k()V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->d()V

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "To hear the game and for best result, please use headphones with microphone."

    const-string v2, "Ok"

    const-string v3, "Cancel"

    invoke-direct {p0, v4}, Lcom/everyplay/Everyplay/view/videoplayer/b;->c(Z)Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v4

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->l()Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/everyplay/Everyplay/view/videoplayer/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/everyplay/Everyplay/view/videoplayer/b$a;Lcom/everyplay/Everyplay/view/videoplayer/b$a;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/everyplay/Everyplay/view/videoplayer/b;->c(Z)Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b$a;->a()V

    goto :goto_0
.end method
