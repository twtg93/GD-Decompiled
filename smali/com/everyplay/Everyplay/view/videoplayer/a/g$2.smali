.class final Lcom/everyplay/Everyplay/view/videoplayer/a/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/g;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/a/g;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->h:Landroid/widget/ImageButton;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->i:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->d()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->c:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->c(Lcom/everyplay/Everyplay/c/a/d;)V

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->e:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->c(Lcom/everyplay/Everyplay/c/a/d;)V

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->g:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->c(Lcom/everyplay/Everyplay/c/a/d;)V

    :cond_0
    iget-object v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->e:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/b;

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iput-boolean v3, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->p:Z

    iget-boolean v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->p:Z

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/b;->b(Z)V

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/videoplayer/b;->o:Lcom/everyplay/Everyplay/c/a/c;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1, v2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3}, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;->a(Ljava/lang/String;ZI)Z

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->c(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    const-string v1, "undoTrimButtonPressed"

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Ljava/lang/String;)V

    return-void
.end method
