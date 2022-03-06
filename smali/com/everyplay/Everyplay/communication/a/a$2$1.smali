.class final Lcom/everyplay/Everyplay/communication/a/a$2$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/a/a$2;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/a/a$2;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/a/a$2;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/a/a$2$1;->a:Lcom/everyplay/Everyplay/communication/a/a$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/a/a$2$1;->a:Lcom/everyplay/Everyplay/communication/a/a$2;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/a/a$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/a/a;->e(Ljava/lang/String;)V

    return-void
.end method
