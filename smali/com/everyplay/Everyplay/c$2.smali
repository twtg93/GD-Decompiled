.class final Lcom/everyplay/Everyplay/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/c;->g()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/c;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/c;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/c$2;->a:Lcom/everyplay/Everyplay/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/everyplay/Everyplay/view/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/c;

    const v1, 0xc3b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/view/c;->b(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
