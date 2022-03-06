.class public Lsun/security/pkcs/PKCS8Key;
.super Ljava/lang/Object;
.source "PKCS8Key.java"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = -0x353f5f37736abd94L

.field public static final version:Ljava/math/BigInteger;


# instance fields
.field protected algid:Lsun/security/x509/AlgorithmId;

.field protected encodedKey:[B

.field protected key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sput-object v0, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lsun/security/x509/AlgorithmId;[B)V
    .locals 0
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 90
    iput-object p2, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 91
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B

    .line 92
    return-void
.end method

.method static buildPKCS8Key(Lsun/security/x509/AlgorithmId;[B)Ljava/security/PrivateKey;
    .locals 14
    .param p0, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v7, Lsun/security/util/DerOutputStream;

    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 183
    .local v7, "pkcs8EncodedKeyStream":Lsun/security/util/DerOutputStream;
    invoke-static {v7, p0, p1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V

    .line 184
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 185
    invoke-virtual {v7}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 189
    .local v8, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 192
    .local v6, "keyFac":Ljava/security/KeyFactory;
    invoke-virtual {v6, v8}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 249
    .end local v6    # "keyFac":Ljava/security/KeyFactory;
    :goto_0
    return-object v9

    .line 195
    :catch_0
    move-exception v11

    .line 202
    :goto_1
    const-string/jumbo v2, ""

    .line 208
    .local v2, "classname":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v11, "SUN"

    invoke-static {v11}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v10

    .line 209
    .local v10, "sunProvider":Ljava/security/Provider;
    if-nez v10, :cond_1

    .line 210
    new-instance v11, Ljava/lang/InstantiationException;

    invoke-direct {v11}, Ljava/lang/InstantiationException;-><init>()V

    throw v11
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 239
    .end local v10    # "sunProvider":Ljava/security/Provider;
    :catch_1
    move-exception v11

    .line 246
    :cond_0
    :goto_2
    new-instance v9, Lsun/security/pkcs/PKCS8Key;

    invoke-direct {v9}, Lsun/security/pkcs/PKCS8Key;-><init>()V

    .line 247
    .local v9, "result":Lsun/security/pkcs/PKCS8Key;
    iput-object p0, v9, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 248
    iput-object p1, v9, Lsun/security/pkcs/PKCS8Key;->key:[B

    goto :goto_0

    .line 211
    .end local v9    # "result":Lsun/security/pkcs/PKCS8Key;
    .restart local v10    # "sunProvider":Ljava/security/Provider;
    :cond_1
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "PrivateKey.PKCS#8."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 212
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 211
    invoke-virtual {v10, v11}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    if-nez v2, :cond_2

    .line 214
    new-instance v11, Ljava/lang/InstantiationException;

    invoke-direct {v11}, Ljava/lang/InstantiationException;-><init>()V

    throw v11
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 240
    .end local v10    # "sunProvider":Ljava/security/Provider;
    :catch_2
    move-exception v11

    goto :goto_2

    .line 217
    .restart local v10    # "sunProvider":Ljava/security/Provider;
    :cond_2
    const/4 v5, 0x0

    .line 219
    .local v5, "keyClass":Ljava/lang/Class;
    :try_start_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    .line 227
    :cond_3
    :goto_3
    const/4 v4, 0x0

    .line 230
    .local v4, "inst":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 231
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 232
    .end local v4    # "inst":Ljava/lang/Object;
    :cond_4
    instance-of v11, v4, Lsun/security/pkcs/PKCS8Key;

    if-eqz v11, :cond_0

    .line 233
    move-object v0, v4

    check-cast v0, Lsun/security/pkcs/PKCS8Key;

    move-object v9, v0

    .line 234
    .restart local v9    # "result":Lsun/security/pkcs/PKCS8Key;
    iput-object p0, v9, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 235
    iput-object p1, v9, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 236
    invoke-virtual {v9}, Lsun/security/pkcs/PKCS8Key;->parseKeyBits()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 241
    .end local v5    # "keyClass":Ljava/lang/Class;
    .end local v9    # "result":Lsun/security/pkcs/PKCS8Key;
    .end local v10    # "sunProvider":Ljava/security/Provider;
    :catch_3
    move-exception v3

    .line 243
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

    .line 220
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v5    # "keyClass":Ljava/lang/Class;
    .restart local v10    # "sunProvider":Ljava/security/Provider;
    :catch_4
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_5
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 222
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_3

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v5

    goto :goto_3

    .line 193
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "classname":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "keyClass":Ljava/lang/Class;
    .end local v10    # "sunProvider":Ljava/security/Provider;
    :catch_5
    move-exception v11

    goto/16 :goto_1
.end method

.method static encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V
    .locals 2
    .param p0, "out"    # Lsun/security/util/DerOutputStream;
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 406
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    sget-object v1, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 407
    invoke-virtual {p1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 408
    invoke-virtual {v0, p2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 409
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 410
    return-void
.end method

.method public static parse(Lsun/security/util/DerValue;)Lsun/security/pkcs/PKCS8Key;
    .locals 3
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0}, Lsun/security/pkcs/PKCS8Key;->parseKey(Lsun/security/util/DerValue;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 101
    .local v0, "key":Ljava/security/PrivateKey;
    instance-of v1, v0, Lsun/security/pkcs/PKCS8Key;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Lsun/security/pkcs/PKCS8Key;

    .end local v0    # "key":Ljava/security/PrivateKey;
    return-object v0

    .line 104
    .restart local v0    # "key":Ljava/security/PrivateKey;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Provider did not return PKCS8Key"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseKey(Lsun/security/util/DerValue;)Ljava/security/PrivateKey;
    .locals 7
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-byte v4, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-eq v4, v5, :cond_0

    .line 127
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "corrupt private key"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_0
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 130
    .local v2, "parsedVersion":Ljava/math/BigInteger;
    sget-object v4, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "version mismatch: (supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    .line 132
    invoke-static {v6}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", parsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 134
    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_1
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    .line 140
    .local v0, "algorithm":Lsun/security/x509/AlgorithmId;
    :try_start_0
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v4

    invoke-static {v0, v4}, Lsun/security/pkcs/PKCS8Key;->buildPKCS8Key(Lsun/security/x509/AlgorithmId;[B)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 146
    .local v3, "privKey":Ljava/security/PrivateKey;
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "excess private key"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    .end local v3    # "privKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "corrupt private key"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    .restart local v3    # "privKey":Ljava/security/PrivateKey;
    :cond_2
    return-object v3
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
    .line 391
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 395
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deserialized key is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 396
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 345
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 346
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v3, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 347
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "invalid key format"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v1    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 368
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "val":Lsun/security/util/DerValue;
    :cond_0
    :try_start_1
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 351
    .local v2, "version":Ljava/math/BigInteger;
    sget-object v3, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 352
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version mismatch: (supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    .line 353
    invoke-static {v5}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", parsed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 355
    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_1
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 358
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 359
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->parseKeyBits()V

    .line 361
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    :cond_2
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
    .line 373
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V

    .line 374
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
    .line 269
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    iget-object v1, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    invoke-static {p1, v0, v1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V

    .line 270
    return-void
.end method

.method public encode()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    if-nez v2, :cond_0

    .line 301
    :try_start_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 302
    .local v1, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;)V

    .line 303
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    return-object v2

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 307
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 423
    if-ne p0, p1, :cond_1

    .line 452
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 427
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Ljava/security/Key;

    if-eqz v5, :cond_5

    .line 431
    iget-object v5, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    if-eqz v5, :cond_2

    .line 432
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    .line 438
    .local v0, "b1":[B
    :goto_1
    check-cast p1, Ljava/security/Key;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 442
    .local v1, "b2":[B
    array-length v5, v0

    array-length v6, v1

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 443
    goto :goto_0

    .line 434
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v0

    .restart local v0    # "b1":[B
    goto :goto_1

    .line 444
    .end local p1    # "object":Ljava/lang/Object;
    .restart local v1    # "b2":[B
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 445
    aget-byte v5, v0, v2

    aget-byte v6, v1, v2

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 446
    goto :goto_0

    .line 444
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    .end local v2    # "i":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    move v3, v4

    .line 452
    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public declared-synchronized getEncoded()[B
    .locals 2

    .prologue
    .line 276
    monitor-enter p0

    const/4 v0, 0x0

    .line 278
    .local v0, "result":[B
    :try_start_0
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 281
    :goto_0
    monitor-exit p0

    return-object v0

    .line 279
    :catch_0
    move-exception v1

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string/jumbo v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 460
    const/4 v2, 0x0

    .line 461
    .local v2, "retval":I
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v0

    .line 463
    .local v0, "b1":[B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 464
    aget-byte v3, v0, v1

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return v2
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
    .line 166
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B

    .line 167
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 320
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "algorithm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", unparsed keybits = \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 321
    invoke-virtual {v0, v2}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    return-object v1
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Ljava/security/KeyRep;

    sget-object v1, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    .line 378
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/KeyRep;-><init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 377
    return-object v0
.end method
