.class final Lcom/everyplay/Everyplay/view/k$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/k;->a(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/k$10;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$10;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->a(Lcom/everyplay/Everyplay/view/k;)Lcom/everyplay/Everyplay/view/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$10;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->a(Lcom/everyplay/Everyplay/view/k;)Lcom/everyplay/Everyplay/view/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/everyplay/Everyplay/view/k$a;->d()V

    :cond_0
    return-void
.end method
