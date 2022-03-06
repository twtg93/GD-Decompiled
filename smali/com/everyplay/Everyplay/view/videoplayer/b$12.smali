.class final Lcom/everyplay/Everyplay/view/videoplayer/b$12;
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

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$12;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iput-boolean p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$12;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$12;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    const-string v1, "Delete previous commentary?"

    const-string v2, "Yes"

    const-string v3, "No"

    iget-boolean v4, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$12;->a:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$12;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-static {v4}, Lcom/everyplay/Everyplay/view/videoplayer/b;->c(Lcom/everyplay/Everyplay/view/videoplayer/b;)Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$12;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-static {v5}, Lcom/everyplay/Everyplay/view/videoplayer/b;->e(Lcom/everyplay/Everyplay/view/videoplayer/b;)Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/everyplay/Everyplay/view/videoplayer/b;->a(Lcom/everyplay/Everyplay/view/videoplayer/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/everyplay/Everyplay/view/videoplayer/b$a;Lcom/everyplay/Everyplay/view/videoplayer/b$a;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$12;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    invoke-static {v4}, Lcom/everyplay/Everyplay/view/videoplayer/b;->d(Lcom/everyplay/Everyplay/view/videoplayer/b;)Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    move-result-object v4

    goto :goto_0
.end method
