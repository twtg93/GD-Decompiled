.class final Lcom/everyplay/Everyplay/view/videoplayer/b$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/view/videoplayer/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/b;->c(Z)Lcom/everyplay/Everyplay/view/videoplayer/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/everyplay/Everyplay/view/videoplayer/b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$13;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iput-boolean p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$13;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$13;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->c(Lcom/everyplay/Everyplay/view/videoplayer/b;)Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b$a;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$13;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b;->d(Lcom/everyplay/Everyplay/view/videoplayer/b;)Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b$a;->a()V

    goto :goto_0
.end method
