.class final Lcom/everyplay/Everyplay/d/b$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/d/b$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/d/b$6;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/d/b$6;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/d/b$6$1;->a:Lcom/everyplay/Everyplay/d/b$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/everyplay/Everyplay/communication/c$a;->g:I

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/everyplay/Everyplay/d/b$6$1;->a:Lcom/everyplay/Everyplay/d/b$6;

    iget-object v5, v5, Lcom/everyplay/Everyplay/d/b$6;->a:Lcom/everyplay/Everyplay/d/b;

    invoke-static {v5}, Lcom/everyplay/Everyplay/d/b;->g(Lcom/everyplay/Everyplay/d/b;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/everyplay/Everyplay/communication/c;->a(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
