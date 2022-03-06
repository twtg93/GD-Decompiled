.class public Lsun/security/pkcs/SignerInfo;
.super Ljava/lang/Object;
.source "SignerInfo.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# instance fields
.field authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field certificateSerialNumber:Ljava/math/BigInteger;

.field digestAlgorithmId:Lsun/security/x509/AlgorithmId;

.field digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

.field encryptedDigest:[B

.field issuerName:Lsun/security/x509/X500Name;

.field unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field version:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;Z)V
    .locals 8
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 125
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v0

    .line 126
    .local v0, "issuerAndSerialNumber":[Lsun/security/util/DerValue;
    aget-object v3, v0, v6

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    .line 127
    .local v1, "issuerBytes":[B
    new-instance v3, Lsun/security/x509/X500Name;

    new-instance v4, Lsun/security/util/DerValue;

    const/16 v5, 0x30

    invoke-direct {v4, v5, v1}, Lsun/security/util/DerValue;-><init>(B[B)V

    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 129
    aget-object v3, v0, v7

    invoke-virtual {v3}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 132
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 134
    .local v2, "tmp":Lsun/security/util/DerValue;
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 137
    if-eqz p2, :cond_2

    .line 140
    invoke-virtual {p1, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 153
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 156
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 159
    if-eqz p2, :cond_3

    .line 162
    invoke-virtual {p1, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 174
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    new-instance v3, Lsun/security/pkcs/ParsingException;

    const-string/jumbo v4, "extra data at the end"

    invoke-direct {v3, v4}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, -0x60

    if-ne v3, v4, :cond_0

    .line 145
    new-instance v3, Lsun/security/pkcs/PKCS9Attributes;

    invoke-direct {v3, p1}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, -0x5f

    if-ne v3, v4, :cond_1

    .line 168
    new-instance v3, Lsun/security/pkcs/PKCS9Attributes;

    invoke-direct {v3, p1, v7}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    goto :goto_1

    .line 177
    :cond_4
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/PKCS9Attributes;Lsun/security/x509/AlgorithmId;[BLsun/security/pkcs/PKCS9Attributes;)V
    .locals 1
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "authenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;
    .param p5, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p6, "encryptedDigest"    # [B
    .param p7, "unauthenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 90
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 91
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 92
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 93
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 94
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 95
    iput-object p6, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 96
    iput-object p7, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 97
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/x509/AlgorithmId;[B)V
    .locals 1
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p5, "encryptedDigest"    # [B

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 75
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 76
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 77
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 78
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 79
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 80
    return-void
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x30

    .line 194
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 195
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 196
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 197
    .local v0, "issuerAndSerialNumber":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {v3, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 198
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 199
    invoke-virtual {v1, v5, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 201
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 204
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/16 v4, -0x60

    invoke-virtual {v3, v4, v1}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    .line 207
    :cond_0
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 209
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 212
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/16 v4, -0x5f

    invoke-virtual {v3, v4, v1}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    .line 215
    :cond_1
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 216
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {v2, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 218
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 219
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SignerInfo;->derEncode(Ljava/io/OutputStream;)V

    .line 182
    return-void
.end method

.method public getAuthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    return-object v0
.end method

.method public getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {p1, v0, v1}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/pkcs/PKCS7;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v8, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v9, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {p1, v8, v9}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 240
    .local v7, "userCert":Ljava/security/cert/X509Certificate;
    if-nez v7, :cond_1

    .line 241
    const/4 v0, 0x0

    .line 283
    :cond_0
    :goto_0
    return-object v0

    .line 243
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 247
    .local v4, "pkcsCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_0

    .line 248
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 252
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 253
    .local v2, "issuer":Ljava/security/Principal;
    const/4 v5, 0x0

    .line 255
    .local v5, "start":I
    :cond_2
    const/4 v3, 0x0

    .line 256
    .local v3, "match":Z
    move v1, v5

    .line 257
    .local v1, "i":I
    :goto_1
    array-length v8, v4

    if-ge v1, v8, :cond_3

    .line 258
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 260
    aget-object v8, v4, v1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    aget-object v9, v4, v1

    .line 264
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    .line 263
    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 265
    array-length v5, v4

    .line 273
    :goto_2
    const/4 v3, 0x1

    .line 279
    :cond_3
    if-nez v3, :cond_2

    goto :goto_0

    .line 267
    :cond_4
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 268
    aget-object v6, v4, v5

    .line 269
    .local v6, "tmpCert":Ljava/security/cert/X509Certificate;
    aget-object v8, v4, v1

    aput-object v8, v4, v5

    .line 270
    aput-object v6, v4, v1

    .line 271
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 276
    .end local v6    # "tmpCert":Ljava/security/cert/X509Certificate;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCertificateSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getEncryptedDigest()[B
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    return-object v0
.end method

.method public getIssuerName()Lsun/security/x509/X500Name;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 456
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 458
    .local v0, "hexDump":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v1, ""

    .line 460
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Signer Info for (issuer): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tversion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tcertificateSerialNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 463
    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tdigestAlgorithmId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_0

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tauthenticatedAttributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tdigestEncryptionAlgorithmId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tencryptedDigest: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 473
    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_1

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tunauthenticatedAttributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    :cond_1
    return-object v1
.end method

.method verify(Lsun/security/pkcs/PKCS7;)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;
    .locals 24
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 293
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v5

    .line 294
    .local v5, "content":Lsun/security/pkcs/ContentInfo;
    if-nez p2, :cond_0

    .line 295
    invoke-virtual {v5}, Lsun/security/pkcs/ContentInfo;->getContentBytes()[B

    move-result-object p2

    .line 298
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/pkcs/SignerInfo;->getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "digestAlgname":Ljava/lang/String;
    const-string/jumbo v21, "SHA"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 300
    const-string/jumbo v9, "SHA1"

    .line 306
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 307
    move-object/from16 v7, p2

    .line 348
    .local v7, "dataSigned":[B
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/pkcs/SignerInfo;->getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v11

    .line 350
    .local v11, "encryptionAlgname":Ljava/lang/String;
    const-string/jumbo v21, "SHA1withDSA"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 351
    const-string/jumbo v11, "DSA"

    .line 352
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "with"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "algname":Ljava/lang/String;
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v20

    .line 355
    .local v20, "sig":Ljava/security/Signature;
    invoke-virtual/range {p0 .. p1}, Lsun/security/pkcs/SignerInfo;->getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 357
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_b

    .line 358
    const/16 p0, 0x0

    .line 413
    .end local v2    # "algname":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "dataSigned":[B
    .end local v11    # "encryptionAlgname":Ljava/lang/String;
    .end local v20    # "sig":Ljava/security/Signature;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    :cond_3
    :goto_1
    return-object p0

    .line 311
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v21, v0

    sget-object v22, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    .line 312
    invoke-virtual/range {v21 .. v22}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/util/ObjectIdentifier;

    .line 314
    .local v6, "contentType":Lsun/security/util/ObjectIdentifier;
    if-eqz v6, :cond_5

    iget-object v0, v5, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    move-object/from16 v21, v0

    .line 315
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 316
    :cond_5
    const/16 p0, 0x0

    goto :goto_1

    .line 319
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v21, v0

    sget-object v22, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 320
    invoke-virtual/range {v21 .. v22}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 323
    .local v18, "messageDigest":[B
    if-nez v18, :cond_7

    .line 324
    const/16 p0, 0x0

    goto :goto_1

    .line 326
    :cond_7
    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v17

    .line 327
    .local v17, "md":Ljava/security/MessageDigest;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 329
    .local v4, "computedMessageDigest":[B
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 330
    const/16 p0, 0x0

    goto :goto_1

    .line 331
    :cond_8
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_a

    .line 332
    aget-byte v21, v18, v12

    aget-byte v22, v4, v12

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 333
    const/16 p0, 0x0

    goto :goto_1

    .line 331
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 342
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lsun/security/pkcs/PKCS9Attributes;->getDerEncoding()[B

    move-result-object v7

    .restart local v7    # "dataSigned":[B
    goto/16 :goto_0

    .line 360
    .end local v4    # "computedMessageDigest":[B
    .end local v6    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v12    # "i":I
    .end local v17    # "md":Ljava/security/MessageDigest;
    .end local v18    # "messageDigest":[B
    .restart local v2    # "algname":Ljava/lang/String;
    .restart local v3    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v11    # "encryptionAlgname":Ljava/lang/String;
    .restart local v20    # "sig":Ljava/security/Signature;
    :cond_b
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 361
    new-instance v21, Ljava/security/SignatureException;

    const-string/jumbo v22, "Certificate has unsupported critical extension(s)"

    invoke-direct/range {v21 .. v22}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    .end local v2    # "algname":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v7    # "dataSigned":[B
    .end local v9    # "digestAlgname":Ljava/lang/String;
    .end local v11    # "encryptionAlgname":Ljava/lang/String;
    .end local v20    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v10

    .line 406
    .local v10, "e":Ljava/io/IOException;
    new-instance v21, Ljava/security/SignatureException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "IO error verifying signature:\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 407
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 369
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v2    # "algname":Ljava/lang/String;
    .restart local v3    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "content":Lsun/security/pkcs/ContentInfo;
    .restart local v7    # "dataSigned":[B
    .restart local v9    # "digestAlgname":Ljava/lang/String;
    .restart local v11    # "encryptionAlgname":Ljava/lang/String;
    .restart local v20    # "sig":Ljava/security/Signature;
    :cond_c
    :try_start_1
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 370
    .local v16, "keyUsageBits":[Z
    if-eqz v16, :cond_d

    .line 377
    :try_start_2
    new-instance v15, Lsun/security/x509/KeyUsageExtension;

    invoke-direct/range {v15 .. v16}, Lsun/security/x509/KeyUsageExtension;-><init>([Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    .local v15, "keyUsage":Lsun/security/x509/KeyUsageExtension;
    :try_start_3
    const-string/jumbo v21, "digital_signature"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    .line 384
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 386
    .local v8, "digSigAllowed":Z
    const-string/jumbo v21, "non_repudiation"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    .line 387
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 389
    .local v19, "nonRepuAllowed":Z
    if-nez v8, :cond_d

    if-nez v19, :cond_d

    .line 390
    new-instance v21, Ljava/security/SignatureException;

    const-string/jumbo v22, "Key usage restricted: cannot be used for digital signatures"

    invoke-direct/range {v21 .. v22}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1

    .line 409
    .end local v2    # "algname":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v7    # "dataSigned":[B
    .end local v8    # "digSigAllowed":Z
    .end local v9    # "digestAlgname":Ljava/lang/String;
    .end local v11    # "encryptionAlgname":Ljava/lang/String;
    .end local v15    # "keyUsage":Lsun/security/x509/KeyUsageExtension;
    .end local v16    # "keyUsageBits":[Z
    .end local v19    # "nonRepuAllowed":Z
    .end local v20    # "sig":Ljava/security/Signature;
    :catch_1
    move-exception v10

    .line 410
    .local v10, "e":Ljava/security/InvalidKeyException;
    new-instance v21, Ljava/security/SignatureException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "InvalidKey: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 378
    .end local v10    # "e":Ljava/security/InvalidKeyException;
    .restart local v2    # "algname":Ljava/lang/String;
    .restart local v3    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "content":Lsun/security/pkcs/ContentInfo;
    .restart local v7    # "dataSigned":[B
    .restart local v9    # "digestAlgname":Ljava/lang/String;
    .restart local v11    # "encryptionAlgname":Ljava/lang/String;
    .restart local v16    # "keyUsageBits":[Z
    .restart local v20    # "sig":Ljava/security/Signature;
    :catch_2
    move-exception v13

    .line 379
    .local v13, "ioe":Ljava/io/IOException;
    :try_start_4
    new-instance v21, Ljava/security/SignatureException;

    const-string/jumbo v22, "Failed to parse keyUsage extension"

    invoke-direct/range {v21 .. v22}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 396
    .end local v13    # "ioe":Ljava/io/IOException;
    :cond_d
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    .line 397
    .local v14, "key":Ljava/security/PublicKey;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 399
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/security/Signature;->update([B)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/security/Signature;->verify([B)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v21

    if-nez v21, :cond_3

    .line 413
    const/16 p0, 0x0

    goto/16 :goto_1
.end method
