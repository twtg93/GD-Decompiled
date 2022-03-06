.class public Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;
.super Ljava/lang/Object;


# static fields
.field protected static d:I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field protected e:Lcom/everyplay/external/mp4parser/h264/CharCache;

.field private f:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/everyplay/external/mp4parser/h264/CharCache;

    invoke-direct {v0}, Lcom/everyplay/external/mp4parser/h264/CharCache;-><init>()V

    iput-object v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->e:Lcom/everyplay/external/mp4parser/h264/CharCache;

    iput-object p1, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->f:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->a:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    const/4 v0, -0x1

    iget v1, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->c:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->b()V

    iget v1, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->a:I

    iget v1, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->c:I

    rsub-int/lit8 v1, v1, 0x7

    shr-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    iget v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->c:I

    iget-object v2, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->e:Lcom/everyplay/external/mp4parser/h264/CharCache;

    if-nez v1, :cond_2

    const/16 v0, 0x30

    :goto_1
    iget v3, v2, Lcom/everyplay/external/mp4parser/h264/CharCache;->b:I

    iget-object v4, v2, Lcom/everyplay/external/mp4parser/h264/CharCache;->a:[C

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    iget-object v3, v2, Lcom/everyplay/external/mp4parser/h264/CharCache;->a:[C

    iget v4, v2, Lcom/everyplay/external/mp4parser/h264/CharCache;->b:I

    aput-char v0, v3, v4

    iget v0, v2, Lcom/everyplay/external/mp4parser/h264/CharCache;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/everyplay/external/mp4parser/h264/CharCache;->b:I

    :cond_1
    sget v0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->d:I

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x31

    goto :goto_1
.end method

.method public final a(I)J
    .locals 6

    const/16 v0, 0x40

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not readByte more then 64 bit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_1

    return-wide v2

    :cond_1
    const/4 v1, 0x1

    shl-long/2addr v2, v1

    invoke-virtual {p0}, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->a()I

    move-result v1

    int-to-long v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->b:I

    iput v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->a:I

    iget-object v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->c:I

    return-void
.end method

.method public final c()J
    .locals 2

    iget v0, p0, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->c:I

    rsub-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/everyplay/external/mp4parser/h264/read/BitstreamReader;->a(I)J

    move-result-wide v0

    return-wide v0
.end method
