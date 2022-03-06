.class public final Lcom/everyplay/Everyplay/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/b/f;

.field final synthetic b:Lcom/everyplay/Everyplay/a/a;


# direct methods
.method public constructor <init>(Lcom/everyplay/Everyplay/a/a;Lcom/everyplay/Everyplay/communication/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/a/a$1;->b:Lcom/everyplay/Everyplay/a/a;

    iput-object p2, p0, Lcom/everyplay/Everyplay/a/a$1;->a:Lcom/everyplay/Everyplay/communication/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/a/a$1;->a:Lcom/everyplay/Everyplay/communication/b/f;

    invoke-interface {v0, p1}, Lcom/everyplay/Everyplay/communication/b/f;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/everyplay/Everyplay/a/a$1;->b:Lcom/everyplay/Everyplay/a/a;

    iput-object p1, v0, Lcom/everyplay/Everyplay/a/a;->c:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/everyplay/Everyplay/a/a$1;->a:Lcom/everyplay/Everyplay/communication/b/f;

    invoke-interface {v0, p1}, Lcom/everyplay/Everyplay/communication/b/f;->a(Ljava/lang/Object;)V

    return-void
.end method
