.class public Lsun/security/util/DerInputStream;
.super Ljava/lang/Object;
.source "DerInputStream.java"


# instance fields
.field buffer:Lsun/security/util/DerInputBuffer;

.field public tag:B


# direct methods
.method constructor <init>(Lsun/security/util/DerInputBuffer;)V
    .locals 2
    .param p1, "buf"    # Lsun/security/util/DerInputBuffer;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    .line 118
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->mark(I)V

    .line 119
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lsun/security/util/DerInputStream;->init([BII)V

    .line 80
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lsun/security/util/DerInputStream;->init([BII)V

    .line 95
    return-void
.end method

.method static getLength(ILjava/io/InputStream;)I
    .locals 5
    .param p0, "lenByte"    # I
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    move v0, p0

    .line 548
    .local v0, "tmp":I
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_1

    .line 549
    move v1, v0

    .line 569
    :cond_0
    :goto_0
    return v1

    .line 551
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 557
    if-nez v0, :cond_2

    .line 558
    const/4 v1, -0x1

    goto :goto_0

    .line 559
    :cond_2
    if-ltz v0, :cond_3

    const/4 v2, 0x4

    if-le v0, v2, :cond_5

    .line 560
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DerInputStream.getLength(): lengthTag="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-gez v0, :cond_4

    const-string/jumbo v2, "incorrect DER encoding."

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string/jumbo v2, "too big."

    goto :goto_1

    .line 564
    :cond_5
    const/4 v1, 0x0

    .local v1, "value":I
    :goto_2
    if-lez v0, :cond_0

    .line 565
    shl-int/lit8 v1, v1, 0x8

    .line 566
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 564
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method static getLength(Ljava/io/InputStream;)I
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p0}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private init([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    add-int/lit8 v2, p2, 0x2

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 102
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Encoding bytes too short"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_1
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    new-array v1, p3, [B

    .line 107
    .local v1, "inData":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    new-instance v0, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v0}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 110
    .local v0, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v2, Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, v1}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    .line 113
    .end local v0    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v1    # "inData":[B
    :goto_0
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lsun/security/util/DerInputBuffer;->mark(I)V

    .line 114
    return-void

    .line 112
    :cond_2
    new-instance v2, Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, p1, p2, p3}, Lsun/security/util/DerInputBuffer;-><init>([BII)V

    iput-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    goto :goto_0
.end method

.method private readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "stringTag"    # B
    .param p2, "stringName"    # Ljava/lang/String;
    .param p3, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 479
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DER input not a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_0
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    .line 483
    .local v0, "length":I
    new-array v1, v0, [B

    .line 484
    .local v1, "retval":[B
    if-eqz v0, :cond_1

    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2, v1}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 485
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "short read of DER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    return v0
.end method

.method public getBMPString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    const/16 v0, 0x1e

    const-string/jumbo v1, "BMP"

    const-string/jumbo v2, "UnicodeBigUnmarked"

    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 179
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBitString()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 216
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input not an bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getBitString(I)[B

    move-result-object v0

    return-object v0
.end method

.method getByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getBytes([B)V
    .locals 2
    .param p1, "val"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 264
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "short read of DER octet string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    return-void
.end method

.method public getDerValue()Lsun/security/util/DerValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v0
.end method

.method public getEnumerated()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 205
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, Enumerated tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getGeneralString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    const/16 v0, 0x1b

    const-string/jumbo v1, "General"

    const-string/jumbo v2, "ASCII"

    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralizedTime()Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 505
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, GeneralizedTime tag invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getGeneralizedTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getIA5String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    const/16 v0, 0x16

    const-string/jumbo v1, "IA5"

    const-string/jumbo v2, "ASCII"

    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteger()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0
.end method

.method getLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public getNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "getNull, bad data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    return-void
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/DerInputStream;)V

    return-object v0
.end method

.method public getOctetString()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 249
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "DER input not an octet string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_0
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    .line 252
    .local v0, "length":I
    new-array v1, v0, [B

    .line 253
    .local v1, "retval":[B
    if-eqz v0, :cond_1

    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2, v1}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 254
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "short read of DER octet string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_1
    return-object v1
.end method

.method public getPositiveBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 193
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrintableString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    const/16 v0, 0x13

    const-string/jumbo v1, "Printable"

    const-string/jumbo v2, "ASCII"

    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSequence(I)[Lsun/security/util/DerValue;
    .locals 2
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    .line 295
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 296
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Sequence tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputStream;->readVector(I)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public getSet(I)[Lsun/security/util/DerValue;
    .locals 2
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    .line 312
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    .line 313
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Set tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputStream;->readVector(I)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public getSet(IZ)[Lsun/security/util/DerValue;
    .locals 2
    .param p1, "startLen"    # I
    .param p2, "implicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    .line 331
    if-nez p2, :cond_0

    .line 332
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    .line 333
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Set tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputStream;->readVector(I)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public getT61String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    const/16 v0, 0x14

    const-string/jumbo v1, "T61"

    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTCTime()Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 496
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, UTCtime tag invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getUTCTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUTF8String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    const/16 v0, 0xc

    const-string/jumbo v1, "UTF-8"

    const-string/jumbo v2, "UTF8"

    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnalignedBitString()Lsun/security/util/BitArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v3, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 227
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "DER input not a bit string"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_0
    iget-object v3, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v3}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 235
    .local v0, "length":I
    mul-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v4}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v4

    sub-int v2, v3, v4

    .line 237
    .local v2, "validBits":I
    new-array v1, v0, [B

    .line 239
    .local v1, "repn":[B
    if-eqz v0, :cond_1

    iget-object v3, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v3, v1}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 240
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "short read of DER bit string"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_1
    new-instance v3, Lsun/security/util/BitArray;

    invoke-direct {v3, v2, v1}, Lsun/security/util/BitArray;-><init>(I[B)V

    return-object v3
.end method

.method public mark(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->mark(I)V

    return-void
.end method

.method public peekByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->peek()I

    move-result v0

    return v0
.end method

.method protected readVector(I)[Lsun/security/util/DerValue;
    .locals 16
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v14}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v14

    int-to-byte v6, v14

    .line 348
    .local v6, "lenByte":B
    and-int/lit16 v14, v6, 0xff

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v14, v15}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v5

    .line 350
    .local v5, "len":I
    const/4 v14, -0x1

    if-ne v5, v14, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v14}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v10

    .line 353
    .local v10, "readLen":I
    const/4 v9, 0x2

    .line 354
    .local v9, "offset":I
    add-int v14, v10, v9

    new-array v4, v14, [B

    .line 355
    .local v4, "indefData":[B
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-byte v15, v0, Lsun/security/util/DerInputStream;->tag:B

    aput-byte v15, v4, v14

    .line 356
    const/4 v14, 0x1

    aput-byte v6, v4, v14

    .line 357
    new-instance v2, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 358
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2, v4, v9, v10}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 359
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 360
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 361
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v14, Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1, v4}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v15

    invoke-direct {v14, v15}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    .line 362
    move-object/from16 v0, p0

    iget-byte v14, v0, Lsun/security/util/DerInputStream;->tag:B

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v15}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v15

    if-eq v14, v15, :cond_0

    .line 363
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "Indefinite length encoding not supported"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 365
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v14}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v5

    .line 368
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "indefData":[B
    .end local v9    # "offset":I
    .end local v10    # "readLen":I
    :cond_1
    if-nez v5, :cond_3

    .line 371
    const/4 v14, 0x0

    new-array v11, v14, [Lsun/security/util/DerValue;

    .line 405
    :cond_2
    return-object v11

    .line 377
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v14}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v14

    if-ne v14, v5, :cond_5

    .line 378
    move-object/from16 v8, p0

    .line 385
    .local v8, "newstr":Lsun/security/util/DerInputStream;
    :goto_0
    new-instance v13, Ljava/util/Vector;

    move/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/util/Vector;-><init>(I)V

    .line 389
    .local v13, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/DerValue;>;"
    :cond_4
    new-instance v12, Lsun/security/util/DerValue;

    iget-object v14, v8, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v12, v14}, Lsun/security/util/DerValue;-><init>(Lsun/security/util/DerInputBuffer;)V

    .line 390
    .local v12, "value":Lsun/security/util/DerValue;
    invoke-virtual {v13, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 391
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->available()I

    move-result v14

    if-gtz v14, :cond_4

    .line 393
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->available()I

    move-result v14

    if-eqz v14, :cond_6

    .line 394
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "extra data at end of vector"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 380
    .end local v8    # "newstr":Lsun/security/util/DerInputStream;
    .end local v12    # "value":Lsun/security/util/DerValue;
    .end local v13    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/DerValue;>;"
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lsun/security/util/DerInputStream;->subStream(IZ)Lsun/security/util/DerInputStream;

    move-result-object v8

    .restart local v8    # "newstr":Lsun/security/util/DerInputStream;
    goto :goto_0

    .line 399
    .restart local v12    # "value":Lsun/security/util/DerValue;
    .restart local v13    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/DerValue;>;"
    :cond_6
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v7

    .line 400
    .local v7, "max":I
    new-array v11, v7, [Lsun/security/util/DerValue;

    .line 402
    .local v11, "retval":[Lsun/security/util/DerValue;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 403
    invoke-virtual {v13, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lsun/security/util/DerValue;

    aput-object v14, v11, v3

    .line 402
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->reset()V

    return-void
.end method

.method public subStream(IZ)Lsun/security/util/DerInputStream;
    .locals 4
    .param p1, "len"    # I
    .param p2, "do_skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v0

    .line 135
    .local v0, "newbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 136
    if-eqz p2, :cond_0

    .line 137
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 139
    :cond_0
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v1
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
