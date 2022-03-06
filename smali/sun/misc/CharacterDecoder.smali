.class public abstract Lsun/misc/CharacterDecoder;
.super Ljava/lang/Object;
.source "CharacterDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .param p3, "l"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lsun/misc/CEStreamExhausted;

    invoke-direct {v0}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v0
.end method

.method public decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "aStream"    # Ljava/io/InputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v4, 0x0

    .line 153
    .local v4, "totalBytes":I
    new-instance v3, Ljava/io/PushbackInputStream;

    invoke-direct {v3, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 154
    .local v3, "ps":Ljava/io/PushbackInputStream;
    invoke-virtual {p0, v3, p2}, Lsun/misc/CharacterDecoder;->decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 159
    :goto_0
    :try_start_0
    invoke-virtual {p0, v3, p2}, Lsun/misc/CharacterDecoder;->decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I

    move-result v2

    .line 160
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    add-int/2addr v5, v1

    if-ge v5, v2, :cond_0

    .line 161
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    invoke-virtual {p0, v3, p2, v5}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 162
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    add-int/2addr v4, v5

    .line 160
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    add-int/2addr v5, v1

    if-ne v5, v2, :cond_1

    .line 165
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    invoke-virtual {p0, v3, p2, v5}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 166
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    add-int/2addr v4, v5

    .line 171
    :goto_2
    invoke-virtual {p0, v3, p2}, Lsun/misc/CharacterDecoder;->decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lsun/misc/CEStreamExhausted; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Lsun/misc/CEStreamExhausted;
    invoke-virtual {p0, v3, p2}, Lsun/misc/CharacterDecoder;->decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 177
    return-void

    .line 168
    .end local v0    # "e":Lsun/misc/CEStreamExhausted;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    sub-int v5, v2, v1

    :try_start_1
    invoke-virtual {p0, v3, p2, v5}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Lsun/misc/CEStreamExhausted; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    sub-int v5, v2, v1

    add-int/2addr v4, v5

    goto :goto_2
.end method

.method public decodeBuffer(Ljava/io/InputStream;)[B
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, v0}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public decodeBuffer(Ljava/lang/String;)[B
    .locals 5
    .param p1, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v1, v3, [B

    .line 189
    .local v1, "inputBuffer":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v4, v3, v1, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 190
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 191
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0, v2}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 193
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method protected decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    return-void
.end method

.method protected decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public decodeBufferToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public decodeBufferToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerLine()I

    move-result v0

    return v0
.end method

.method protected decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[BII)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 134
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 135
    .local v1, "q":I
    if-ne v1, v2, :cond_1

    .line 136
    if-nez v0, :cond_0

    move v0, v2

    .line 139
    .end local v0    # "i":I
    .end local v1    # "q":I
    :cond_0
    :goto_1
    return v0

    .line 137
    .restart local v0    # "i":I
    .restart local v1    # "q":I
    :cond_1
    add-int v3, v0, p3

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "q":I
    :cond_2
    move v0, p4

    .line 139
    goto :goto_1
.end method
