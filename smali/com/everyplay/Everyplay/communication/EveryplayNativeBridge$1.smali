.class final Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethod(ZZLjava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/Object;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$1;->b:[Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$1;->b:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethodNative(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$1;->c:Z

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
