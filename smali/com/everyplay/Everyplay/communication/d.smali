.class public final Lcom/everyplay/Everyplay/communication/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/communication/d$a;,
        Lcom/everyplay/Everyplay/communication/d$b;
    }
.end annotation


# instance fields
.field a:Lcom/everyplay/Everyplay/view/EveryplayWebView;

.field public b:Ljava/lang/String;

.field public c:Lcom/everyplay/Everyplay/communication/d$b;


# direct methods
.method public constructor <init>(Lcom/everyplay/Everyplay/view/EveryplayWebView;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/d;->a:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    const-string v0, "window.auth = window.auth || {};"

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "window.auth.cb_id = 0;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "window.auth.createCallback = function (fn) { var id = window.auth.cb_id++; window.auth[\'callback_\' + id] = function () { var args = Array.prototype.slice.call(arguments); fn.apply(null, args); delete window.auth[\'callback_\' + id]; }; return id; };"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "window.auth.processArgs = function (argumentObject) { var args = Array.prototype.slice.call(argumentObject); for (var i = 0; i < args.length; i++) { if (typeof args[i] === \'object\') { args[i] = JSON.stringify(args[i]); } } if (typeof args[args.length - 1] === \'function\') { args[args.length - 1] = window.auth.createCallback(args[args.length - 1]); } return args; };"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/d;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ai_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/everyplay/Everyplay/communication/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "window.auth."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = function () { var args = window.auth.processArgs(arguments); window.auth."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apply(window.auth, args); };"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/everyplay/Everyplay/communication/d;->b:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d;->a:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    const-string v1, "window.auth.callback_%s(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/everyplay/Everyplay/communication/d$a;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d;->a:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    new-instance v1, Lcom/everyplay/Everyplay/communication/d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/everyplay/Everyplay/communication/d$1;-><init>(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Lcom/everyplay/Everyplay/communication/d$a;)V

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;Ljava/lang/String;)V
    .locals 5

    const-string v0, "kEveryplaySocnetURLKey"

    invoke-static {v0}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/everyplay/Everyplay/communication/d$3;

    invoke-direct {v4, p0, p2}, Lcom/everyplay/Everyplay/communication/d$3;-><init>(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/everyplay/Everyplay/view/f;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;ZZLcom/everyplay/Everyplay/communication/k;)V

    return-void
.end method

.method public final ai_changeTopBar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/everyplay/Everyplay/communication/d$6;

    invoke-direct {v0, p0, p1}, Lcom/everyplay/Everyplay/communication/d$6;-><init>(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/everyplay/Everyplay/communication/d;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/communication/d$a;)V

    return-void
.end method

.method public final ai_close(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d;->c:Lcom/everyplay/Everyplay/communication/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d;->c:Lcom/everyplay/Everyplay/communication/d$b;

    invoke-interface {v0}, Lcom/everyplay/Everyplay/communication/d$b;->a()V

    :cond_0
    return-void
.end method

.method public final ai_isAllowed(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/everyplay/Everyplay/communication/d$2;

    invoke-direct {v0, p0, p1}, Lcom/everyplay/Everyplay/communication/d$2;-><init>(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/everyplay/Everyplay/communication/d;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/communication/d$a;)V

    return-void
.end method

.method public final ai_sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/everyplay/Everyplay/communication/d$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/everyplay/Everyplay/communication/d$5;-><init>(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/everyplay/Everyplay/communication/d;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/communication/d$a;)V

    return-void
.end method

.method public final ai_socialNetworkLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/everyplay/Everyplay/communication/d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/everyplay/Everyplay/communication/d$4;-><init>(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/everyplay/Everyplay/communication/d;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/communication/d$a;)V

    return-void
.end method
