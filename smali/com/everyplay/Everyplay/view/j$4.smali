.class final Lcom/everyplay/Everyplay/view/j$4;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/j;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/j;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/j;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/view/j;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/view/j;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/j;->a(Lcom/everyplay/Everyplay/view/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/j;->b(Lcom/everyplay/Everyplay/view/j;)Z

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/j;->i()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/j;->h()V

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/j;->c(Lcom/everyplay/Everyplay/view/j;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/view/j;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    iput-boolean v1, v0, Lcom/everyplay/Everyplay/view/j;->j:Z

    :cond_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    iput-boolean v1, v0, Lcom/everyplay/Everyplay/view/j;->i:Z

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$4;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    const-string v1, "ping"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
