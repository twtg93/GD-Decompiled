.class public Lsun/security/x509/X509Key;
.super Ljava/lang/Object;
.source "X509Key.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = -0x4a5fe2419b658d5aL


# instance fields
.field protected algid:Lsun/security/x509/AlgorithmId;

.field private bitStringKey:Lsun/security/util/BitArray;

.field protected encodedKey:[B

.field protected key:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private unusedBits:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/X509Key;->unusedBits:I

    .line 91
    iput-object v1, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 101
    return-void
.end method

.method private constructor <init>(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V
    .locals 2
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/X509Key;->unusedBits:I

    .line 91
    iput-object v1, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 110
    iput-object p1, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 111
    invoke-virtual {p0, p2}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    .line 112
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->encode()[B

    .line 113
    return-void
.end method

.method static buildX509Key(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)Ljava/security/PublicKey;
    .locals 14
    .param p0, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p1, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v9, Lsun/security/util/DerOutputStream;

    invoke-direct {v9}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 220
    .local v9, "x509EncodedKeyStream":Lsun/security/util/DerOutputStream;
    invoke-static {v9, p0, p1}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    .line 221
    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    .line 222
    invoke-virtual {v9}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 226
    .local v10, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 229
    .local v6, "keyFac":Ljava/security/KeyFactory;
    invoke-virtual {v6, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 284
    .end local v6    # "keyFac":Ljava/security/KeyFactory;
    :goto_0
    return-object v7

    .line 232
    :catch_0
    move-exception v3

    .line 233
    .local v3, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v11, Ljava/security/InvalidKeyException;

    invoke-virtual {v3}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 230
    .end local v3    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v11

    .line 239
    const-string/jumbo v2, ""

    .line 245
    .local v2, "classname":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v11, "SUN"

    invoke-static {v11}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v8

    .line 246
    .local v8, "sunProvider":Ljava/security/Provider;
    if-nez v8, :cond_1

    .line 247
    new-instance v11, Ljava/lang/InstantiationException;

    invoke-direct {v11}, Ljava/lang/InstantiationException;-><init>()V

    throw v11
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 276
    .end local v8    # "sunProvider":Ljava/security/Provider;
    :catch_2
    move-exception v11

    .line 283
    :cond_0
    :goto_1
    new-instance v7, Lsun/security/x509/X509Key;

    invoke-direct {v7, p0, p1}, Lsun/security/x509/X509Key;-><init>(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    .line 284
    .local v7, "result":Lsun/security/x509/X509Key;
    goto :goto_0

    .line 248
    .end local v7    # "result":Lsun/security/x509/X509Key;
    .restart local v8    # "sunProvider":Ljava/security/Provider;
    :cond_1
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "PublicKey.X.509."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 249
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 248
    invoke-virtual {v8, v11}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    if-nez v2, :cond_2

    .line 251
    new-instance v11, Ljava/lang/InstantiationException;

    invoke-direct {v11}, Ljava/lang/InstantiationException;-><init>()V

    throw v11
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 277
    .end local v8    # "sunProvider":Ljava/security/Provider;
    :catch_3
    move-exception v11

    goto :goto_1

    .line 254
    .restart local v8    # "sunProvider":Ljava/security/Provider;
    :cond_2
    const/4 v5, 0x0

    .line 256
    .local v5, "keyClass":Ljava/lang/Class;
    :try_start_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    .line 264
    :cond_3
    :goto_2
    const/4 v4, 0x0

    .line 267
    .local v4, "inst":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 268
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 269
    .end local v4    # "inst":Ljava/lang/Object;
    :cond_4
    instance-of v11, v4, Lsun/security/x509/X509Key;

    if-eqz v11, :cond_0

    .line 270
    move-object v0, v4

    check-cast v0, Lsun/security/x509/X509Key;

    move-object v7, v0

    .line 271
    .restart local v7    # "result":Lsun/security/x509/X509Key;
    iput-object p0, v7, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 272
    invoke-virtual {v7, p1}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    .line 273
    invoke-virtual {v7}, Lsun/security/x509/X509Key;->parseKeyBits()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 278
    .end local v5    # "keyClass":Ljava/lang/Class;
    .end local v7    # "result":Lsun/security/x509/X509Key;
    .end local v8    # "sunProvider":Ljava/security/Provider;
    :catch_4
    move-exception v3

    .line 280
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " [internal error]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 257
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v5    # "keyClass":Ljava/lang/Class;
    .restart local v8    # "sunProvider":Ljava/security/Provider;
    :catch_5
    move-exception v3

    .line 258
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_5
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 259
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_3

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v5

    goto :goto_2
.end method

.method static encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V
    .locals 2
    .param p0, "out"    # Lsun/security/util/DerOutputStream;
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 479
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {p1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 480
    invoke-virtual {v0, p2}, Lsun/security/util/DerOutputStream;->putUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 481
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 482
    return-void
.end method

.method public static parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 171
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "corrupt subject key"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_0
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    .line 175
    .local v0, "algorithm":Lsun/security/x509/AlgorithmId;
    :try_start_0
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 176
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v3

    .line 175
    invoke-static {v0, v3}, Lsun/security/x509/X509Key;->buildX509Key(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 183
    .local v2, "subjectKey":Ljava/security/PublicKey;
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "excess subject key"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    .end local v2    # "subjectKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subject key, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    .restart local v2    # "subjectKey":Ljava/security/PublicKey;
    :cond_1
    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/x509/X509Key;->decode(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 429
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deserialized key is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 430
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 418
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 391
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 392
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 393
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "invalid key format"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v1    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 404
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "val":Lsun/security/util/DerValue;
    :cond_0
    :try_start_1
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 396
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    .line 397
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->parseKeyBits()V

    .line 398
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "excess key data"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    :cond_1
    return-void
.end method

.method public decode([B)V
    .locals 1
    .param p1, "encodedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lsun/security/x509/X509Key;->decode(Ljava/io/InputStream;)V

    .line 410
    return-void
.end method

.method public final encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getKey()Lsun/security/util/BitArray;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    .line 307
    return-void
.end method

.method public encode()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 435
    if-ne p0, p1, :cond_1

    .line 436
    const/4 v3, 0x1

    .line 451
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 438
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljava/security/Key;

    if-eqz v4, :cond_0

    .line 442
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v2

    .line 444
    .local v2, "thisEncoded":[B
    instance-of v4, p1, Lsun/security/x509/X509Key;

    if-eqz v4, :cond_2

    .line 445
    check-cast p1, Lsun/security/x509/X509Key;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v1

    .line 449
    .local v1, "otherEncoded":[B
    :goto_1
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_0

    .line 447
    .end local v1    # "otherEncoded":[B
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    check-cast p1, Ljava/security/Key;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "otherEncoded":[B
    goto :goto_1

    .line 450
    .end local v1    # "otherEncoded":[B
    .end local v2    # "thisEncoded":[B
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/security/InvalidKeyException;
    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 314
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-object v0

    .line 315
    :catch_0
    move-exception v0

    .line 318
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncodedInternal()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v1, p0, Lsun/security/x509/X509Key;->encodedKey:[B

    .line 323
    .local v1, "encoded":[B
    if-nez v1, :cond_0

    .line 325
    :try_start_0
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 326
    .local v2, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v2}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;)V

    .line 327
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    iput-object v1, p0, Lsun/security/x509/X509Key;->encodedKey:[B

    .line 334
    .end local v2    # "out":Lsun/security/util/DerOutputStream;
    :cond_0
    return-object v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 330
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    const-string/jumbo v0, "X.509"

    return-object v0
.end method

.method protected getKey()Lsun/security/util/BitArray;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lsun/security/util/BitArray;

    iget-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lsun/security/x509/X509Key;->unusedBits:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lsun/security/x509/X509Key;->key:[B

    invoke-direct {v0, v1, v2}, Lsun/security/util/BitArray;-><init>(I[B)V

    iput-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 148
    iget-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    invoke-virtual {v0}, Lsun/security/util/BitArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/BitArray;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 461
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    .line 462
    .local v0, "b1":[B
    array-length v3, v0

    .line 463
    .local v3, "r":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 464
    aget-byte v4, v0, v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v4, v4, 0x25

    add-int/2addr v3, v4

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "b1":[B
    .end local v2    # "i":I
    .end local v3    # "r":I
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Ljava/security/InvalidKeyException;
    const/4 v3, 0x0

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :cond_0
    return v3
.end method

.method protected parseKeyBits()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->encode()[B

    .line 204
    return-void
.end method

.method protected setKey(Lsun/security/util/BitArray;)V
    .locals 2
    .param p1, "key"    # Lsun/security/util/BitArray;

    .prologue
    .line 119
    invoke-virtual {p1}, Lsun/security/util/BitArray;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/BitArray;

    iput-object v1, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 125
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    .line 126
    invoke-virtual {p1}, Lsun/security/util/BitArray;->length()I

    move-result v1

    rem-int/lit8 v0, v1, 0x8

    .line 127
    .local v0, "remaining":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lsun/security/x509/X509Key;->unusedBits:I

    .line 129
    return-void

    .line 127
    :cond_0
    rsub-int/lit8 v1, v0, 0x8

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 360
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "algorithm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", unparsed keybits = \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Key;->key:[B

    .line 361
    invoke-virtual {v0, v2}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    return-object v1
.end method
