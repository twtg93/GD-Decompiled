.class final Lcom/everyplay/Everyplay/c/a/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/c/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/c/a/g;->b(Lcom/everyplay/Everyplay/c/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/c/a/c;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/c/a/g$1;->a:Lcom/everyplay/Everyplay/c/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClean(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 2

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->j()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->i()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v1

    iget-object v1, v1, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onClose(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/g$1;->a:Lcom/everyplay/Everyplay/c/a/c;

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->g()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->g()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/a/g;->a(Lcom/everyplay/Everyplay/c/a/c;)Lcom/everyplay/Everyplay/c/a/c;

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->h()Lcom/everyplay/Everyplay/c/a/c;

    :cond_0
    return-void
.end method

.method public final onOpen(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    return-void
.end method

.method public final onRecordingStarted(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    return-void
.end method

.method public final onRecordingStopped(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    return-void
.end method

.method public final onUpdate(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    return-void
.end method
