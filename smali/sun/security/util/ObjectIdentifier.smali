.class public final Lsun/security/util/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final allocationQuantum:I = 0x5

.field private static final maxFirstComponent:I = 0x2

.field private static final maxSecondComponent:I = 0x27

.field private static final serialVersionUID:J = 0x78b20eec64177f2eL


# instance fields
.field private componentLen:I

.field private components:[I

.field private volatile transient stringForm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x2e

    .line 68
    .local v0, "ch":I
    const/4 v6, 0x0

    .line 69
    .local v6, "start":I
    const/4 v3, 0x0

    .line 72
    .local v3, "end":I
    const/4 v7, 0x0

    iput v7, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 73
    :goto_0
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v9, :cond_0

    .line 74
    add-int/lit8 v6, v3, 0x1

    .line 75
    iget v7, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    goto :goto_0

    .line 77
    :cond_0
    iget v7, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 78
    iget v7, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    new-array v7, v7, [I

    iput-object v7, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, "i":I
    const/4 v1, 0x0

    .local v1, "comp":Ljava/lang/String;
    move v5, v4

    .line 84
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v9, :cond_1

    .line 85
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v7, p0, Lsun/security/util/ObjectIdentifier;->components:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    add-int/lit8 v6, v3, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 89
    :cond_1
    :try_start_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v7, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    iget-object v7, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    iget v8, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    invoke-direct {p0, v7, v8}, Lsun/security/util/ObjectIdentifier;->checkValidOid([II)V

    .line 96
    iput-object p1, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 97
    return-void

    .line 91
    :catch_0
    move-exception v2

    move v4, v5

    .line 92
    .end local v5    # "i":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    :goto_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ObjectIdentifier() -- Invalid format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 93
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method constructor <init>(Lsun/security/util/DerInputBuffer;)V
    .locals 2
    .param p1, "buf"    # Lsun/security/util/DerInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsun/security/util/ObjectIdentifier;->initFromEncoding(Lsun/security/util/DerInputStream;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 5
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getByte()I

    move-result v2

    int-to-byte v1, v2

    .line 172
    .local v1, "type_id":B
    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 173
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ObjectIdentifier() -- data isn\'t an object ID (tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getLength()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    .line 179
    .local v0, "bufferEnd":I
    if-gez v0, :cond_1

    .line 180
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "ObjectIdentifier() -- not enough data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_1
    invoke-direct {p0, p1, v0}, Lsun/security/util/ObjectIdentifier;->initFromEncoding(Lsun/security/util/DerInputStream;I)V

    .line 184
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lsun/security/util/ObjectIdentifier;->checkValidOid([II)V

    .line 141
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    .line 142
    array-length v0, p1

    iput v0, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 143
    return-void
.end method

.method private constructor <init>([IZ)V
    .locals 1
    .param p1, "components"    # [I
    .param p2, "dummy"    # Z

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    .line 201
    array-length v0, p1

    iput v0, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 202
    return-void
.end method

.method private checkValidOid([II)V
    .locals 4
    .param p1, "values"    # [I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 112
    if-eqz p1, :cond_0

    if-ge p2, v2, :cond_1

    .line 113
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "ObjectIdentifier() -- Must be at least two oid components "

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 118
    aget v1, p1, v0

    if-gez v1, :cond_2

    .line 119
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ObjectIdentifier() -- oid component #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must be non-negative "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_3
    aget v1, p1, v3

    if-le v1, v2, :cond_4

    .line 125
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_4
    aget v1, p1, v3

    if-ge v1, v2, :cond_5

    const/4 v1, 0x1

    aget v1, p1, v1

    const/16 v2, 0x27

    if-le v1, v2, :cond_5

    .line 130
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_5
    return-void
.end method

.method private static getComponent(Lsun/security/util/DerInputStream;)I
    .locals 5
    .param p0, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "retval":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 325
    shl-int/lit8 v1, v1, 0x7

    .line 326
    invoke-virtual {p0}, Lsun/security/util/DerInputStream;->getByte()I

    move-result v2

    .line 327
    .local v2, "tmp":I
    if-nez v0, :cond_0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 328
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "ObjectIdentifier() -- sub component starts with 0x80"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    :cond_0
    and-int/lit8 v3, v2, 0x7f

    or-int/2addr v1, v3

    .line 332
    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_1

    .line 333
    return v1

    .line 324
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v2    # "tmp":I
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "ObjectIdentifier() -- component value too big"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private initFromEncoding(Lsun/security/util/DerInputStream;I)V
    .locals 9
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .param p2, "bufferEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 225
    const/4 v3, 0x1

    .line 227
    .local v3, "first_subid":Z
    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    iput v8, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 228
    :goto_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v5

    if-le v5, p2, :cond_5

    .line 230
    invoke-static {p1}, Lsun/security/util/ObjectIdentifier;->getComponent(Lsun/security/util/DerInputStream;)I

    move-result v2

    .line 231
    .local v2, "component":I
    if-gez v2, :cond_0

    .line 232
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "ObjectIdentifier() -- component values must be nonnegative"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 236
    :cond_0
    if-eqz v3, :cond_3

    .line 243
    const/16 v5, 0x28

    if-ge v2, v5, :cond_1

    .line 244
    const/4 v0, 0x0

    .line 249
    .local v0, "X":I
    :goto_1
    mul-int/lit8 v5, v0, 0x28

    sub-int v1, v2, v5

    .line 250
    .local v1, "Y":I
    iget-object v5, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aput v0, v5, v8

    .line 251
    iget-object v5, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    const/4 v6, 0x1

    aput v1, v5, v6

    .line 252
    const/4 v5, 0x2

    iput v5, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 254
    const/4 v3, 0x0

    .line 256
    goto :goto_0

    .line 245
    .end local v0    # "X":I
    .end local v1    # "Y":I
    :cond_1
    const/16 v5, 0x50

    if-ge v2, v5, :cond_2

    .line 246
    const/4 v0, 0x1

    .restart local v0    # "X":I
    goto :goto_1

    .line 248
    .end local v0    # "X":I
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "X":I
    goto :goto_1

    .line 262
    .end local v0    # "X":I
    :cond_3
    iget v5, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    iget-object v6, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    .line 265
    iget-object v5, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x5

    new-array v4, v5, [I

    .line 267
    .local v4, "tmp_components":[I
    iget-object v5, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    iget-object v6, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    array-length v6, v6

    invoke-static {v5, v8, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iput-object v4, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    .line 271
    .end local v4    # "tmp_components":[I
    :cond_4
    iget-object v5, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    iget v6, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    aput v2, v5, v6

    goto :goto_0

    .line 275
    .end local v2    # "component":I
    :cond_5
    iget-object v5, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    iget v6, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    invoke-direct {p0, v5, v6}, Lsun/security/util/ObjectIdentifier;->checkValidOid([II)V

    .line 281
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v5

    if-eq v5, p2, :cond_6

    .line 282
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "ObjectIdentifier() -- malformed input data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 285
    :cond_6
    return-void
.end method

.method public static newInternal([I)Lsun/security/util/ObjectIdentifier;
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 209
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lsun/security/util/ObjectIdentifier;-><init>([IZ)V

    return-object v0
.end method

.method private static putComponent(Lsun/security/util/DerOutputStream;I)V
    .locals 4
    .param p0, "out"    # Lsun/security/util/DerOutputStream;
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 350
    new-array v0, v3, [B

    .line 352
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 353
    and-int/lit8 v2, p1, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 354
    ushr-int/lit8 p1, p1, 0x7

    .line 355
    if-nez p1, :cond_1

    .line 358
    :cond_0
    :goto_1
    if-lez v1, :cond_2

    .line 359
    aget-byte v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 358
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 352
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_2
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-virtual {p0, v2}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 361
    return-void
.end method


# virtual methods
.method encode(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 299
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v2, v2, v4

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 300
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0x28

    iget-object v3, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 304
    :goto_0
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    if-ge v1, v2, :cond_1

    .line 305
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Lsun/security/util/ObjectIdentifier;->putComponent(Lsun/security/util/DerOutputStream;I)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0x28

    iget-object v3, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lsun/security/util/ObjectIdentifier;->putComponent(Lsun/security/util/DerOutputStream;I)V

    goto :goto_0

    .line 311
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 312
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 407
    if-ne p0, p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v2

    .line 410
    :cond_1
    instance-of v4, p1, Lsun/security/util/ObjectIdentifier;

    if-nez v4, :cond_2

    move v2, v3

    .line 411
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 413
    check-cast v1, Lsun/security/util/ObjectIdentifier;

    .line 414
    .local v1, "other":Lsun/security/util/ObjectIdentifier;
    iget v4, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    iget v5, v1, Lsun/security/util/ObjectIdentifier;->componentLen:I

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 415
    goto :goto_0

    .line 417
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    if-ge v0, v4, :cond_0

    .line 418
    iget-object v4, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v4, v4, v0

    iget-object v5, v1, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_4

    move v2, v3

    .line 419
    goto :goto_0

    .line 417
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public equals(Lsun/security/util/ObjectIdentifier;)Z
    .locals 1
    .param p1, "other"    # Lsun/security/util/ObjectIdentifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 426
    iget v0, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 427
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    if-ge v1, v2, :cond_0

    .line 428
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v2, v2, v1

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v0, v2

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_0
    return v0
.end method

.method public precedes(Lsun/security/util/ObjectIdentifier;)Z
    .locals 5
    .param p1, "other"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    if-eq p1, p0, :cond_0

    iget v3, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    iget v4, p1, Lsun/security/util/ObjectIdentifier;->componentLen:I

    if-ge v3, v4, :cond_2

    :cond_0
    move v1, v2

    .line 390
    :cond_1
    :goto_0
    return v1

    .line 380
    :cond_2
    iget v3, p1, Lsun/security/util/ObjectIdentifier;->componentLen:I

    iget v4, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    if-lt v3, v4, :cond_1

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    if-ge v0, v3, :cond_3

    .line 385
    iget-object v3, p1, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v3, v3, v0

    iget-object v4, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v4, v4, v0

    if-lt v3, v4, :cond_1

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 390
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 440
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 441
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 442
    new-instance v2, Ljava/lang/StringBuffer;

    iget v3, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    mul-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 443
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    if-ge v0, v3, :cond_1

    .line 444
    if-eqz v0, :cond_0

    .line 445
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 447
    :cond_0
    iget-object v3, p0, Lsun/security/util/ObjectIdentifier;->components:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 452
    .end local v0    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    return-object v1
.end method
