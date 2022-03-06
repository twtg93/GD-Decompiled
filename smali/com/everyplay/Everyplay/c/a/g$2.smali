.class final Lcom/everyplay/Everyplay/c/a/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/c/a/g;->f()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/everyplay/Everyplay/c/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/everyplay/Everyplay/c/a/c;

    check-cast p2, Lcom/everyplay/Everyplay/c/a/c;

    iget-object v0, p1, Lcom/everyplay/Everyplay/c/a/c;->c:Ljava/util/Date;

    iget-object v1, p2, Lcom/everyplay/Everyplay/c/a/c;->c:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p2, Lcom/everyplay/Everyplay/c/a/c;->c:Ljava/util/Date;

    iget-object v1, p1, Lcom/everyplay/Everyplay/c/a/c;->c:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
