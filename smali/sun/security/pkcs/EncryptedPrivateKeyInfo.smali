.class public Lsun/security/pkcs/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "EncryptedPrivateKeyInfo.java"


# instance fields
.field private algid:Lsun/security/x509/AlgorithmId;

.field private encoded:[B

.field private encryptedData:[B


# direct methods
.method public constructor <init>(Lsun/security/x509/AlgorithmId;[B)V
    .locals 1
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "encryptedData"    # [B

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 99
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 100
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "encoding must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 72
    .local v1, "val":Lsun/security/util/DerValue;
    const/4 v2, 0x2

    new-array v0, v2, [Lsun/security/util/DerValue;

    .line 74
    .local v0, "seq":[Lsun/security/util/DerValue;
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v0, v3

    .line 75
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v0, v4

    .line 77
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overrun, bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_1
    aget-object v2, v0, v3

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 82
    aget-object v2, v0, v3

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "encryptionAlgorithm field overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_2
    aget-object v2, v0, v4

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 87
    aget-object v2, v0, v4

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "encryptedData field overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 141
    if-ne p0, p1, :cond_1

    .line 157
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 143
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v6, p1, Lsun/security/pkcs/EncryptedPrivateKeyInfo;

    if-nez v6, :cond_2

    move v4, v5

    .line 144
    goto :goto_0

    .line 146
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v3

    .line 147
    .local v3, "thisEncrInfo":[B
    check-cast p1, Lsun/security/pkcs/EncryptedPrivateKeyInfo;

    .line 148
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v2

    .line 150
    .local v2, "otherEncrInfo":[B
    array-length v6, v3

    array-length v7, v2

    if-eq v6, v7, :cond_3

    move v4, v5

    .line 151
    goto :goto_0

    .line 152
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 153
    aget-byte v6, v3, v1

    aget-byte v7, v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v6, v7, :cond_4

    move v4, v5

    .line 154
    goto :goto_0

    .line 152
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    .end local v1    # "i":I
    .end local v2    # "otherEncrInfo":[B
    .end local v3    # "thisEncrInfo":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v4, v5

    .line 157
    goto :goto_0
.end method

.method public getAlgorithm()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 137
    :goto_0
    return-object v2

    .line 124
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 125
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 128
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 131
    iget-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 134
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 135
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    .line 137
    iget-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    goto :goto_0
.end method

.method public getEncryptedData()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, "retval":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 170
    iget-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return v1
.end method
