.class final Lcom/everyplay/Everyplay/c$6$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/c$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/c$6;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/c$6;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/c$6$1;->a:Lcom/everyplay/Everyplay/c$6;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->stopRecording()V

    return-void
.end method
