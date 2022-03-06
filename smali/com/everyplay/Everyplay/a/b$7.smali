.class final Lcom/everyplay/Everyplay/a/b$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/a/b$7;->a:Ljava/lang/String;

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

    invoke-static {p1}, Lcom/everyplay/Everyplay/a/b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lorg/json/JSONObject;

    new-instance v0, Lcom/everyplay/Everyplay/a/a;

    new-instance v1, Lcom/everyplay/Everyplay/c/p;

    invoke-direct {v1, p1}, Lcom/everyplay/Everyplay/c/p;-><init>(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/everyplay/Everyplay/a/b$7;->a:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/everyplay/Everyplay/a/a;-><init>(Lcom/everyplay/Everyplay/c/p;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->b(Lcom/everyplay/Everyplay/a/a;)Lcom/everyplay/Everyplay/a/a;

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->h()Lcom/everyplay/Everyplay/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->a(Lcom/everyplay/Everyplay/a/a;)V

    return-void
.end method
