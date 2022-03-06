.class public Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;
.super Lcom/everyplay/external/iso/boxes/sampleentry/AbstractSampleEntry;


# static fields
.field public static final TYPE:Ljava/lang/String; = "text"


# instance fields
.field a:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:J

.field m:J

.field n:S

.field o:S

.field p:B

.field q:S

.field r:I

.field s:I

.field t:I

.field u:Ljava/lang/String;

.field v:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const v1, 0xffff

    const-string v0, "text"

    invoke-direct {p0, v0}, Lcom/everyplay/external/iso/boxes/sampleentry/AbstractSampleEntry;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->r:I

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->s:I

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->t:I

    const-string v0, ""

    iput-object v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addBox(Lcom/everyplay/external/iso/boxes/Box;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "QuicktimeTextSampleEntries may not have child boxes"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBackgroundB()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->k:I

    return v0
.end method

.method public getBackgroundG()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->j:I

    return v0
.end method

.method public getBackgroundR()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->i:I

    return v0
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 4

    invoke-virtual {p0}, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x34

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->v:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->a:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->h:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->i:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->j:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->k:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget-wide v2, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->l:J

    invoke-static {v0, v2, v3}, Lcom/everyplay/external/iso/IsoTypeWriter;->a(Ljava/nio/ByteBuffer;J)V

    iget-wide v2, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->m:J

    invoke-static {v0, v2, v3}, Lcom/everyplay/external/iso/IsoTypeWriter;->a(Ljava/nio/ByteBuffer;J)V

    iget-short v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->n:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->o:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->p:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->q:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->r:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->s:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->t:I

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultTextBox()J
    .locals 2

    iget-wide v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->l:J

    return-wide v0
.end method

.method public getDisplayFlags()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->a:I

    return v0
.end method

.method public getFontFace()S
    .locals 1

    iget-short v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->o:S

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getFontNumber()S
    .locals 1

    iget-short v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->n:S

    return v0
.end method

.method public getForegroundB()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->t:I

    return v0
.end method

.method public getForegroundG()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->s:I

    return v0
.end method

.method public getForegroundR()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->r:I

    return v0
.end method

.method public getReserved1()J
    .locals 2

    iget-wide v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->m:J

    return-wide v0
.end method

.method public getReserved2()B
    .locals 1

    iget-byte v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->p:B

    return v0
.end method

.method public getReserved3()S
    .locals 1

    iget-short v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->q:S

    return v0
.end method

.method public getSize()J
    .locals 6

    invoke-virtual {p0}, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->getContainerSize()J

    move-result-wide v0

    const-wide/16 v2, 0x34

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    add-long/2addr v2, v0

    iget-boolean v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->largeBox:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x8

    add-long/2addr v0, v2

    const-wide v4, 0x100000000L

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    :cond_0
    const/16 v0, 0x10

    :goto_1
    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public getTextJustification()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->h:I

    return v0
.end method

.method public parse(Lcom/everyplay/external/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/everyplay/external/iso/BoxParser;)V
    .locals 5

    invoke-static {p3, p4}, Lcom/everyplay/external/mp4parser/util/CastUtils;->a(J)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/everyplay/external/mp4parser/DataSource;->a(Ljava/nio/ByteBuffer;)I

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->v:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->a:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->h:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->i:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->j:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->k:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->l:J

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->m:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->n:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->o:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->p:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->q:S

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->r:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->s:I

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->t:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBackgroundB(I)V
    .locals 0

    iput p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->k:I

    return-void
.end method

.method public setBackgroundG(I)V
    .locals 0

    iput p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->j:I

    return-void
.end method

.method public setBackgroundR(I)V
    .locals 0

    iput p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->i:I

    return-void
.end method

.method public setBoxes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everyplay/external/iso/boxes/Box;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "QuicktimeTextSampleEntries may not have child boxes"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultTextBox(J)V
    .locals 1

    iput-wide p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->l:J

    return-void
.end method

.method public setDisplayFlags(I)V
    .locals 0

    iput p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->a:I

    return-void
.end method

.method public setFontFace(S)V
    .locals 0

    iput-short p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->o:S

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->u:Ljava/lang/String;

    return-void
.end method

.method public setFontNumber(S)V
    .locals 0

    iput-short p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->n:S

    return-void
.end method

.method public setForegroundB(I)V
    .locals 0

    iput p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->t:I

    return-void
.end method

.method public setForegroundG(I)V
    .locals 0

    iput p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->s:I

    return-void
.end method

.method public setForegroundR(I)V
    .locals 0

    iput p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->r:I

    return-void
.end method

.method public setReserved1(J)V
    .locals 1

    iput-wide p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->m:J

    return-void
.end method

.method public setReserved2(B)V
    .locals 0

    iput-byte p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->p:B

    return-void
.end method

.method public setReserved3(S)V
    .locals 0

    iput-short p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->q:S

    return-void
.end method

.method public setTextJustification(I)V
    .locals 0

    iput p1, p0, Lcom/everyplay/external/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->h:I

    return-void
.end method
