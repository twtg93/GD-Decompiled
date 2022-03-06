.class final Lcom/everyplay/Everyplay/view/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/k;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/k;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/k$2;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$2;->a:Lcom/everyplay/Everyplay/view/k;

    sget-object v1, Lcom/everyplay/Everyplay/view/k$b;->c:Lcom/everyplay/Everyplay/view/k$b;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/k;->a(Lcom/everyplay/Everyplay/view/k$b;)V

    return-void
.end method
