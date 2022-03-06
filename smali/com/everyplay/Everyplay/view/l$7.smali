.class final Lcom/everyplay/Everyplay/view/l$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/l;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/l;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/l;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/l$7;->a:Lcom/everyplay/Everyplay/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$7;->a:Lcom/everyplay/Everyplay/view/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/l;->a(Lcom/everyplay/Everyplay/view/l;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$7;->a:Lcom/everyplay/Everyplay/view/l;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/l;->a(Lcom/everyplay/Everyplay/view/l;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$7;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/k;->d:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/k;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
