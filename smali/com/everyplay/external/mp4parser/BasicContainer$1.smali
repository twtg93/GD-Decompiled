.class final Lcom/everyplay/external/mp4parser/BasicContainer$1;
.super Lcom/everyplay/external/mp4parser/AbstractBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/external/mp4parser/BasicContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/everyplay/external/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method protected final getContent(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method protected final getContentSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
