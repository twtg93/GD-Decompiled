.class public Lsys/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsys/util/jar/Manifest$FastInputStream;
    }
.end annotation


# instance fields
.field private attr:Lsys/util/jar/Attributes;

.field private entries:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lsys/util/jar/Attributes;

    invoke-direct {v0}, Lsys/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Lsys/util/jar/Manifest;->attr:Lsys/util/jar/Attributes;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lsys/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lsys/util/jar/Attributes;

    invoke-direct {v0}, Lsys/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Lsys/util/jar/Manifest;->attr:Lsys/util/jar/Attributes;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lsys/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 70
    invoke-virtual {p0, p1}, Lsys/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lsys/util/jar/Manifest;)V
    .locals 2
    .param p1, "man"    # Lsys/util/jar/Manifest;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lsys/util/jar/Attributes;

    invoke-direct {v0}, Lsys/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Lsys/util/jar/Manifest;->attr:Lsys/util/jar/Attributes;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lsys/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 79
    iget-object v0, p0, Lsys/util/jar/Manifest;->attr:Lsys/util/jar/Attributes;

    invoke-virtual {p1}, Lsys/util/jar/Manifest;->getMainAttributes()Lsys/util/jar/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsys/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    .line 80
    iget-object v0, p0, Lsys/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Lsys/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method static make72Safe(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p0, "line"    # Ljava/lang/StringBuffer;

    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 175
    .local v1, "length":I
    const/16 v2, 0x48

    if-le v1, v2, :cond_0

    .line 176
    const/16 v0, 0x46

    .line 177
    .local v0, "index":I
    :goto_0
    add-int/lit8 v2, v1, -0x2

    if-ge v0, v2, :cond_0

    .line 178
    const-string/jumbo v2, "\r\n "

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    add-int/lit8 v0, v0, 0x48

    .line 180
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 183
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private parseName([BI)Ljava/lang/String;
    .locals 4
    .param p1, "lbuf"    # [B
    .param p2, "len"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lsys/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lsys/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    .line 267
    invoke-direct {p0, v0}, Lsys/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lsys/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 270
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x6

    add-int/lit8 v2, p2, -0x6

    const-string/jumbo v3, "UTF8"

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-object v0

    .line 272
    :catch_0
    move-exception v0

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toLower(I)I
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 279
    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 p1, v0, 0x61

    .end local p1    # "c":I
    :cond_0
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lsys/util/jar/Manifest;->attr:Lsys/util/jar/Attributes;

    invoke-virtual {v0}, Lsys/util/jar/Attributes;->clear()V

    .line 135
    iget-object v0, p0, Lsys/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 136
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    new-instance v0, Lsys/util/jar/Manifest;

    invoke-direct {v0, p0}, Lsys/util/jar/Manifest;-><init>(Lsys/util/jar/Manifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 291
    instance-of v2, p1, Lsys/util/jar/Manifest;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 292
    check-cast v0, Lsys/util/jar/Manifest;

    .line 293
    .local v0, "m":Lsys/util/jar/Manifest;
    iget-object v2, p0, Lsys/util/jar/Manifest;->attr:Lsys/util/jar/Attributes;

    invoke-virtual {v0}, Lsys/util/jar/Manifest;->getMainAttributes()Lsys/util/jar/Attributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsys/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsys/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 294
    invoke-virtual {v0}, Lsys/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 296
    .end local v0    # "m":Lsys/util/jar/Manifest;
    :cond_0
    return v1
.end method

.method public getAttributes(Ljava/lang/String;)Lsys/util/jar/Attributes;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Lsys/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsys/util/jar/Attributes;

    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsys/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lsys/util/jar/Manifest;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public getMainAttributes()Lsys/util/jar/Attributes;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lsys/util/jar/Manifest;->attr:Lsys/util/jar/Attributes;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lsys/util/jar/Manifest;->attr:Lsys/util/jar/Attributes;

    invoke-virtual {v0}, Lsys/util/jar/Attributes;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsys/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 14
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v5, Lsys/util/jar/Manifest$FastInputStream;

    invoke-direct {v5, p1}, Lsys/util/jar/Manifest$FastInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    .local v5, "fis":Lsys/util/jar/Manifest$FastInputStream;
    const/16 v11, 0x200

    new-array v7, v11, [B

    .line 200
    .local v7, "lbuf":[B
    iget-object v11, p0, Lsys/util/jar/Manifest;->attr:Lsys/util/jar/Attributes;

    invoke-virtual {v11, v5, v7}, Lsys/util/jar/Attributes;->read(Lsys/util/jar/Manifest$FastInputStream;[B)V

    .line 202
    const/4 v4, 0x0

    .local v4, "ecount":I
    const/4 v0, 0x0

    .line 204
    .local v0, "acount":I
    const/4 v1, 0x2

    .line 207
    .local v1, "asize":I
    const/4 v9, 0x0

    .line 208
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x1

    .line 209
    .local v10, "skipEmptyLines":Z
    const/4 v6, 0x0

    .line 211
    .local v6, "lastline":[B
    :cond_0
    :goto_0
    invoke-virtual {v5, v7}, Lsys/util/jar/Manifest$FastInputStream;->readLine([B)I

    move-result v8

    .local v8, "len":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_9

    .line 212
    add-int/lit8 v8, v8, -0x1

    aget-byte v11, v7, v8

    const/16 v12, 0xa

    if-eq v11, v12, :cond_1

    .line 213
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "manifest line too long"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 215
    :cond_1
    if-lez v8, :cond_2

    add-int/lit8 v11, v8, -0x1

    aget-byte v11, v7, v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_2

    .line 216
    add-int/lit8 v8, v8, -0x1

    .line 218
    :cond_2
    if-nez v8, :cond_3

    if-nez v10, :cond_0

    .line 221
    :cond_3
    const/4 v10, 0x0

    .line 223
    if-nez v9, :cond_5

    .line 224
    invoke-direct {p0, v7, v8}, Lsys/util/jar/Manifest;->parseName([BI)Ljava/lang/String;

    move-result-object v9

    .line 225
    if-nez v9, :cond_4

    .line 226
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "invalid manifest format"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 228
    :cond_4
    invoke-virtual {v5}, Lsys/util/jar/Manifest$FastInputStream;->peek()B

    move-result v11

    const/16 v12, 0x20

    if-ne v11, v12, :cond_7

    .line 230
    add-int/lit8 v11, v8, -0x6

    new-array v6, v11, [B

    .line 231
    const/4 v11, 0x6

    const/4 v12, 0x0

    add-int/lit8 v13, v8, -0x6

    invoke-static {v7, v11, v6, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 236
    :cond_5
    array-length v11, v6

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x1

    new-array v3, v11, [B

    .line 237
    .local v3, "buf":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v6

    invoke-static {v6, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    const/4 v11, 0x1

    array-length v12, v6

    add-int/lit8 v13, v8, -0x1

    invoke-static {v7, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    invoke-virtual {v5}, Lsys/util/jar/Manifest$FastInputStream;->peek()B

    move-result v11

    const/16 v12, 0x20

    if-ne v11, v12, :cond_6

    .line 241
    move-object v6, v3

    .line 242
    goto :goto_0

    .line 244
    :cond_6
    new-instance v9, Ljava/lang/String;

    .end local v9    # "name":Ljava/lang/String;
    const/4 v11, 0x0

    array-length v12, v3

    const-string/jumbo v13, "UTF8"

    invoke-direct {v9, v3, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 245
    .restart local v9    # "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 247
    .end local v3    # "buf":[B
    :cond_7
    invoke-virtual {p0, v9}, Lsys/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Lsys/util/jar/Attributes;

    move-result-object v2

    .line 248
    .local v2, "attr":Lsys/util/jar/Attributes;
    if-nez v2, :cond_8

    .line 249
    new-instance v2, Lsys/util/jar/Attributes;

    .end local v2    # "attr":Lsys/util/jar/Attributes;
    invoke-direct {v2, v1}, Lsys/util/jar/Attributes;-><init>(I)V

    .line 250
    .restart local v2    # "attr":Lsys/util/jar/Attributes;
    iget-object v11, p0, Lsys/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v11, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_8
    invoke-virtual {v2, v5, v7}, Lsys/util/jar/Attributes;->read(Lsys/util/jar/Manifest$FastInputStream;[B)V

    .line 253
    add-int/lit8 v4, v4, 0x1

    .line 254
    invoke-virtual {v2}, Lsys/util/jar/Attributes;->size()I

    move-result v11

    add-int/2addr v0, v11

    .line 258
    const/4 v11, 0x2

    div-int v12, v0, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 260
    const/4 v9, 0x0

    .line 261
    const/4 v10, 0x1

    .line 262
    goto/16 :goto_0

    .line 263
    .end local v2    # "attr":Lsys/util/jar/Attributes;
    :cond_9
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 148
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    .local v1, "dos":Ljava/io/DataOutputStream;
    iget-object v6, p0, Lsys/util/jar/Manifest;->attr:Lsys/util/jar/Attributes;

    invoke-virtual {v6, v1}, Lsys/util/jar/Attributes;->writeMain(Ljava/io/DataOutputStream;)V

    .line 152
    iget-object v6, p0, Lsys/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 153
    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 154
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    .local v2, "e":Ljava/util/Map$Entry;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v6, "Name: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 157
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 158
    const-string/jumbo v6, "UTF8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 159
    .local v5, "vb":[B
    new-instance v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/String;
    array-length v6, v5

    invoke-direct {v4, v5, v7, v7, v6}, Ljava/lang/String;-><init>([BIII)V

    .line 161
    .end local v5    # "vb":[B
    .restart local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string/jumbo v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-static {v0}, Lsys/util/jar/Manifest;->make72Safe(Ljava/lang/StringBuffer;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 165
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsys/util/jar/Attributes;

    invoke-virtual {v6, v1}, Lsys/util/jar/Attributes;->write(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 167
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "e":Ljava/util/Map$Entry;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 168
    return-void
.end method
