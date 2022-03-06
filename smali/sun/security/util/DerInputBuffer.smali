.class Lsun/security/util/DerInputBuffer;
.super Ljava/io/ByteArrayInputStream;
.source "DerInputBuffer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "buf"    # [B

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 50
    return-void
.end method

.method private getTime(IZ)Ljava/util/Date;
    .locals 20
    .param p1, "len"    # I
    .param p2, "generalized"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v13, 0x0

    .line 298
    .local v13, "type":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 299
    const-string/jumbo v13, "Generalized"

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    .line 301
    .local v16, "year":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    add-int v16, v16, v17

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v17, v17, 0xa

    add-int v16, v16, v17

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v16, v16, v17

    .line 304
    add-int/lit8 p1, p1, -0x2

    .line 316
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v9, v17, 0xa

    .line 317
    .local v9, "month":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v9, v9, v17

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v3, v17, 0xa

    .line 320
    .local v3, "day":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v3, v3, v17

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v4, v17, 0xa

    .line 323
    .local v4, "hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v4, v4, v17

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v8, v17, 0xa

    .line 326
    .local v8, "minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v8, v8, v17

    .line 328
    add-int/lit8 p1, p1, -0xa

    .line 336
    const/4 v6, 0x0

    .line 337
    .local v6, "millis":I
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0xc

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v12, v17, 0xa

    .line 339
    .local v12, "second":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v12, v12, v17

    .line 340
    add-int/lit8 p1, p1, -0x2

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    aget-byte v17, v17, v18

    const/16 v18, 0x2e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    aget-byte v17, v17, v18

    const/16 v18, 0x2c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 343
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    .line 346
    const/4 v11, 0x0

    .line 347
    .local v11, "precision":I
    move-object/from16 v0, p0

    iget v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    .line 348
    .local v10, "peek":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    aget-byte v17, v17, v10

    const/16 v18, 0x5a

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    aget-byte v17, v17, v10

    const/16 v18, 0x2b

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    aget-byte v17, v17, v10

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 351
    add-int/lit8 v10, v10, 0x1

    .line 352
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 306
    .end local v3    # "day":I
    .end local v4    # "hour":I
    .end local v6    # "millis":I
    .end local v8    # "minute":I
    .end local v9    # "month":I
    .end local v10    # "peek":I
    .end local v11    # "precision":I
    .end local v12    # "second":I
    .end local v16    # "year":I
    :cond_1
    const-string/jumbo v13, "UTC"

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v16, v17, 0xa

    .line 308
    .restart local v16    # "year":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v16, v16, v17

    .line 310
    const/16 v17, 0x32

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 311
    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v16, v0

    goto/16 :goto_0

    .line 313
    :cond_2
    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x76c

    move/from16 v16, v0

    goto/16 :goto_0

    .line 354
    .restart local v3    # "day":I
    .restart local v4    # "hour":I
    .restart local v6    # "millis":I
    .restart local v8    # "minute":I
    .restart local v9    # "month":I
    .restart local v10    # "peek":I
    .restart local v11    # "precision":I
    .restart local v12    # "second":I
    :cond_3
    packed-switch v11, :pswitch_data_0

    .line 368
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Parse "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " time, unsupported precision for seconds value"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 356
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    add-int v6, v6, v17

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v17, v17, 0xa

    add-int v6, v6, v17

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v6, v6, v17

    .line 371
    :goto_2
    sub-int p1, p1, v11

    .line 376
    .end local v10    # "peek":I
    .end local v11    # "precision":I
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    if-eqz v3, :cond_5

    const/16 v17, 0xc

    move/from16 v0, v17

    if-gt v9, v0, :cond_5

    const/16 v17, 0x1f

    move/from16 v0, v17

    if-gt v3, v0, :cond_5

    const/16 v17, 0x18

    move/from16 v0, v17

    if-ge v4, v0, :cond_5

    const/16 v17, 0x3c

    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    const/16 v17, 0x3c

    move/from16 v0, v17

    if-lt v12, v0, :cond_7

    .line 379
    :cond_5
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Parse "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " time, invalid format"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 361
    .restart local v10    # "peek":I
    .restart local v11    # "precision":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    add-int v6, v6, v17

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v17, v17, 0xa

    add-int v6, v6, v17

    .line 363
    goto/16 :goto_2

    .line 365
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    add-int v6, v6, v17

    .line 366
    goto/16 :goto_2

    .line 374
    .end local v10    # "peek":I
    .end local v11    # "precision":I
    .end local v12    # "second":I
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "second":I
    goto/16 :goto_3

    .line 394
    :cond_7
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 395
    .local v2, "cal":Ljava/util/Calendar;
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 396
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0, v9}, Ljava/util/Calendar;->set(II)V

    .line 397
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 398
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 399
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v2, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 400
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v2, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 401
    const/16 v17, 0xe

    move/from16 v0, v17

    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 402
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 408
    .local v14, "time":J
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 409
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Parse "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " time, invalid offset"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 413
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    sparse-switch v17, :sswitch_data_0

    .line 442
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Parse "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " time, garbage offset"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 415
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v5, v17, 0xa

    .line 416
    .local v5, "hr":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v5, v5, v17

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v7, v17, 0xa

    .line 418
    .local v7, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v7, v7, v17

    .line 420
    const/16 v17, 0x18

    move/from16 v0, v17

    if-ge v5, v0, :cond_9

    const/16 v17, 0x3c

    move/from16 v0, v17

    if-lt v7, v0, :cond_a

    .line 421
    :cond_9
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Parse "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " time, +hhmm"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 423
    :cond_a
    mul-int/lit8 v17, v5, 0x3c

    add-int v17, v17, v7

    mul-int/lit8 v17, v17, 0x3c

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 444
    .end local v5    # "hr":I
    .end local v7    # "min":I
    :goto_4
    :sswitch_1
    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    return-object v17

    .line 427
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v5, v17, 0xa

    .line 428
    .restart local v5    # "hr":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v5, v5, v17

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v7, v17, 0xa

    .line 430
    .restart local v7    # "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v17, v17, v18

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    add-int v7, v7, v17

    .line 432
    const/16 v17, 0x18

    move/from16 v0, v17

    if-ge v5, v0, :cond_b

    const/16 v17, 0x3c

    move/from16 v0, v17

    if-lt v7, v0, :cond_c

    .line 433
    :cond_b
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Parse "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " time, -hhmm"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 435
    :cond_c
    mul-int/lit8 v17, v5, 0x3c

    add-int v17, v17, v7

    mul-int/lit8 v17, v17, 0x3c

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    .line 436
    goto/16 :goto_4

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2d -> :sswitch_2
        0x5a -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method dup()Lsun/security/util/DerInputBuffer;
    .locals 4

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/DerInputBuffer;

    .line 56
    .local v1, "retval":Lsun/security/util/DerInputBuffer;
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lsun/security/util/DerInputBuffer;->mark(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object v1

    .line 58
    .end local v1    # "retval":Lsun/security/util/DerInputBuffer;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 85
    instance-of v0, p1, Lsun/security/util/DerInputBuffer;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lsun/security/util/DerInputBuffer;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputBuffer;->equals(Lsun/security/util/DerInputBuffer;)Z

    move-result v0

    .line 88
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method equals(Lsun/security/util/DerInputBuffer;)Z
    .locals 7
    .param p1, "other"    # Lsun/security/util/DerInputBuffer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v2

    .line 95
    :cond_1
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    .line 96
    .local v1, "max":I
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v4

    if-eq v4, v1, :cond_2

    move v2, v3

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 99
    iget-object v4, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v5, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    iget-object v5, p1, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v6, p1, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v6, v0

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 100
    goto :goto_0

    .line 98
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getBigInteger(IZ)Ljava/math/BigInteger;
    .locals 4
    .param p1, "len"    # I
    .param p2, "makePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 138
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "short read of integer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    if-nez p1, :cond_1

    .line 141
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding: zero length Int value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_1
    new-array v0, p1, [B

    .line 146
    .local v0, "bytes":[B
    iget-object v1, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 149
    if-eqz p2, :cond_2

    .line 150
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 152
    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_0
.end method

.method getBitString()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerInputBuffer;->getBitString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBitString(I)[B
    .locals 6
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    if-le p1, v2, :cond_0

    .line 183
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "short read of bit string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_0
    if-nez p1, :cond_1

    .line 186
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding: zero length bit string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_1
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v2, v3

    .line 190
    .local v0, "numOfPadBits":I
    if-ltz v0, :cond_2

    const/4 v2, 0x7

    if-le v0, v2, :cond_3

    .line 191
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid number of padding bits"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_3
    add-int/lit8 v2, p1, -0x1

    new-array v1, v2, [B

    .line 195
    .local v1, "retval":[B
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    add-int/lit8 v5, p1, -0x1

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    if-eqz v0, :cond_4

    .line 198
    add-int/lit8 v2, p1, -0x2

    aget-byte v3, v1, v2

    const/16 v4, 0xff

    shl-int/2addr v4, v0

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 200
    :cond_4
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 201
    return-object v1
.end method

.method public getGeneralizedTime(I)Ljava/util/Date;
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 260
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "short read of DER Generalized Time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    const/16 v0, 0xd

    if-lt p1, v0, :cond_1

    const/16 v0, 0x17

    if-le p1, v0, :cond_2

    .line 263
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER Generalized Time length error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getInteger(I)I
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    .line 168
    .local v0, "result":Ljava/math/BigInteger;
    const-wide/32 v2, -0x80000000

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    .line 169
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Integer below minimum valid value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    .line 172
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Integer exceeds maximum valid value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public getUTCTime(I)Ljava/util/Date;
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 245
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "short read of DER UTC Time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    const/16 v0, 0x11

    if-le p1, v0, :cond_2

    .line 248
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER UTC Time length error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method getUnalignedBitString()Lsun/security/util/BitArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 216
    iget v6, p0, Lsun/security/util/DerInputBuffer;->pos:I

    iget v7, p0, Lsun/security/util/DerInputBuffer;->count:I

    if-lt v6, v7, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    .line 223
    .local v2, "len":I
    iget-object v6, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v7, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v6, v6, v7

    and-int/lit16 v4, v6, 0xff

    .line 224
    .local v4, "unusedBits":I
    const/4 v6, 0x7

    if-le v4, v6, :cond_1

    .line 225
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid value for unused bits: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 227
    :cond_1
    add-int/lit8 v6, v2, -0x1

    new-array v1, v6, [B

    .line 229
    .local v1, "bits":[B
    array-length v6, v1

    if-nez v6, :cond_2

    move v3, v5

    .line 231
    .local v3, "length":I
    :goto_1
    iget-object v6, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v7, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v2, -0x1

    invoke-static {v6, v7, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v3, v1}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 234
    .local v0, "bitArray":Lsun/security/util/BitArray;
    iget v5, p0, Lsun/security/util/DerInputBuffer;->count:I

    iput v5, p0, Lsun/security/util/DerInputBuffer;->pos:I

    goto :goto_0

    .line 229
    .end local v0    # "bitArray":Lsun/security/util/BitArray;
    .end local v3    # "length":I
    :cond_2
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x8

    sub-int v3, v6, v4

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 114
    .local v3, "retval":I
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    .line 115
    .local v1, "len":I
    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    .line 117
    .local v2, "p":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    iget-object v4, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return v3
.end method

.method peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    iget v1, p0, Lsun/security/util/DerInputBuffer;->count:I

    if-lt v0, v1, :cond_0

    .line 75
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "out of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v1, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method toByteArray()[B
    .locals 5

    .prologue
    .line 64
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    .line 65
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 70
    :goto_0
    return-object v1

    .line 67
    :cond_0
    new-array v1, v0, [B

    .line 69
    .local v1, "retval":[B
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method truncate(I)V
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 124
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "insufficient data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/security/util/DerInputBuffer;->count:I

    .line 126
    return-void
.end method
