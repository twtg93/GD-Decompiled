.class final Lcom/everyplay/Everyplay/view/j$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/j;
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

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/j$5;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$5;->a:Lcom/everyplay/Everyplay/view/j;

    sget v1, Lcom/everyplay/Everyplay/view/j$b;->c:I

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/j;->c(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$5;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$5;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/a/a;->b()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$5;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    sget v1, Lcom/everyplay/Everyplay/view/a/a$a;->d:I

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/a/a;->b(I)V

    :cond_0
    return-void
.end method
