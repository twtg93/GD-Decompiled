.class public Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;
.super Lcom/everyplay/external/iso/boxes/sampleentry/AbstractSampleEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;,
        Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;
    }
.end annotation


# static fields
.field public static final TYPE1:Ljava/lang/String; = "tx3g"

.field public static final TYPE_ENCRYPTED:Ljava/lang/String; = "enct"


# instance fields
.field private a:J

.field private h:I

.field private i:I

.field private j:[I

.field private k:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

.field private l:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "tx3g"

    invoke-direct {p0, v0}, Lcom/everyplay/external/iso/boxes/sampleentry/AbstractSampleEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    new-instance v0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    invoke-direct {v0}, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;-><init>()V

    iput-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->k:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    new-instance v0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    invoke-direct {v0}, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;-><init>()V

    iput-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->l:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/everyplay/external/iso/boxes/sampleentry/AbstractSampleEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    new-instance v0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    invoke-direct {v0}, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;-><init>()V

    iput-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->k:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    new-instance v0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    invoke-direct {v0}, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;-><init>()V

    iput-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->l:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    return-void
.end method


# virtual methods
.method public getBackgroundColorRgba()[I
    .locals 1

    iget-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    return-object v0
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    const/16 v0, 0x26

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->dataReferenceIndex:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget-wide v2, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    invoke-static {v0, v2, v3}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;J)V

    iget v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->h:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->i:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    aget v1, v1, v4

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    aget v1, v1, v5

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    aget v1, v1, v6

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    aget v1, v1, v7

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->k:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    iget v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->a:I

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->b:I

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->c:I

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v1, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->d:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->l:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    iget v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->a:I

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->b:I

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->c:I

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->d:I

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->e:I

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->f:[I

    aget v2, v2, v4

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->f:[I

    aget v2, v2, v5

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->f:[I

    aget v2, v2, v6

    invoke-static {v0, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v1, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->f:[I

    aget v1, v1, v7

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0, p1}, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method public getBoxRecord()Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->k:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    return-object v0
.end method

.method public getHorizontalJustification()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->h:I

    return v0
.end method

.method public getSize()J
    .locals 8

    const-wide/16 v6, 0x26

    invoke-virtual {p0}, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->getContainerSize()J

    move-result-wide v0

    add-long v2, v0, v6

    iget-boolean v4, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->largeBox:Z

    if-nez v4, :cond_0

    add-long/2addr v0, v6

    const-wide v4, 0x100000000L

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getStyleRecord()Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->l:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    return-object v0
.end method

.method public getVerticalJustification()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->i:I

    return v0
.end method

.method public isContinuousKaraoke()Z
    .locals 4

    const-wide/16 v2, 0x800

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFillTextRegion()Z
    .locals 4

    const-wide/32 v2, 0x40000

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollDirection()Z
    .locals 4

    const-wide/16 v2, 0x180

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollIn()Z
    .locals 4

    const-wide/16 v2, 0x20

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollOut()Z
    .locals 4

    const-wide/16 v2, 0x40

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWriteTextVertically()Z
    .locals 4

    const-wide/32 v2, 0x20000

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lcom/everyplay/external/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/everyplay/external/iso/BoxParser;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x26

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/everyplay/external/mp4parser/DataSource;->a(Ljava/nio/ByteBuffer;)I

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->dataReferenceIndex:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->h:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->i:I

    new-array v1, v8, [I

    iput-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v1, v6

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v1, v7

    new-instance v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    invoke-direct {v1}, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;-><init>()V

    iput-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->k:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->k:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->a:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->b:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->c:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->d:I

    new-instance v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    invoke-direct {v1}, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;-><init>()V

    iput-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->l:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    iget-object v1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->l:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->a:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->b:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->c:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->d:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->e:I

    new-array v2, v8, [I

    iput-object v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->f:[I

    iget-object v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->f:[I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v3

    aput v3, v2, v4

    iget-object v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->f:[I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v3

    aput v3, v2, v5

    iget-object v2, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->f:[I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v3

    aput v3, v2, v6

    iget-object v1, v1, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->f:[I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    aput v0, v1, v7

    const-wide/16 v0, 0x26

    sub-long v0, p3, v0

    invoke-virtual {p0, p1, v0, v1, p5}, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->initContainer(Lcom/everyplay/external/mp4parser/DataSource;JLcom/everyplay/external/iso/BoxParser;)V

    return-void
.end method

.method public setBackgroundColorRgba([I)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->j:[I

    return-void
.end method

.method public setBoxRecord(Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->k:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    return-void
.end method

.method public setContinuousKaraoke(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/16 v2, -0x801

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    goto :goto_0
.end method

.method public setFillTextRegion(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/32 v2, -0x40001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    goto :goto_0
.end method

.method public setHorizontalJustification(I)V
    .locals 0

    iput p1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->h:I

    return-void
.end method

.method public setScrollDirection(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/16 v2, 0x180

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/16 v2, -0x181

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    goto :goto_0
.end method

.method public setScrollIn(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    goto :goto_0
.end method

.method public setScrollOut(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/16 v2, -0x41

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    goto :goto_0
.end method

.method public setStyleRecord(Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->l:Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->type:Ljava/lang/String;

    return-void
.end method

.method public setVerticalJustification(I)V
    .locals 0

    iput p1, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->i:I

    return-void
.end method

.method public setWriteTextVertically(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    const-wide/32 v2, -0x20001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/TextSampleEntry;->a:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TextSampleEntry"

    return-object v0
.end method
