.class final Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;->a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;->a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;

    new-instance v1, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3$1;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3$1;-><init>(Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
