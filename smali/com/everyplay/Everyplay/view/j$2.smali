.class final Lcom/everyplay/Everyplay/view/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/j;->b(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/j$2;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$2;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    sget v1, Lcom/everyplay/Everyplay/view/a/a$a;->b:I

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/a/a;->b(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j$2;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/a/a;->a()V

    return-void
.end method
