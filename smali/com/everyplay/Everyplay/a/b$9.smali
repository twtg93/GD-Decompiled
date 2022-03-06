.class final Lcom/everyplay/Everyplay/a/b$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/a/b;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/everyplay/Everyplay/a/e;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/everyplay/Everyplay/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/a/b$9;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/everyplay/Everyplay/a/b$9;->b:Lcom/everyplay/Everyplay/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/a/b$9;->b:Lcom/everyplay/Everyplay/a/e;

    invoke-interface {v0, p1}, Lcom/everyplay/Everyplay/a/e;->a(Ljava/lang/Exception;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final onLogin(Lcom/everyplay/Everyplay/a/a;)Z
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/a/b$9;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/everyplay/Everyplay/a/b$9;->b:Lcom/everyplay/Everyplay/a/e;

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/a/b;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/a/e;)V

    const/4 v0, 0x1

    return v0
.end method
