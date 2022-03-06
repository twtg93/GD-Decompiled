.class public final Lsun/security/util/BigInt;
.super Ljava/lang/Object;
.source "BigInt.java"


# static fields
.field private static final digits:Ljava/lang/String; = "0123456789abcdef"


# instance fields
.field private places:[B


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 86
    new-array v0, v3, [B

    iput-object v0, p0, Lsun/security/util/BigInt;->places:[B

    .line 87
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 104
    :goto_0
    return-void

    .line 88
    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 89
    new-array v0, v4, [B

    iput-object v0, p0, Lsun/security/util/BigInt;->places:[B

    .line 90
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 91
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    goto :goto_0

    .line 92
    :cond_1
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_2

    .line 93
    new-array v0, v5, [B

    iput-object v0, p0, Lsun/security/util/BigInt;->places:[B

    .line 94
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 95
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 96
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v4

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/util/BigInt;->places:[B

    .line 99
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 100
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 101
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 102
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v5

    goto :goto_0
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 5
    .param p1, "i"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 65
    .local v1, "temp":[B
    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "negative BigInteger"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_0
    aget-byte v2, v1, v3

    if-eqz v2, :cond_2

    .line 71
    iput-object v1, p0, Lsun/security/util/BigInt;->places:[B

    .line 77
    :cond_1
    return-void

    .line 73
    :cond_2
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [B

    iput-object v2, p0, Lsun/security/util/BigInt;->places:[B

    .line 74
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 75
    iget-object v2, p0, Lsun/security/util/BigInt;->places:[B

    add-int/lit8 v3, v0, -0x1

    aget-byte v4, v1, v0

    aput-byte v4, v2, v3

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/util/BigInt;->places:[B

    return-void
.end method

.method private hexify()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    iget-object v2, p0, Lsun/security/util/BigInt;->places:[B

    array-length v2, v2

    if-nez v2, :cond_0

    .line 144
    const-string/jumbo v2, "  0  "

    .line 157
    :goto_0
    return-object v2

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lsun/security/util/BigInt;->places:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 147
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lsun/security/util/BigInt;->places:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 149
    const-string/jumbo v2, "0123456789abcdef"

    iget-object v3, p0, Lsun/security/util/BigInt;->places:[B

    aget-byte v3, v3, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    const-string/jumbo v2, "0123456789abcdef"

    iget-object v3, p0, Lsun/security/util/BigInt;->places:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_2

    .line 152
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lsun/security/util/BigInt;->places:[B

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 153
    const-string/jumbo v2, "\n    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_2
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    .line 155
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 157
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 167
    instance-of v0, p1, Lsun/security/util/BigInt;

    if-eqz v0, :cond_0

    .line 168
    check-cast p1, Lsun/security/util/BigInt;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/util/BigInt;->equals(Lsun/security/util/BigInt;)Z

    move-result v0

    .line 169
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lsun/security/util/BigInt;)Z
    .locals 6
    .param p1, "other"    # Lsun/security/util/BigInt;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    if-ne p0, p1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    invoke-virtual {p1}, Lsun/security/util/BigInt;->toByteArray()[B

    move-result-object v1

    .line 182
    .local v1, "otherPlaces":[B
    iget-object v4, p0, Lsun/security/util/BigInt;->places:[B

    array-length v4, v4

    array-length v5, v1

    if-eq v4, v5, :cond_2

    move v2, v3

    .line 183
    goto :goto_0

    .line 184
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lsun/security/util/BigInt;->places:[B

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 185
    iget-object v4, p0, Lsun/security/util/BigInt;->places:[B

    aget-byte v4, v4, v0

    aget-byte v5, v1, v0

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 186
    goto :goto_0

    .line 184
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lsun/security/util/BigInt;->hexify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lsun/security/util/BigInt;->places:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lsun/security/util/BigInt;->places:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toInt()I
    .locals 4

    .prologue
    .line 112
    iget-object v2, p0, Lsun/security/util/BigInt;->places:[B

    array-length v2, v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 113
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "BigInt.toLong, too big"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    const/4 v1, 0x0

    .local v1, "retval":I
    const/4 v0, 0x0

    .line 115
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/BigInt;->places:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 116
    shl-int/lit8 v2, v1, 0x8

    iget-object v3, p0, Lsun/security/util/BigInt;->places:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    add-int v1, v2, v3

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lsun/security/util/BigInt;->hexify()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
