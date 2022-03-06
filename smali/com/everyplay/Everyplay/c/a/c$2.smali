.class final Lcom/everyplay/Everyplay/c/a/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/c/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/c/a/c;->a(Lcom/everyplay/Everyplay/c/a/d;Lcom/everyplay/Everyplay/c/a/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/c/a/c;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/c/a/c$2;->a:Lcom/everyplay/Everyplay/c/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c$2;->a:Lcom/everyplay/Everyplay/c/a/c;

    invoke-static {v0, p1, p2}, Lcom/everyplay/Everyplay/c/a/c;->a(Lcom/everyplay/Everyplay/c/a/c;Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c$2;->a:Lcom/everyplay/Everyplay/c/a/c;

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/a/c;->a(Lcom/everyplay/Everyplay/c/a/c;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c$2;->a:Lcom/everyplay/Everyplay/c/a/c;

    invoke-static {v0, p1, p2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/c;Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c$2;->a:Lcom/everyplay/Everyplay/c/a/c;

    invoke-static {v1, p1, v0}, Lcom/everyplay/Everyplay/c/a/c;->c(Lcom/everyplay/Everyplay/c/a/c;Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V

    return-void
.end method
