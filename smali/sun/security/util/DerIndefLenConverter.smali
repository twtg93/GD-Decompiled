.class Lsun/security/util/DerIndefLenConverter;
.super Ljava/lang/Object;
.source "DerIndefLenConverter.java"


# static fields
.field private static final CLASS_MASK:I = 0xc0

.field private static final FORM_MASK:I = 0x20

.field private static final LEN_LONG:I = 0x80

.field private static final LEN_MASK:I = 0x7f

.field private static final SKIP_EOC_BYTES:I = 0x2

.field private static final TAG_MASK:I = 0x1f


# instance fields
.field private data:[B

.field private dataPos:I

.field private dataSize:I

.field private index:I

.field private ndefsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private newData:[B

.field private newDataPos:I

.field private numOfTotalLenBytes:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    .line 72
    return-void
.end method

.method private getLengthBytes(I)[B
    .locals 4
    .param p1, "curLen"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "index":I
    const/16 v3, 0x80

    if-ge p1, v3, :cond_0

    .line 229
    const/4 v3, 0x1

    new-array v2, v3, [B

    .line 230
    .local v2, "lenBytes":[B
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    int-to-byte v3, p1

    aput-byte v3, v2, v0

    move v0, v1

    .line 259
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :goto_0
    return-object v2

    .line 232
    .end local v2    # "lenBytes":[B
    :cond_0
    const/16 v3, 0x100

    if-ge p1, v3, :cond_1

    .line 233
    const/4 v3, 0x2

    new-array v2, v3, [B

    .line 234
    .restart local v2    # "lenBytes":[B
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    const/16 v3, -0x7f

    aput-byte v3, v2, v0

    .line 235
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v2, v1

    goto :goto_0

    .line 237
    .end local v2    # "lenBytes":[B
    :cond_1
    const/high16 v3, 0x10000

    if-ge p1, v3, :cond_2

    .line 238
    const/4 v3, 0x3

    new-array v2, v3, [B

    .line 239
    .restart local v2    # "lenBytes":[B
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    const/16 v3, -0x7e

    aput-byte v3, v2, v0

    .line 240
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 241
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v2, v0

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    .line 243
    .end local v2    # "lenBytes":[B
    :cond_2
    const/high16 v3, 0x1000000

    if-ge p1, v3, :cond_3

    .line 244
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 245
    .restart local v2    # "lenBytes":[B
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    const/16 v3, -0x7d

    aput-byte v3, v2, v0

    .line 246
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 247
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 248
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v2, v1

    goto :goto_0

    .line 251
    .end local v2    # "lenBytes":[B
    :cond_3
    const/4 v3, 0x5

    new-array v2, v3, [B

    .line 252
    .restart local v2    # "lenBytes":[B
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    const/16 v3, -0x7c

    aput-byte v3, v2, v0

    .line 253
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 254
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 255
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 256
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v2, v0

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0
.end method

.method private getNumOfLenBytes(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "numOfLenBytes":I
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 268
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    .line 269
    :cond_0
    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    .line 270
    const/4 v0, 0x2

    goto :goto_0

    .line 271
    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_2

    .line 272
    const/4 v0, 0x3

    goto :goto_0

    .line 273
    :cond_2
    const/high16 v1, 0x1000000

    if-ge p1, v1, :cond_3

    .line 274
    const/4 v0, 0x4

    goto :goto_0

    .line 276
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private isEOC(I)Z
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 59
    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_0

    and-int/lit16 v0, p1, 0xc0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isIndefinite(I)Z
    .locals 1
    .param p0, "lengthByte"    # I

    .prologue
    .line 84
    invoke-static {p0}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x7f

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLongForm(I)Z
    .locals 2
    .param p0, "lengthByte"    # I

    .prologue
    .line 66
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseLength()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "curLen":I
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v4, v5, :cond_0

    move v1, v0

    .line 165
    .end local v0    # "curLen":I
    .local v1, "curLen":I
    :goto_0
    return v1

    .line 149
    .end local v1    # "curLen":I
    .restart local v0    # "curLen":I
    :cond_0
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 150
    .local v3, "lenByte":I
    invoke-static {v3}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 152
    .end local v0    # "curLen":I
    .restart local v1    # "curLen":I
    goto :goto_0

    .line 154
    .end local v1    # "curLen":I
    .restart local v0    # "curLen":I
    :cond_1
    invoke-static {v3}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    and-int/lit8 v3, v3, 0x7f

    .line 156
    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 157
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Too much data"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    :cond_2
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    if-ge v4, v5, :cond_3

    .line 159
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Too little data"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 161
    shl-int/lit8 v4, v0, 0x8

    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int v0, v4, v5

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    .end local v2    # "i":I
    :cond_4
    and-int/lit8 v0, v3, 0x7f

    :cond_5
    move v1, v0

    .line 165
    .end local v0    # "curLen":I
    .restart local v1    # "curLen":I
    goto :goto_0
.end method

.method private parseTag()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v5, v6, :cond_0

    .line 124
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v5, v5, v6

    invoke-direct {p0, v5}, Lsun/security/util/DerIndefLenConverter;->isEOC(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    if-nez v5, :cond_3

    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "numOfEncapsulatedLenBytes":I
    const/4 v0, 0x0

    .line 98
    .local v0, "elem":Ljava/lang/Object;
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .end local v0    # "elem":Ljava/lang/Object;
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_4

    .line 101
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .restart local v0    # "elem":Ljava/lang/Object;
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    move-object v5, v0

    .line 108
    .end local v0    # "elem":Ljava/lang/Object;
    :goto_2
    if-gez v1, :cond_2

    .line 109
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "EOC does not have matching indefinite-length tag"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_1
    move-object v5, v0

    .line 105
    check-cast v5, [B

    check-cast v5, [B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x3

    add-int/2addr v2, v5

    .line 98
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 112
    .end local v0    # "elem":Ljava/lang/Object;
    :cond_2
    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, v6, v5

    add-int v3, v5, v2

    .line 114
    .local v3, "sectionLen":I
    invoke-direct {p0, v3}, Lsun/security/util/DerIndefLenConverter;->getLengthBytes(I)[B

    move-result-object v4

    .line 115
    .local v4, "sectionLenBytes":[B
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    array-length v6, v4

    add-int/lit8 v6, v6, -0x3

    add-int/2addr v5, v6

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    .line 123
    .end local v1    # "index":I
    .end local v2    # "numOfEncapsulatedLenBytes":I
    .end local v3    # "sectionLen":I
    .end local v4    # "sectionLenBytes":[B
    :cond_3
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    goto :goto_0

    .restart local v1    # "index":I
    .restart local v2    # "numOfEncapsulatedLenBytes":I
    :cond_4
    move-object v5, v0

    goto :goto_2
.end method

.method private parseValue(I)V
    .locals 1
    .param p1, "curLen"    # I

    .prologue
    .line 285
    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    .line 286
    return-void
.end method

.method private writeLength(I)V
    .locals 3
    .param p1, "curLen"    # I

    .prologue
    .line 197
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 222
    :goto_0
    return-void

    .line 200
    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    .line 201
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    .line 202
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0

    .line 204
    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    .line 205
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    .line 206
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 207
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0

    .line 209
    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    .line 210
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    .line 211
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 212
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 213
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    .line 217
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 218
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 219
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 220
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method

.method private writeLengthAndValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v4, v5, :cond_0

    .line 194
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, "curLen":I
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 179
    .local v2, "lenByte":I
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v3, v4

    check-cast v3, [B

    .line 181
    .local v3, "lenBytes":[B
    const/4 v4, 0x0

    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v7, v3

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v5, v3

    add-int/2addr v4, v5

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    goto :goto_0

    .line 186
    .end local v3    # "lenBytes":[B
    :cond_1
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    and-int/lit8 v2, v2, 0x7f

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 189
    shl-int/lit8 v4, v0, 0x8

    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int v0, v4, v5

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    .end local v1    # "i":I
    :cond_2
    and-int/lit8 v0, v2, 0x7f

    .line 192
    :cond_3
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->writeLength(I)V

    .line 193
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->writeValue(I)V

    goto :goto_0
.end method

.method private writeTag()V
    .locals 4

    .prologue
    .line 131
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v1, v2, :cond_0

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v0, v1, v2

    .line 134
    .local v0, "tag":I
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->isEOC(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v1, v1, v2

    if-nez v1, :cond_1

    .line 135
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    .line 136
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeTag()V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method private writeValue(I)V
    .locals 6
    .param p1, "curLen"    # I

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 293
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method convert([B)[B
    .locals 4
    .param p1, "indefData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 307
    iput-object p1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    .line 308
    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    .line 309
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    array-length v1, v1

    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    .line 310
    const/4 v0, 0x0

    .line 313
    .local v0, "len":I
    :goto_0
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ge v1, v2, :cond_0

    .line 314
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->parseTag()V

    .line 315
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->parseLength()I

    move-result v0

    .line 316
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->parseValue(I)V

    goto :goto_0

    .line 319
    :cond_0
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    .line 320
    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    .line 324
    :goto_1
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ge v1, v2, :cond_1

    .line 325
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeTag()V

    .line 326
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeLengthAndValue()V

    goto :goto_1

    .line 329
    :cond_1
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    return-object v1
.end method
