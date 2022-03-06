.class Lsys/util/jar/Manifest$FastInputStream;
.super Ljava/io/FilterInputStream;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsys/util/jar/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastInputStream"
.end annotation


# instance fields
.field private buf:[B

.field private count:I

.field private pos:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 328
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lsys/util/jar/Manifest$FastInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 329
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 324
    iput v0, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    .line 325
    iput v0, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    .line 333
    new-array v0, p2, [B

    iput-object v0, p0, Lsys/util/jar/Manifest$FastInputStream;->buf:[B

    .line 334
    return-void
.end method

.method private fill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 439
    iput v4, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    iput v4, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    .line 440
    iget-object v1, p0, Lsys/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lsys/util/jar/Manifest$FastInputStream;->buf:[B

    iget-object v3, p0, Lsys/util/jar/Manifest$FastInputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 441
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 442
    iput v0, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    .line 444
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    iget v0, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    iget v1, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lsys/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-object v0, p0, Lsys/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lsys/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 433
    iput-object v1, p0, Lsys/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    .line 434
    iput-object v1, p0, Lsys/util/jar/Manifest$FastInputStream;->buf:[B

    .line 436
    :cond_0
    return-void
.end method

.method public peek()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    iget v0, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    if-ne v0, v1, :cond_0

    .line 403
    invoke-direct {p0}, Lsys/util/jar/Manifest$FastInputStream;->fill()V

    .line 404
    :cond_0
    iget-object v0, p0, Lsys/util/jar/Manifest$FastInputStream;->buf:[B

    iget v1, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget v0, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    if-lt v0, v1, :cond_0

    .line 338
    invoke-direct {p0}, Lsys/util/jar/Manifest$FastInputStream;->fill()V

    .line 339
    iget v0, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    if-lt v0, v1, :cond_0

    .line 340
    const/4 v0, -0x1

    .line 343
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lsys/util/jar/Manifest$FastInputStream;->buf:[B

    iget v1, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget v1, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    iget v2, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v0, v1, v2

    .line 348
    .local v0, "avail":I
    if-gtz v0, :cond_1

    .line 349
    iget-object v1, p0, Lsys/util/jar/Manifest$FastInputStream;->buf:[B

    array-length v1, v1

    if-lt p3, v1, :cond_0

    .line 350
    iget-object v1, p0, Lsys/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 363
    :goto_0
    return v1

    .line 352
    :cond_0
    invoke-direct {p0}, Lsys/util/jar/Manifest$FastInputStream;->fill()V

    .line 353
    iget v1, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    iget v2, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v0, v1, v2

    .line 354
    if-gtz v0, :cond_1

    .line 355
    const/4 v1, -0x1

    goto :goto_0

    .line 358
    :cond_1
    if-le p3, v0, :cond_2

    .line 359
    move p3, v0

    .line 361
    :cond_2
    iget-object v1, p0, Lsys/util/jar/Manifest$FastInputStream;->buf:[B

    iget v2, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    iget v1, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    move v1, p3

    .line 363
    goto :goto_0
.end method

.method public readLine([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lsys/util/jar/Manifest$FastInputStream;->readLine([BII)I

    move-result v0

    return v0
.end method

.method public readLine([BII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 371
    iget-object v3, p0, Lsys/util/jar/Manifest$FastInputStream;->buf:[B

    .line 372
    .local v3, "tbuf":[B
    const/4 v4, 0x0

    .line 373
    .local v4, "total":I
    :cond_0
    if-ge v4, p3, :cond_5

    .line 374
    iget v7, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    iget v8, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v0, v7, v8

    .line 375
    .local v0, "avail":I
    if-gtz v0, :cond_1

    .line 376
    invoke-direct {p0}, Lsys/util/jar/Manifest$FastInputStream;->fill()V

    .line 377
    iget v7, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    iget v8, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v0, v7, v8

    .line 378
    if-gtz v0, :cond_1

    .line 379
    const/4 v7, -0x1

    .line 398
    .end local v0    # "avail":I
    :goto_0
    return v7

    .line 382
    .restart local v0    # "avail":I
    :cond_1
    sub-int v2, p3, v4

    .line 383
    .local v2, "n":I
    if-le v2, v0, :cond_2

    .line 384
    move v2, v0

    .line 386
    :cond_2
    iget v5, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    .line 387
    .local v5, "tpos":I
    add-int v1, v5, v2

    .local v1, "maxpos":I
    move v6, v5

    .line 388
    .end local v5    # "tpos":I
    .local v6, "tpos":I
    :goto_1
    if-ge v6, v1, :cond_3

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tpos":I
    .restart local v5    # "tpos":I
    aget-byte v7, v3, v6

    if-eq v7, v9, :cond_4

    move v6, v5

    .end local v5    # "tpos":I
    .restart local v6    # "tpos":I
    goto :goto_1

    :cond_3
    move v5, v6

    .line 389
    .end local v6    # "tpos":I
    .restart local v5    # "tpos":I
    :cond_4
    iget v7, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v2, v5, v7

    .line 390
    iget v7, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    invoke-static {v3, v7, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    add-int/2addr p2, v2

    .line 392
    add-int/2addr v4, v2

    .line 393
    iput v5, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    .line 394
    add-int/lit8 v7, v5, -0x1

    aget-byte v7, v3, v7

    if-ne v7, v9, :cond_0

    .end local v0    # "avail":I
    .end local v1    # "maxpos":I
    .end local v2    # "n":I
    .end local v5    # "tpos":I
    :cond_5
    move v7, v4

    .line 398
    goto :goto_0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 412
    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    .line 423
    :goto_0
    return-wide v2

    .line 415
    :cond_0
    iget v4, p0, Lsys/util/jar/Manifest$FastInputStream;->count:I

    iget v5, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 416
    .local v0, "avail":J
    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 417
    iget-object v2, p0, Lsys/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    goto :goto_0

    .line 419
    :cond_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 420
    move-wide p1, v0

    .line 422
    :cond_2
    iget v2, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, p0, Lsys/util/jar/Manifest$FastInputStream;->pos:I

    move-wide v2, p1

    .line 423
    goto :goto_0
.end method
