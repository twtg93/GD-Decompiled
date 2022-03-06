.class public final Lcom/everyplay/Everyplay/communication/upload/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everyplay/Everyplay/communication/upload/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/everyplay/Everyplay/communication/upload/c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/everyplay/Everyplay/c/a/c;)Lcom/everyplay/Everyplay/communication/upload/b;
    .locals 3

    new-instance v1, Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/communication/upload/b;-><init>(Lcom/everyplay/Everyplay/c/a/c;)V

    sget-object v0, Lcom/everyplay/Everyplay/communication/upload/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/d;

    invoke-virtual {v1, v0}, Lcom/everyplay/Everyplay/communication/upload/b;->a(Lcom/everyplay/Everyplay/communication/upload/d;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everyplay/Everyplay/communication/upload/b;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/a/c;

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Lcom/everyplay/Everyplay/communication/upload/d;)V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/communication/upload/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/everyplay/Everyplay/communication/upload/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-virtual {v0, p0}, Lcom/everyplay/Everyplay/communication/upload/b;->a(Lcom/everyplay/Everyplay/communication/upload/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lcom/everyplay/Everyplay/communication/upload/d;)V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/communication/upload/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/everyplay/Everyplay/communication/upload/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/upload/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
