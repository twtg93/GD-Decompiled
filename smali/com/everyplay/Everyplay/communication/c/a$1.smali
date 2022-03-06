.class final Lcom/everyplay/Everyplay/communication/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/c/d;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/c/a;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/c/a;Lcom/everyplay/Everyplay/communication/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/c/a$1;->b:Lcom/everyplay/Everyplay/communication/c/a;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/c/a$1;->a:Lcom/everyplay/Everyplay/communication/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/communication/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/a$1;->a:Lcom/everyplay/Everyplay/communication/c/d;

    invoke-interface {v0, p1}, Lcom/everyplay/Everyplay/communication/c/d;->a(Lcom/everyplay/Everyplay/communication/c/a;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/a$1;->b:Lcom/everyplay/Everyplay/communication/c/a;

    invoke-virtual {v0, p0}, Lcom/everyplay/Everyplay/communication/c/a;->a(Lcom/everyplay/Everyplay/communication/c/d;)V

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/communication/c/a;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/a$1;->a:Lcom/everyplay/Everyplay/communication/c/d;

    invoke-interface {v0, p1, p2}, Lcom/everyplay/Everyplay/communication/c/d;->a(Lcom/everyplay/Everyplay/communication/c/a;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/a$1;->b:Lcom/everyplay/Everyplay/communication/c/a;

    invoke-virtual {v0, p0}, Lcom/everyplay/Everyplay/communication/c/a;->a(Lcom/everyplay/Everyplay/communication/c/d;)V

    return-void
.end method
