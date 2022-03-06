.class final Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3$1;->a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3$1;->a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;->a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;->e:Lcom/everyplay/Everyplay/view/browser/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/b;->e:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3$1;->a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;->a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;->e:Lcom/everyplay/Everyplay/view/browser/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/b;->e:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3$1;->a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$3;->a:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;->finish()V

    goto :goto_0
.end method
