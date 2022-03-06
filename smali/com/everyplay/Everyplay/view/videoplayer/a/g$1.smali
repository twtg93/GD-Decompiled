.class final Lcom/everyplay/Everyplay/view/videoplayer/a/g$1;
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

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;

    move-result-object v0

    const-string v1, "trimButtonPressed"

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/h;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$1;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/g;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/g;)V

    return-void
.end method
