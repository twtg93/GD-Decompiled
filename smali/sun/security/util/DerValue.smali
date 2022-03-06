.class public Lsun/security/util/DerValue;
.super Ljava/lang/Object;
.source "DerValue.java"


# static fields
.field public static final TAG_APPLICATION:B = 0x40t

.field public static final TAG_CONTEXT:B = -0x80t

.field public static final TAG_PRIVATE:B = -0x40t

.field public static final TAG_UNIVERSAL:B = 0x0t

.field public static final tag_BMPString:B = 0x1et

.field public static final tag_BitString:B = 0x3t

.field public static final tag_Boolean:B = 0x1t

.field public static final tag_Enumerated:B = 0xat

.field public static final tag_GeneralString:B = 0x1bt

.field public static final tag_GeneralizedTime:B = 0x18t

.field public static final tag_IA5String:B = 0x16t

.field public static final tag_Integer:B = 0x2t

.field public static final tag_Null:B = 0x5t

.field public static final tag_ObjectId:B = 0x6t

.field public static final tag_OctetString:B = 0x4t

.field public static final tag_PrintableString:B = 0x13t

.field public static final tag_Sequence:B = 0x30t

.field public static final tag_SequenceOf:B = 0x30t

.field public static final tag_Set:B = 0x31t

.field public static final tag_SetOf:B = 0x31t

.field public static final tag_T61String:B = 0x14t

.field public static final tag_UTF8String:B = 0xct

.field public static final tag_UniversalString:B = 0x1ct

.field public static final tag_UtcTime:B = 0x17t


# instance fields
.field protected buffer:Lsun/security/util/DerInputBuffer;

.field public final data:Lsun/security/util/DerInputStream;

.field private length:I

.field public tag:B


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 1
    .param p1, "stringTag"    # B
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-direct {p0, p1, p2}, Lsun/security/util/DerValue;->init(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 231
    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "data"    # [B

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 241
    new-instance v1, Lsun/security/util/DerInputBuffer;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 242
    array-length v0, p2

    iput v0, p0, Lsun/security/util/DerValue;->length:I

    .line 243
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 244
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 325
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v1, 0x1

    .line 214
    .local v1, "isPrintableString":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    const/4 v1, 0x0

    .line 221
    :cond_0
    if-eqz v1, :cond_2

    const/16 v2, 0x13

    :goto_1
    invoke-direct {p0, v2, p1}, Lsun/security/util/DerValue;->init(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    move-result-object v2

    iput-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 222
    return-void

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_2
    const/16 v2, 0xc

    goto :goto_1
.end method

.method constructor <init>(Lsun/security/util/DerInputBuffer;)V
    .locals 10
    .param p1, "in"    # Lsun/security/util/DerInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v7

    int-to-byte v7, v7

    iput-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    .line 255
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v7

    int-to-byte v4, v7

    .line 256
    .local v4, "lenByte":B
    and-int/lit16 v7, v4, 0xff

    invoke-static {v7, p1}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v7

    iput v7, p0, Lsun/security/util/DerValue;->length:I

    .line 257
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 258
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v2

    .line 259
    .local v2, "inbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v6

    .line 260
    .local v6, "readLen":I
    const/4 v5, 0x2

    .line 261
    .local v5, "offset":I
    add-int v7, v6, v5

    new-array v3, v7, [B

    .line 262
    .local v3, "indefData":[B
    const/4 v7, 0x0

    iget-byte v8, p0, Lsun/security/util/DerValue;->tag:B

    aput-byte v8, v3, v7

    .line 263
    const/4 v7, 0x1

    aput-byte v4, v3, v7

    .line 264
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 265
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1, v3, v5, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 266
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 267
    new-instance v0, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v0}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 268
    .local v0, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v2, Lsun/security/util/DerInputBuffer;

    .end local v2    # "inbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v0, v3}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v7

    invoke-direct {v2, v7}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    .line 269
    .restart local v2    # "inbuf":Lsun/security/util/DerInputBuffer;
    iget-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 270
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Indefinite length encoding not supported"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 272
    :cond_0
    invoke-static {v2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v7

    iput v7, p0, Lsun/security/util/DerValue;->length:I

    .line 273
    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v7

    iput-object v7, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 274
    iget-object v7, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget v8, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v7, v8}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 275
    new-instance v7, Lsun/security/util/DerInputStream;

    iget-object v8, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v7, v8}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v7, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 279
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    add-int/2addr v7, v5

    int-to-long v8, v7

    invoke-virtual {p1, v8, v9}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 288
    .end local v0    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "inbuf":Lsun/security/util/DerInputBuffer;
    .end local v3    # "indefData":[B
    .end local v5    # "offset":I
    .end local v6    # "readLen":I
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v7

    iput-object v7, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 283
    iget-object v7, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget v8, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v7, v8}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 284
    new-instance v7, Lsun/security/util/DerInputStream;

    iget-object v8, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v7, v8}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v7, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 286
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    int-to-long v8, v7

    invoke-virtual {p1, v8, v9}, Lsun/security/util/DerInputBuffer;->skip(J)J

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 299
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v0, 0x1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, v1}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 312
    return-void
.end method

.method private append([B[B)[B
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 458
    if-nez p1, :cond_0

    .line 465
    .end local p2    # "b":[B
    :goto_0
    return-object p2

    .line 461
    .restart local p2    # "b":[B
    :cond_0
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 462
    .local v0, "ret":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    .line 465
    goto :goto_0
.end method

.method public static createTag(BZB)B
    .locals 2
    .param p0, "tagClass"    # B
    .param p1, "form"    # Z
    .param p2, "val"    # B

    .prologue
    .line 910
    or-int v1, p0, p2

    int-to-byte v0, v1

    .line 911
    .local v0, "tag":B
    if-eqz p1, :cond_0

    .line 912
    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 914
    :cond_0
    return v0
.end method

.method private static doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z
    .locals 4
    .param p0, "d1"    # Lsun/security/util/DerValue;
    .param p1, "d2"    # Lsun/security/util/DerValue;

    .prologue
    .line 791
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v1

    .line 792
    :try_start_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 793
    :try_start_1
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->reset()V

    .line 794
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->reset()V

    .line 795
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v3, p1, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, v3}, Lsun/security/util/DerInputBuffer;->equals(Lsun/security/util/DerInputBuffer;)Z

    move-result v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    .line 796
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 797
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private init(BLjava/lang/String;)Lsun/security/util/DerInputStream;
    .locals 5
    .param p1, "stringTag"    # B
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 330
    .local v1, "enc":Ljava/lang/String;
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 332
    sparse-switch p1, :sswitch_data_0

    .line 350
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unsupported DER string type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 336
    :sswitch_0
    const-string/jumbo v1, "ASCII"

    .line 353
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 354
    .local v0, "buf":[B
    array-length v3, v0

    iput v3, p0, Lsun/security/util/DerValue;->length:I

    .line 355
    new-instance v3, Lsun/security/util/DerInputBuffer;

    invoke-direct {v3, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 356
    new-instance v2, Lsun/security/util/DerInputStream;

    iget-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v3}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    .line 357
    .local v2, "result":Lsun/security/util/DerInputStream;
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 358
    return-object v2

    .line 339
    .end local v0    # "buf":[B
    .end local v2    # "result":Lsun/security/util/DerInputStream;
    :sswitch_1
    const-string/jumbo v1, "ISO-8859-1"

    .line 340
    goto :goto_0

    .line 342
    :sswitch_2
    const-string/jumbo v1, "UnicodeBigUnmarked"

    .line 343
    goto :goto_0

    .line 345
    :sswitch_3
    const-string/jumbo v1, "UTF8"

    .line 346
    goto :goto_0

    .line 332
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x16 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;
    .locals 10
    .param p1, "fullyBuffered"    # Z
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 367
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    iput-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    .line 368
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v4, v7

    .line 369
    .local v4, "lenByte":B
    and-int/lit16 v7, v4, 0xff

    invoke-static {v7, p2}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v7

    iput v7, p0, Lsun/security/util/DerValue;->length:I

    .line 370
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 371
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 372
    .local v6, "readLen":I
    const/4 v5, 0x2

    .line 373
    .local v5, "offset":I
    add-int v7, v6, v5

    new-array v3, v7, [B

    .line 374
    .local v3, "indefData":[B
    const/4 v7, 0x0

    iget-byte v8, p0, Lsun/security/util/DerValue;->tag:B

    aput-byte v8, v3, v7

    .line 375
    aput-byte v4, v3, v9

    .line 376
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 377
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2, v3, v5, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 378
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 379
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 380
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .end local p2    # "in":Ljava/io/InputStream;
    invoke-virtual {v1, v3}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v7

    invoke-direct {p2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 381
    .restart local p2    # "in":Ljava/io/InputStream;
    iget-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 382
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Indefinite length encoding not supported"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 384
    :cond_0
    invoke-static {p2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v7

    iput v7, p0, Lsun/security/util/DerValue;->length:I

    .line 386
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "indefData":[B
    .end local v5    # "offset":I
    .end local v6    # "readLen":I
    :cond_1
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    if-nez v7, :cond_2

    .line 387
    const/4 v7, 0x0

    .line 395
    :goto_0
    return-object v7

    .line 389
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v7

    iget v8, p0, Lsun/security/util/DerValue;->length:I

    if-eq v7, v8, :cond_3

    .line 390
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "extra data given to DerValue constructor"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 392
    :cond_3
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    invoke-static {p2, v7, v9}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B

    move-result-object v0

    .line 394
    .local v0, "bytes":[B
    new-instance v7, Lsun/security/util/DerInputBuffer;

    invoke-direct {v7, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v7, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 395
    new-instance v7, Lsun/security/util/DerInputStream;

    iget-object v8, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v7, v8}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    goto :goto_0
.end method

.method public static isPrintableStringChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 876
    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1

    const/16 v1, 0x5a

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v1, 0x30

    if-lt p0, v1, :cond_3

    const/16 v1, 0x39

    if-gt p0, v1, :cond_3

    .line 895
    :cond_2
    :goto_0
    :sswitch_0
    return v0

    .line 880
    :cond_3
    sparse-switch p0, :sswitch_data_0

    .line 895
    const/4 v0, 0x0

    goto :goto_0

    .line 880
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {p1, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 404
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {p1, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 406
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    if-lez v1, :cond_1

    .line 407
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v1, [B

    .line 409
    .local v0, "value":[B
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v2

    .line 410
    :try_start_0
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Lsun/security/util/DerInputBuffer;->reset()V

    .line 411
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1, v0}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v1

    iget v3, p0, Lsun/security/util/DerValue;->length:I

    if-eq v1, v3, :cond_0

    .line 412
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "short DER value read (encode)"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 414
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 415
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v0    # "value":[B
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 756
    instance-of v0, p1, Lsun/security/util/DerValue;

    if-eqz v0, :cond_0

    .line 757
    check-cast p1, Lsun/security/util/DerValue;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    move-result v0

    .line 759
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lsun/security/util/DerValue;)Z
    .locals 3
    .param p1, "other"    # Lsun/security/util/DerValue;

    .prologue
    const/4 v0, 0x1

    .line 770
    if-ne p0, p1, :cond_1

    .line 781
    :cond_0
    :goto_0
    return v0

    .line 773
    :cond_1
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v1, v2, :cond_2

    .line 774
    const/4 v0, 0x0

    goto :goto_0

    .line 776
    :cond_2
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eq v1, v2, :cond_0

    .line 781
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 782
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 783
    invoke-static {p0, p1}, Lsun/security/util/DerValue;->doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    move-result v0

    goto :goto_0

    .line 784
    :cond_3
    invoke-static {p1, p0}, Lsun/security/util/DerValue;->doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getUTF8String()Ljava/lang/String;

    move-result-object v0

    .line 591
    :goto_0
    return-object v0

    .line 576
    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 577
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getPrintableString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 578
    :cond_1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 579
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getT61String()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 580
    :cond_2
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    .line 581
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 586
    :cond_3
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_4

    .line 587
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getBMPString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 588
    :cond_4
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_5

    .line 589
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getGeneralString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 591
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBMPString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    .line 688
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBMPString, not BMP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "UnicodeBigUnmarked"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

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
    .line 511
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 512
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBigInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBitString()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 549
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getBitString()[B

    move-result-object v0

    return-object v0
.end method

.method public getBitString(Z)[B
    .locals 3
    .param p1, "tagImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    if-nez p1, :cond_0

    .line 603
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 604
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getBitString()[B

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 433
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    if-eq v1, v0, :cond_0

    .line 434
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBoolean, not a BOOLEAN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    if-eq v1, v0, :cond_1

    .line 437
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBoolean, invalid length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getData()Lsun/security/util/DerInputStream;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    return-object v0
.end method

.method public getDataBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v1, [B

    .line 633
    .local v0, "retVal":[B
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v2

    .line 634
    :try_start_0
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->reset()V

    .line 635
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1, v0}, Lsun/security/util/DerInputStream;->getBytes([B)V

    .line 636
    monitor-exit v2

    .line 637
    return-object v0

    .line 636
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnumerated()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 536
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getEnumerated, incorrect tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

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
    .line 717
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 718
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getGeneralString, not GeneralString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getGeneralizedTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 743
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getGeneralizedTime, not a GeneralizedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

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
    .line 673
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 674
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getIA5String, not IA5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getInteger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 500
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 453
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getOID, not an OID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v0
.end method

.method public getOctetString()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 476
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v3}, Lsun/security/util/DerValue;->isConstructed(B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DerValue.getOctetString, not an Octet String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    :cond_0
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v2, [B

    .line 481
    .local v0, "bytes":[B
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2, v0}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v2

    iget v3, p0, Lsun/security/util/DerValue;->length:I

    if-eq v2, v3, :cond_1

    .line 482
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "short read on DerValue buffer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_1
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 484
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 485
    .local v1, "in":Lsun/security/util/DerInputStream;
    const/4 v0, 0x0

    .line 486
    :goto_0
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_2

    .line 487
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lsun/security/util/DerValue;->append([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 490
    .end local v1    # "in":Lsun/security/util/DerInputStream;
    :cond_2
    return-object v0
.end method

.method public getPositiveBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 525
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBigInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

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
    .line 647
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    .line 648
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getPrintableString, not a string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

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
    .line 660
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 661
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getT61String, not T61 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public final getTag()B
    .locals 1

    .prologue
    .line 424
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    return v0
.end method

.method public getUTCTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 731
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getUTCTime, not a UtcTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

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
    .line 703
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 704
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getUTF8String, not UTF-8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getUnalignedBitString()Lsun/security/util/BitArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 562
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public getUnalignedBitString(Z)Lsun/security/util/BitArray;
    .locals 3
    .param p1, "tagImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 620
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 621
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 933
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isApplication()Z
    .locals 2

    .prologue
    .line 176
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstructed()Z
    .locals 2

    .prologue
    .line 197
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstructed(B)Z
    .locals 2
    .param p1, "constructedTag"    # B

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v1, v1, 0x1f

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isContextSpecific()Z
    .locals 2

    .prologue
    .line 182
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContextSpecific(B)Z
    .locals 2
    .param p1, "cntxtTag"    # B

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v1, v1, 0x1f

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isPrivate()Z
    .locals 2

    .prologue
    .line 194
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUniversal()Z
    .locals 1

    .prologue
    .line 171
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    return v0
.end method

.method public resetTag(B)V
    .locals 0
    .param p1, "tag"    # B

    .prologue
    .line 924
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 925
    return-void
.end method

.method public toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 834
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 835
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->reset()V

    .line 836
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toDerInputStream()Lsun/security/util/DerInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_1

    .line 847
    :cond_0
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v0

    .line 848
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toDerInputStream rejects tag type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 808
    :try_start_0
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 818
    :goto_0
    return-object v2

    .line 811
    :cond_0
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 812
    const-string/jumbo v2, "[DerValue, null]"

    goto :goto_0

    .line 813
    :cond_1
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 818
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DerValue, tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 820
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "misformatted DER value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
