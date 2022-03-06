.class final Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5$1;->a:Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5$1;->a:Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5;->a:Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity;->a(Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity;)Lcom/everyplay/Everyplay/view/auth/a;

    move-result-object v0

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/a;->d:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5$1;->a:Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5;->a:Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity;->a(Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity;)Lcom/everyplay/Everyplay/view/auth/a;

    move-result-object v0

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/a;->d:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5$1;->a:Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity$5;->a:Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAuthActivity;->finish()V

    goto :goto_0
.end method
