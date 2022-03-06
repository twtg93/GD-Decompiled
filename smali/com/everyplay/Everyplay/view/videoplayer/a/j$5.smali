.class final Lcom/everyplay/Everyplay/view/videoplayer/a/j$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/a/j;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$5;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$5;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    new-instance v3, Lcom/everyplay/Everyplay/c/q;

    invoke-direct {v3, v1}, Lcom/everyplay/Everyplay/c/q;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v2, v3}, Lcom/everyplay/Everyplay/view/videoplayer/a/j;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/j;Lcom/everyplay/Everyplay/c/q;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$5;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/j;->g(Lcom/everyplay/Everyplay/view/videoplayer/a/j;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/j$5;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/j;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/j;->h(Lcom/everyplay/Everyplay/view/videoplayer/a/j;)Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method
