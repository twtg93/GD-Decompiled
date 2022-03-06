.class public Lsun/security/util/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# static fields
.field private static final BITS_PER_UNIT:I = 0x8

.field private static final BYTES_PER_LINE:I = 0x8

.field private static final NYBBLE:[[B


# instance fields
.field private length:I

.field private repn:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 221
    const/16 v0, 0x10

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/util/BitArray;->NYBBLE:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_6
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_7
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x31t
    .end array-data

    :array_8
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_9
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_a
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_b
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_c
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_d
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_e
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_f
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x31t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-gez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative length for BitArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput p1, p0, Lsun/security/util/BitArray;->length:I

    .line 65
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    .line 66
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "a"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-gez p1, :cond_0

    .line 79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Negative length for BitArray"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_0
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    if-ge v3, p1, :cond_1

    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Byte array too short to represent bit array of given length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_1
    iput p1, p0, Lsun/security/util/BitArray;->length:I

    .line 88
    add-int/lit8 v3, p1, 0x8

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v1, v3, 0x8

    .line 89
    .local v1, "repLength":I
    mul-int/lit8 v3, v1, 0x8

    sub-int v2, v3, p1

    .line 90
    .local v2, "unusedBits":I
    const/16 v3, 0xff

    shl-int/2addr v3, v2

    int-to-byte v0, v3

    .line 97
    .local v0, "bitMask":B
    new-array v3, v1, [B

    iput-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    .line 98
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    invoke-static {p2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    if-lez v1, :cond_2

    .line 100
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v3, v4

    and-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 102
    :cond_2
    return-void
.end method

.method private constructor <init>(Lsun/security/util/BitArray;)V
    .locals 1
    .param p1, "ba"    # Lsun/security/util/BitArray;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iget v0, p1, Lsun/security/util/BitArray;->length:I

    iput v0, p0, Lsun/security/util/BitArray;->length:I

    .line 123
    iget-object v0, p1, Lsun/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    .line 124
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 2
    .param p1, "bits"    # [Z

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    array-length v1, p1

    iput v1, p0, Lsun/security/util/BitArray;->length:I

    .line 110
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/util/BitArray;->repn:[B

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    if-ge v0, v1, :cond_0

    .line 113
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lsun/security/util/BitArray;->set(IZ)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method private static position(I)I
    .locals 2
    .param p0, "idx"    # I

    .prologue
    .line 52
    const/4 v0, 0x1

    rem-int/lit8 v1, p0, 0x8

    rsub-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    return v0
.end method

.method private static subscript(I)I
    .locals 1
    .param p0, "idx"    # I

    .prologue
    .line 48
    div-int/lit8 v0, p0, 0x8

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, p0}, Lsun/security/util/BitArray;-><init>(Lsun/security/util/BitArray;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    if-ne p1, p0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v2

    .line 177
    :cond_1
    if-eqz p1, :cond_2

    instance-of v4, p1, Lsun/security/util/BitArray;

    if-nez v4, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 179
    check-cast v0, Lsun/security/util/BitArray;

    .line 181
    .local v0, "ba":Lsun/security/util/BitArray;
    iget v4, v0, Lsun/security/util/BitArray;->length:I

    iget v5, p0, Lsun/security/util/BitArray;->length:I

    if-eq v4, v5, :cond_4

    move v2, v3

    goto :goto_0

    .line 183
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 184
    iget-object v4, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v4, v4, v1

    iget-object v5, v0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v5, v5, v1

    if-eq v4, v5, :cond_5

    move v2, v3

    goto :goto_0

    .line 183
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public get(I)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 130
    if-ltz p1, :cond_0

    iget v0, p0, Lsun/security/util/BitArray;->length:I

    if-lt p1, v0, :cond_1

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    invoke-static {p1}, Lsun/security/util/BitArray;->subscript(I)I

    move-result v1

    aget-byte v0, v0, v1

    invoke-static {p1}, Lsun/security/util/BitArray;->position(I)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 210
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    xor-int/2addr v2, v0

    return v2
.end method

.method public length()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    return v0
.end method

.method public set(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 142
    if-ltz p1, :cond_0

    iget v2, p0, Lsun/security/util/BitArray;->length:I

    if-lt p1, v2, :cond_1

    .line 143
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_1
    invoke-static {p1}, Lsun/security/util/BitArray;->subscript(I)I

    move-result v1

    .line 146
    .local v1, "idx":I
    invoke-static {p1}, Lsun/security/util/BitArray;->position(I)I

    move-result v0

    .line 148
    .local v0, "bit":I
    if-eqz p2, :cond_2

    .line 149
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v2, v1

    or-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_2
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v2, v1

    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_0
.end method

.method public toBooleanArray()[Z
    .locals 3

    .prologue
    .line 193
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    new-array v0, v2, [Z

    .line 195
    .local v0, "bits":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    if-ge v1, v2, :cond_0

    .line 196
    invoke-virtual {p0, v1}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 246
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 249
    sget-object v2, Lsun/security/util/BitArray;->NYBBLE:[[B

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v3, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 250
    sget-object v2, Lsun/security/util/BitArray;->NYBBLE:[[B

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 252
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 253
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 260
    :cond_1
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v0, v2, 0x8

    :goto_2
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    if-ge v0, v2, :cond_3

    .line 261
    invoke-virtual {p0, v0}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x31

    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 261
    :cond_2
    const/16 v2, 0x30

    goto :goto_3

    .line 264
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public truncate()Lsun/security/util/BitArray;
    .locals 5

    .prologue
    .line 272
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 273
    invoke-virtual {p0, v0}, Lsun/security/util/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    new-instance v1, Lsun/security/util/BitArray;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    add-int/lit8 v4, v0, 0x8

    div-int/lit8 v4, v4, 0x8

    invoke-static {v3, v4}, Lsys/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 277
    :goto_1
    return-object v1

    .line 272
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 277
    :cond_1
    new-instance v1, Lsun/security/util/BitArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>(I)V

    goto :goto_1
.end method
