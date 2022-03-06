.class final Lcom/everyplay/Everyplay/view/videoplayer/a/j$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/EveryplayImageView;

.field final synthetic b:Lcom/everyplay/Everyplay/view/videoplayer/a/j;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/j;Lcom/everyplay/Everyplay/view/EveryplayImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$3;->b:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$3;->a:Lcom/everyplay/Everyplay/view/EveryplayImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$3;->b:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/videoplayer/a/j;->c:Landroid/view/View;

    new-instance v1, Lcom/everyplay/Everyplay/view/videoplayer/a/j$3$1;

    invoke-direct {v1, p0, p2}, Lcom/everyplay/Everyplay/view/videoplayer/a/j$3$1;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/a/j$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
