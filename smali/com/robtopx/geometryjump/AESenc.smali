.class public Lcom/robtopx/geometryjump/AESenc;
.super Ljava/lang/Object;
.source "AESenc.java"


# static fields
.field private static final ALGO:Ljava/lang/String; = "AES"

.field private static final keyValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/robtopx/geometryjump/AESenc;->keyValue:[B

    return-void

    :array_0
    .array-data 1
        0x54t
        0x68t
        0x65t
        0x42t
        0x65t
        0x73t
        0x74t
        0x53t
        0x65t
        0x63t
        0x72t
        0x65t
        0x74t
        0x4bt
        0x65t
        0x79t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "encryptedData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/robtopx/geometryjump/AESenc;->generateKey()Ljava/security/Key;

    move-result-object v3

    .line 44
    .local v3, "key":Ljava/security/Key;
    const-string/jumbo v4, "AES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 45
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 46
    new-instance v4, Lsun/misc/BASE64Decoder;

    invoke-direct {v4}, Lsun/misc/BASE64Decoder;-><init>()V

    invoke-virtual {v4, p0}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v2

    .line 47
    .local v2, "decordedValue":[B
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 48
    .local v1, "decValue":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/robtopx/geometryjump/AESenc;->generateKey()Ljava/security/Key;

    move-result-object v2

    .line 30
    .local v2, "key":Ljava/security/Key;
    const-string/jumbo v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 31
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 33
    .local v1, "encVal":[B
    new-instance v3, Lsun/misc/BASE64Encoder;

    invoke-direct {v3}, Lsun/misc/BASE64Encoder;-><init>()V

    invoke-virtual {v3, v1}, Lsun/misc/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static generateKey()Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/robtopx/geometryjump/AESenc;->keyValue:[B

    const-string/jumbo v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
