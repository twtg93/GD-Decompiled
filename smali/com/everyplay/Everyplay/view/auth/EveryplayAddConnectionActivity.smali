.class public Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;
.super Lcom/everyplay/Everyplay/view/c;


# instance fields
.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/everyplay/Everyplay/view/auth/a;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/c;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->e:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;)Lcom/everyplay/Everyplay/view/auth/a;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    return-object v0
.end method

.method static synthetic b(Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/a;->d:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    new-instance v1, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity$3;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity$3;-><init>(Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/everyplay/Everyplay/view/c;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1030006

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->setTheme(I)V

    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/n;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity$1;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity$1;-><init>(Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/everyplay/Everyplay/view/auth/a;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/view/auth/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/a;->c:Lcom/everyplay/Everyplay/view/k;

    new-instance v1, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity$2;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity$2;-><init>(Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;)V

    iput-object v1, v0, Lcom/everyplay/Everyplay/view/k;->f:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "service"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "redirect_uri"

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "redirect_uri"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/auth/a;->d()V

    sget-object v0, Lcom/everyplay/Everyplay/communication/b/a$b;->b:Lcom/everyplay/Everyplay/communication/b/a$b;

    const-string v2, "/me/connections"

    new-instance v3, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity$4;

    invoke-direct {v3, p0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity$4;-><init>(Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;)V

    invoke-static {v0, v2, v1, v3}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/json/JSONObject;Lcom/everyplay/Everyplay/communication/b/h;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->requestWindowFeature(I)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/n;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/n;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/a;->d:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/a;->d:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->destroy()V

    :cond_0
    iput-object v1, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->e:Landroid/widget/RelativeLayout;

    invoke-super {p0}, Lcom/everyplay/Everyplay/view/c;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/a;->d:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;->f:Lcom/everyplay/Everyplay/view/auth/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/auth/a;->d:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    const-string v1, "(function () { try { return goBack() || false; } catch(e) { return true;} })() ? \'true\' : \'false\'"

    new-instance v2, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity$5;

    invoke-direct {v2, p0}, Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity$5;-><init>(Lcom/everyplay/Everyplay/view/auth/EveryplayAddConnectionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/communication/n;)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/everyplay/Everyplay/view/c;->onResume()V

    return-void
.end method
