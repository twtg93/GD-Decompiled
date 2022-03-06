.class public Lcom/customRobTop/SimpleCrypto;
.super Ljava/lang/Object;
.source "SimpleCrypto.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 135
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    return-void
.end method

.method public static decrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "enc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/customRobTop/SimpleCrypto;->getRawKey([B)[B

    move-result-object v0

    .line 71
    .local v0, "rawKey":[B
    invoke-static {v0, p1}, Lcom/customRobTop/SimpleCrypto;->decrypt([B[B)[B

    move-result-object v1

    .line 73
    .local v1, "result":[B
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 74
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private static decrypt([B[B)[B
    .locals 5
    .param p0, "raw"    # [B
    .param p1, "encrypted"    # [B

    .prologue
    .line 98
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES/ECB/PKCS5Padding"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 99
    .local v3, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 100
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 101
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static eK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "y27vyZlpIJk2C8wd"

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "cleartext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/customRobTop/SimpleCrypto;->getRawKey([B)[B

    move-result-object v0

    .line 63
    .local v0, "rawKey":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/customRobTop/SimpleCrypto;->encrypt([B[B)[B

    move-result-object v1

    .line 64
    .local v1, "result":[B
    return-object v1
.end method

.method private static encrypt([B[B)[B
    .locals 4
    .param p0, "raw"    # [B
    .param p1, "clear"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES/ECB/PKCS5Padding"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 90
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 91
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 92
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 93
    .local v1, "encrypted":[B
    return-object v1
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/customRobTop/SimpleCrypto;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static getRawKey([B)[B
    .locals 5
    .param p0, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 79
    .local v0, "kgen":Ljavax/crypto/KeyGenerator;
    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 80
    .local v3, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 81
    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 82
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 83
    .local v2, "skey":Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 84
    .local v1, "raw":[B
    return-object v1
.end method

.method public static loadAndDecryptFileToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v6, "inFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v4, ""

    .line 58
    :goto_0
    return-object v4

    .line 45
    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 47
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 50
    .local v0, "b":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_1

    .line 54
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 56
    .local v2, "bytes":[B
    invoke-static {}, Lcom/customRobTop/SimpleCrypto;->eK()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/customRobTop/SimpleCrypto;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "decrypted":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 51
    .end local v2    # "bytes":[B
    .end local v4    # "decrypted":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method public static saveAndEncryptStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/customRobTop/SimpleCrypto;->eK()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/customRobTop/SimpleCrypto;->encrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 31
    .local v1, "enc":[B
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 33
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 35
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 36
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 37
    return-void
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 118
    .local v1, "len":I
    new-array v2, v1, [B

    .line 119
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 121
    return-object v2

    .line 120
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/customRobTop/SimpleCrypto;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    const-string v2, ""

    .line 131
    :goto_0
    return-object v2

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 128
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 129
    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/customRobTop/SimpleCrypto;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
