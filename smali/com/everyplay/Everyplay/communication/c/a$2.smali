.class final Lcom/everyplay/Everyplay/communication/c/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/c/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/c/g$b;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/c/a;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/c/a;Lcom/everyplay/Everyplay/c/g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/c/a$2;->b:Lcom/everyplay/Everyplay/communication/c/a;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/c/a$2;->a:Lcom/everyplay/Everyplay/c/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/a$2;->b:Lcom/everyplay/Everyplay/communication/c/a;

    iput-object p2, v0, Lcom/everyplay/Everyplay/communication/c/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/a$2;->a:Lcom/everyplay/Everyplay/c/g$b;

    invoke-interface {v0, p1, p2}, Lcom/everyplay/Everyplay/c/g$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
