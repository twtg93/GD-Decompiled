.class final Lcom/everyplay/Everyplay/c$6;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/c;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/everyplay/Everyplay/c;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/c$6;->b:Lcom/everyplay/Everyplay/c;

    iput p2, p0, Lcom/everyplay/Everyplay/c$6;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->startRecording()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/everyplay/Everyplay/c$6$1;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/c$6$1;-><init>(Lcom/everyplay/Everyplay/c$6;)V

    iget v2, p0, Lcom/everyplay/Everyplay/c$6;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
