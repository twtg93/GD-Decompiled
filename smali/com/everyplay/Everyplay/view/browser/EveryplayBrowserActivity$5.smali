.class final Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$5;->b:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;

    iput p2, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$6;->a:[I

    iget v1, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$5;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$5;->b:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;->e:Lcom/everyplay/Everyplay/view/browser/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/b;->e:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->goBack()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$5;->b:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;->e:Lcom/everyplay/Everyplay/view/browser/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/b;->e:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->goForward()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$5;->b:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;->e:Lcom/everyplay/Everyplay/view/browser/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/b;->e:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->reload()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity$5;->b:Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;->a(Lcom/everyplay/Everyplay/view/browser/EveryplayBrowserActivity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
