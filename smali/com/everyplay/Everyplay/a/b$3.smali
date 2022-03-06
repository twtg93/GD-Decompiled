.class final Lcom/everyplay/Everyplay/a/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/a/b$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/everyplay/Everyplay/a/b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/a/b$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->b(Ljava/lang/String;)V

    return-void
.end method
