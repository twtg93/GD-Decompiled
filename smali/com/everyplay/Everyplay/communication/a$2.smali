.class final Lcom/everyplay/Everyplay/communication/a$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/a;->a(Lcom/everyplay/Everyplay/communication/a$a;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/a$a;

.field final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/a$a;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/a$2;->a:Lcom/everyplay/Everyplay/communication/a$a;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/a$2;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/a$2;->a:Lcom/everyplay/Everyplay/communication/a$a;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/a$2;->b:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/b;->a(Lcom/everyplay/Everyplay/communication/a$a;Ljava/util/HashMap;)V

    return-void
.end method
