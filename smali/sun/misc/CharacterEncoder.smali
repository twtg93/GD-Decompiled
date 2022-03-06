.class public abstract Lsun/misc/CharacterEncoder;
.super Ljava/lang/Object;
.source "CharacterEncoder.java"


# instance fields
.field protected pStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBytes(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 219
    .local v0, "buf":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 221
    .local v1, "tmp":[B
    array-length v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_0

    array-length v2, v1

    .line 222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 223
    move-object v0, v1

    .line 224
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    .end local v1    # "tmp":[B
    :cond_0
    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 239
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 242
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 265
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 6
    .param p1, "aBuffer"    # [B

    .prologue
    .line 185
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 187
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 189
    .local v3, "retVal":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lsun/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 191
    const-string/jumbo v4, "8859_1"

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 196
    return-object v3

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "IOException":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    const-string/jumbo v5, "CharacterEncoder.encode internal error"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v3

    new-array v2, v3, [B

    .line 145
    .local v2, "tmpbuffer":[B
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 148
    :goto_0
    invoke-virtual {p0, p1, v2}, Lsun/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 149
    .local v1, "numBytes":I
    if-nez v1, :cond_1

    .line 167
    :cond_0
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 168
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0, p2, v1}, Lsun/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 153
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 155
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v3, v1, :cond_2

    .line 156
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 153
    :goto_2
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 158
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2

    .line 161
    :cond_3
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 164
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public encode(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 254
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encode([BLjava/io/OutputStream;)V

    .line 255
    return-void
.end method

.method public encode([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # [B
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 177
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 178
    return-void
.end method

.method protected abstract encodeAtom(Ljava/io/OutputStream;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 349
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encodeBuffer([B)Ljava/lang/String;
    .locals 5
    .param p1, "aBuffer"    # [B

    .prologue
    .line 318
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 319
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 321
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 322
    :catch_0
    move-exception v0

    .line 324
    .local v0, "IOException":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    const-string/jumbo v4, "CharacterEncoder.encodeBuffer internal error"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v3

    new-array v2, v3, [B

    .line 280
    .local v2, "tmpbuffer":[B
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 283
    :cond_0
    invoke-virtual {p0, p1, v2}, Lsun/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 284
    .local v1, "numBytes":I
    if-nez v1, :cond_1

    .line 300
    :goto_0
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 301
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0, p2, v1}, Lsun/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 288
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 289
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v3, v1, :cond_2

    .line 290
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 288
    :goto_2
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 292
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2

    .line 295
    :cond_3
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    .line 296
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v3

    if-ge v1, v3, :cond_0

    goto :goto_0
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 338
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V

    .line 339
    return-void
.end method

.method public encodeBuffer([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # [B
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 310
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 311
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    .line 91
    return-void
.end method

.method protected encodeBufferSuffix(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .param p2, "aLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 112
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[B)I
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 126
    .local v1, "q":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 130
    .end local v0    # "i":I
    .end local v1    # "q":I
    :goto_1
    return v0

    .line 128
    .restart local v0    # "i":I
    .restart local v1    # "q":I
    :cond_0
    int-to-byte v2, v1

    aput-byte v2, p2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "q":I
    :cond_1
    array-length v0, p2

    goto :goto_1
.end method
