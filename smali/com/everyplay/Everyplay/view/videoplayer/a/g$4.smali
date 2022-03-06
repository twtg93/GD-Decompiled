.class final Lcom/everyplay/Everyplay/view/videoplayer/a/g$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/g;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/b;

.field final synthetic b:Lcom/everyplay/Everyplay/view/videoplayer/a/g;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/g;Lcom/everyplay/Everyplay/view/videoplayer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$4;->b:Lcom/everyplay/Everyplay/view/videoplayer/a/g;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$4;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/g$4;->a:Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->i()V

    return-void
.end method
