.class final Lcom/everyplay/Everyplay/view/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/b;

.field final synthetic b:Lcom/everyplay/Everyplay/view/b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/b;Lcom/everyplay/Everyplay/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/b$2;->b:Lcom/everyplay/Everyplay/view/b;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/b$2;->a:Lcom/everyplay/Everyplay/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/b$2;->b:Lcom/everyplay/Everyplay/view/b;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/b;->a(Lcom/everyplay/Everyplay/view/b;)Lcom/everyplay/Everyplay/view/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/b$2;->b:Lcom/everyplay/Everyplay/view/b;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/b;->a(Lcom/everyplay/Everyplay/view/b;)Lcom/everyplay/Everyplay/view/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/b$2;->b:Lcom/everyplay/Everyplay/view/b;

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/b;->b(Lcom/everyplay/Everyplay/view/b;)Lcom/everyplay/Everyplay/c/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/view/b$a;->a(Lcom/everyplay/Everyplay/c/a;)V

    :cond_0
    return-void
.end method
