.class public Lsun/security/pkcs/PKCS7;
.super Ljava/lang/Object;
.source "PKCS7.java"


# instance fields
.field private certIssuerNames:[Ljava/security/Principal;

.field private certificates:[Ljava/security/cert/X509Certificate;

.field private contentInfo:Lsun/security/pkcs/ContentInfo;

.field private contentType:Lsun/security/util/ObjectIdentifier;

.field private crls:[Ljava/security/cert/X509CRL;

.field private digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

.field private oldStyle:Z

.field private signerInfos:[Lsun/security/pkcs/SignerInfo;

.field private version:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 71
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 72
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 73
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 74
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 75
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 90
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    .line 92
    .local v0, "data":[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 94
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {p0, v2}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 73
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 74
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 75
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 105
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    .line 106
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 71
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 72
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 73
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 74
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 75
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 77
    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 117
    :try_start_0
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 118
    .local v0, "derin":Lsun/security/util/DerInputStream;
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-void

    .line 119
    .end local v0    # "derin":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "ioe1":Ljava/io/IOException;
    new-instance v2, Lsun/security/pkcs/ParsingException;

    const-string/jumbo v3, "Unable to parse the encoded bytes"

    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 123
    throw v2
.end method

.method public constructor <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun/security/pkcs/SignerInfo;)V
    .locals 1
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 73
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 74
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 75
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 192
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 193
    iput-object p1, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 194
    iput-object p2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 195
    iput-object p3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 196
    iput-object p4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 197
    return-void
.end method

.method private parse(Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 136
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->reset()V

    .line 141
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V

    .line 142
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 143
    :catch_1
    move-exception v1

    .line 144
    .local v1, "ioe1":Ljava/io/IOException;
    new-instance v2, Lsun/security/pkcs/ParsingException;

    .line 145
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 147
    throw v2
.end method

.method private parse(Lsun/security/util/DerInputStream;Z)V
    .locals 4
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v1, Lsun/security/pkcs/ContentInfo;

    invoke-direct {v1, p1, p2}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 163
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iget-object v1, v1, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 164
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v1}, Lsun/security/pkcs/ContentInfo;->getContent()Lsun/security/util/DerValue;

    move-result-object v0

    .line 166
    .local v0, "content":Lsun/security/util/DerValue;
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseSignedData(Lsun/security/util/DerValue;)V

    .line 177
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseOldSignedData(Lsun/security/util/DerValue;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseNetscapeCertChain(Lsun/security/util/DerValue;)V

    goto :goto_0

    .line 174
    :cond_2
    new-instance v1, Lsun/security/pkcs/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseNetscapeCertChain(Lsun/security/util/DerValue;)V
    .locals 13
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v5, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v10

    invoke-direct {v5, v10}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 202
    .local v5, "dis":Lsun/security/util/DerInputStream;
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v4

    .line 203
    .local v4, "contents":[Lsun/security/util/DerValue;
    array-length v10, v4

    new-array v10, v10, [Ljava/security/cert/X509Certificate;

    iput-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 205
    const/4 v3, 0x0

    .line 207
    .local v3, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string/jumbo v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 212
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v10, v4

    if-ge v7, v10, :cond_3

    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    if-nez v3, :cond_1

    .line 216
    :try_start_1
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v11, Lsun/security/x509/X509CertImpl;

    aget-object v12, v4, v7

    invoke-direct {v11, v12}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;)V

    aput-object v11, v10, v7
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :goto_2
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 212
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 218
    :cond_1
    :try_start_2
    aget-object v10, v4, v7

    invoke-virtual {v10}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v6

    .line 219
    .local v6, "encoded":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_3
    iget-object v11, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 221
    invoke-virtual {v3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    aput-object v10, v11, v7

    .line 222
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    const/4 v0, 0x0

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 225
    .end local v6    # "encoded":[B
    :catch_0
    move-exception v2

    .line 226
    .local v2, "ce":Ljava/security/cert/CertificateException;
    :goto_3
    :try_start_4
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 227
    .local v9, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v2}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 228
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_2
    throw v10

    .line 229
    :catch_1
    move-exception v8

    .line 230
    .local v8, "ioe":Ljava/io/IOException;
    :goto_5
    :try_start_5
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 231
    .restart local v9    # "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v8}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 232
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v8    # "ioe":Ljava/io/IOException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_3
    return-void

    .line 234
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "encoded":[B
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 229
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .line 225
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 208
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "encoded":[B
    .end local v7    # "i":I
    :catch_4
    move-exception v10

    goto :goto_0
.end method

.method private parseOldSignedData(Lsun/security/util/DerValue;)V
    .locals 21
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual/range {p1 .. p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v8

    .line 366
    .local v8, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 369
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v7

    .line 370
    .local v7, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v14, v7

    .line 372
    .local v14, "len":I
    new-array v0, v14, [Lsun/security/x509/AlgorithmId;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 374
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_0

    .line 375
    :try_start_0
    aget-object v15, v7, v11

    .line 376
    .local v15, "oid":Lsun/security/util/DerValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    move-object/from16 v18, v0

    invoke-static {v15}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v19

    aput-object v19, v18, v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 378
    .end local v15    # "oid":Lsun/security/util/DerValue;
    :catch_0
    move-exception v9

    .line 379
    .local v9, "e":Ljava/io/IOException;
    new-instance v18, Lsun/security/pkcs/ParsingException;

    const-string/jumbo v19, "Error parsing digest AlgorithmId IDs"

    invoke-direct/range {v18 .. v19}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 383
    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v18, Lsun/security/pkcs/ContentInfo;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 386
    const/4 v6, 0x0

    .line 388
    .local v6, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string/jumbo v18, "X.509"

    invoke-static/range {v18 .. v18}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v6

    .line 392
    :goto_1
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 393
    .local v5, "certVals":[Lsun/security/util/DerValue;
    array-length v14, v5

    .line 394
    new-array v0, v14, [Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 396
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_4

    .line 397
    const/4 v2, 0x0

    .line 399
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    if-nez v6, :cond_2

    .line 400
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v0

    new-instance v19, Lsun/security/x509/X509CertImpl;

    aget-object v20, v5, v11

    invoke-direct/range {v19 .. v20}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;)V

    aput-object v19, v18, v11
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    :goto_3
    if-eqz v2, :cond_1

    .line 419
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 396
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 402
    :cond_2
    :try_start_3
    aget-object v18, v5, v11

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v10

    .line 403
    .local v10, "encoded":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v19, v0

    .line 405
    invoke-virtual {v6, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    aput-object v18, v19, v11

    .line 406
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 407
    const/4 v2, 0x0

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 409
    .end local v10    # "encoded":[B
    :catch_1
    move-exception v4

    .line 410
    .local v4, "ce":Ljava/security/cert/CertificateException;
    :goto_4
    :try_start_5
    new-instance v16, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 411
    .local v16, "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 412
    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 418
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    .end local v16    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v2, :cond_3

    .line 419
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_3
    throw v18

    .line 413
    :catch_2
    move-exception v13

    .line 414
    .local v13, "ioe":Ljava/io/IOException;
    :goto_6
    :try_start_6
    new-instance v16, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 415
    .restart local v16    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 416
    throw v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 424
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v13    # "ioe":Ljava/io/IOException;
    .end local v16    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 427
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v17

    .line 428
    .local v17, "signerInfoVals":[Lsun/security/util/DerValue;
    move-object/from16 v0, v17

    array-length v14, v0

    .line 429
    new-array v0, v14, [Lsun/security/pkcs/SignerInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 430
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v14, :cond_5

    .line 431
    aget-object v18, v17, v11

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v12

    .line 432
    .local v12, "in":Lsun/security/util/DerInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    move-object/from16 v18, v0

    new-instance v19, Lsun/security/pkcs/SignerInfo;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    aput-object v19, v18, v11

    .line 430
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 434
    .end local v12    # "in":Lsun/security/util/DerInputStream;
    :cond_5
    return-void

    .line 418
    .end local v17    # "signerInfoVals":[Lsun/security/util/DerValue;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "encoded":[B
    :catchall_1
    move-exception v18

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .line 413
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v13

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 409
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 389
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v10    # "encoded":[B
    :catch_5
    move-exception v18

    goto/16 :goto_1
.end method

.method private parseSignedData(Lsun/security/util/DerValue;)V
    .locals 22
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual/range {p1 .. p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v9

    .line 246
    .local v9, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v9}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 249
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v8

    .line 250
    .local v8, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v15, v8

    .line 251
    .local v15, "len":I
    new-array v0, v15, [Lsun/security/x509/AlgorithmId;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 253
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v15, :cond_0

    .line 254
    :try_start_0
    aget-object v16, v8, v12

    .line 255
    .local v16, "oid":Lsun/security/util/DerValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v20

    aput-object v20, v19, v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 258
    .end local v16    # "oid":Lsun/security/util/DerValue;
    :catch_0
    move-exception v10

    .line 259
    .local v10, "e":Ljava/io/IOException;
    new-instance v17, Lsun/security/pkcs/ParsingException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error parsing digest AlgorithmId IDs: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 261
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 262
    .local v17, "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 263
    throw v17

    .line 266
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_0
    new-instance v19, Lsun/security/pkcs/ContentInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 268
    const/4 v6, 0x0

    .line 270
    .local v6, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string/jumbo v19, "X.509"

    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v6

    .line 279
    :goto_1
    invoke-virtual {v9}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    const/16 v20, -0x60

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 280
    const/16 v19, 0x2

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 282
    .local v5, "certVals":[Lsun/security/util/DerValue;
    array-length v15, v5

    .line 283
    new-array v0, v15, [Ljava/security/cert/X509Certificate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 285
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v15, :cond_4

    .line 286
    const/4 v2, 0x0

    .line 288
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    if-nez v6, :cond_2

    .line 289
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v19, v0

    new-instance v20, Lsun/security/x509/X509CertImpl;

    aget-object v21, v5, v12

    invoke-direct/range {v20 .. v21}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;)V

    aput-object v20, v19, v12
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :goto_3
    if-eqz v2, :cond_1

    .line 308
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 285
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 291
    :cond_2
    :try_start_3
    aget-object v19, v5, v12

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v11

    .line 292
    .local v11, "encoded":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v20, v0

    .line 294
    invoke-virtual {v6, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v19

    check-cast v19, Ljava/security/cert/X509Certificate;

    aput-object v19, v20, v12

    .line 295
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 296
    const/4 v2, 0x0

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 298
    .end local v11    # "encoded":[B
    :catch_1
    move-exception v4

    .line 299
    .local v4, "ce":Ljava/security/cert/CertificateException;
    :goto_4
    :try_start_5
    new-instance v17, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v17    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 301
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 307
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    .end local v17    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_0
    move-exception v19

    :goto_5
    if-eqz v2, :cond_3

    .line 308
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_3
    throw v19

    .line 302
    :catch_2
    move-exception v14

    .line 303
    .local v14, "ioe":Ljava/io/IOException;
    :goto_6
    :try_start_6
    new-instance v17, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v17    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 305
    throw v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 314
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v14    # "ioe":Ljava/io/IOException;
    .end local v17    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_4
    invoke-virtual {v9}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    const/16 v20, -0x5f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 315
    const/16 v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v7

    .line 317
    .local v7, "crlVals":[Lsun/security/util/DerValue;
    array-length v15, v7

    .line 318
    new-array v0, v15, [Ljava/security/cert/X509CRL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 320
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v15, :cond_8

    .line 321
    const/4 v2, 0x0

    .line 323
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    if-nez v6, :cond_6

    .line 324
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    move-object/from16 v19, v0

    new-instance v20, Lsun/security/x509/X509CRLImpl;

    aget-object v21, v7, v12

    invoke-direct/range {v20 .. v21}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/util/DerValue;)V

    aput-object v20, v19, v12
    :try_end_7
    .catch Ljava/security/cert/CRLException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 338
    :goto_8
    if-eqz v2, :cond_5

    .line 339
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 320
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 326
    :cond_6
    :try_start_8
    aget-object v19, v7, v12

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v11

    .line 327
    .restart local v11    # "encoded":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/security/cert/CRLException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 328
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    move-object/from16 v20, v0

    invoke-virtual {v6, v3}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v19

    check-cast v19, Ljava/security/cert/X509CRL;

    aput-object v19, v20, v12

    .line 329
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/security/cert/CRLException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 330
    const/4 v2, 0x0

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .line 332
    .end local v11    # "encoded":[B
    :catch_3
    move-exception v10

    .line 333
    .local v10, "e":Ljava/security/cert/CRLException;
    :goto_9
    :try_start_a
    new-instance v17, Lsun/security/pkcs/ParsingException;

    .line 334
    invoke-virtual {v10}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 335
    .restart local v17    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 336
    throw v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 338
    .end local v10    # "e":Ljava/security/cert/CRLException;
    .end local v17    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_1
    move-exception v19

    :goto_a
    if-eqz v2, :cond_7

    .line 339
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_7
    throw v19

    .line 345
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v7    # "crlVals":[Lsun/security/util/DerValue;
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v18

    .line 347
    .local v18, "signerInfoVals":[Lsun/security/util/DerValue;
    move-object/from16 v0, v18

    array-length v15, v0

    .line 348
    new-array v0, v15, [Lsun/security/pkcs/SignerInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 350
    const/4 v12, 0x0

    :goto_b
    if-ge v12, v15, :cond_9

    .line 351
    aget-object v19, v18, v12

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v13

    .line 352
    .local v13, "in":Lsun/security/util/DerInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    move-object/from16 v19, v0

    new-instance v20, Lsun/security/pkcs/SignerInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    aput-object v20, v19, v12

    .line 350
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 354
    .end local v13    # "in":Lsun/security/util/DerInputStream;
    :cond_9
    return-void

    .line 338
    .end local v18    # "signerInfoVals":[Lsun/security/util/DerValue;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "crlVals":[Lsun/security/util/DerValue;
    .restart local v11    # "encoded":[B
    :catchall_2
    move-exception v19

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_a

    .line 332
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v10

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .line 307
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v7    # "crlVals":[Lsun/security/util/DerValue;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "certVals":[Lsun/security/util/DerValue;
    :catchall_3
    move-exception v19

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_5

    .line 302
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v14

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_6

    .line 298
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4

    .line 271
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v11    # "encoded":[B
    :catch_7
    move-exception v19

    goto/16 :goto_1
.end method

.method private populateCertIssuerNames()V
    .locals 6

    .prologue
    .line 650
    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    .line 675
    :cond_0
    return-void

    .line 653
    :cond_1
    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    new-array v5, v5, [Ljava/security/Principal;

    iput-object v5, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    .line 654
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 655
    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v1, v5, v3

    .line 656
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 657
    .local v2, "certIssuerName":Ljava/security/Principal;
    instance-of v5, v2, Lsun/security/x509/X500Name;

    if-nez v5, :cond_2

    .line 663
    :try_start_0
    new-instance v4, Lsun/security/x509/X509CertInfo;

    .line 664
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/x509/X509CertInfo;-><init>([B)V

    .line 665
    .local v4, "tbsCert":Lsun/security/x509/X509CertInfo;
    const-string/jumbo v5, "issuer.dname"

    .line 666
    invoke-virtual {v4, v5}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/security/Principal;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .end local v4    # "tbsCert":Lsun/security/x509/X509CertInfo;
    :cond_2
    :goto_1
    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aput-object v2, v5, v3

    .line 654
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 668
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public encodeSignedData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 444
    .local v0, "derout":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->encodeSignedData(Lsun/security/util/DerOutputStream;)V

    .line 445
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 446
    return-void
.end method

.method public encodeSignedData(Lsun/security/util/DerOutputStream;)V
    .locals 10
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x31

    .line 457
    new-instance v6, Lsun/security/util/DerOutputStream;

    invoke-direct {v6}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 460
    .local v6, "signedData":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-virtual {v6, v8}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 463
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    invoke-virtual {v6, v9, v8}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 466
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v8, v6}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    .line 469
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v8, v8

    if-eqz v8, :cond_2

    .line 471
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v8, v8

    new-array v5, v8, [Lsun/security/x509/X509CertImpl;

    .line 472
    .local v5, "implCerts":[Lsun/security/x509/X509CertImpl;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 473
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v8, v8, v3

    instance-of v8, v8, Lsun/security/x509/X509CertImpl;

    if-eqz v8, :cond_0

    .line 474
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v8, v8, v3

    check-cast v8, Lsun/security/x509/X509CertImpl;

    aput-object v8, v5, v3

    .line 472
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 477
    :cond_0
    :try_start_0
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 478
    .local v2, "encoded":[B
    new-instance v8, Lsun/security/x509/X509CertImpl;

    invoke-direct {v8, v2}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    aput-object v8, v5, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 479
    .end local v2    # "encoded":[B
    :catch_0
    move-exception v1

    .line 480
    .local v1, "ce":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 481
    .local v4, "ie":Ljava/io/IOException;
    invoke-virtual {v4, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 482
    throw v4

    .line 489
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .end local v4    # "ie":Ljava/io/IOException;
    :cond_1
    const/16 v8, -0x60

    invoke-virtual {v6, v8, v5}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 495
    .end local v3    # "i":I
    .end local v5    # "implCerts":[Lsun/security/x509/X509CertImpl;
    :cond_2
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    invoke-virtual {v6, v9, v8}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 498
    new-instance v7, Lsun/security/util/DerValue;

    const/16 v8, 0x30

    .line 499
    invoke-virtual {v6}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 502
    .local v7, "signedDataSeq":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/pkcs/ContentInfo;

    sget-object v8, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v8, v7}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    .line 506
    .local v0, "block":Lsun/security/pkcs/ContentInfo;
    invoke-virtual {v0, p1}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    .line 507
    return-void
.end method

.method public getCRLs()[Ljava/security/cert/X509CRL;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    invoke-virtual {v0}, [Ljava/security/cert/X509CRL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509CRL;

    .line 608
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "serial"    # Ljava/math/BigInteger;
    .param p2, "issuerName"    # Lsun/security/x509/X500Name;

    .prologue
    .line 629
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_2

    .line 630
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    if-nez v3, :cond_0

    .line 631
    invoke-direct {p0}, Lsun/security/pkcs/PKCS7;->populateCertIssuerNames()V

    .line 632
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 633
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v0, v3, v1

    .line 634
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 635
    .local v2, "thisSerial":Ljava/math/BigInteger;
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aget-object v3, v3, v1

    .line 636
    invoke-virtual {p2, v3}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 642
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "i":I
    .end local v2    # "thisSerial":Ljava/math/BigInteger;
    :goto_1
    return-object v0

    .line 632
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "i":I
    .restart local v2    # "thisSerial":Ljava/math/BigInteger;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "i":I
    .end local v2    # "thisSerial":Ljava/math/BigInteger;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 596
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInfo()Lsun/security/pkcs/ContentInfo;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    return-object v0
.end method

.method public getDigestAlgorithmIds()[Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getSignerInfos()[Lsun/security/pkcs/SignerInfo;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isOldStyle()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 681
    const-string/jumbo v1, ""

    .line 683
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    :cond_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    if-eqz v2, :cond_1

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: digest AlgorithmIds: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_2

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: certificates: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 696
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v2, :cond_3

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: crls: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 701
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    if-eqz v2, :cond_4

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: signer infos: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 706
    .end local v0    # "i":I
    :cond_4
    return-object v1
.end method

.method public verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public verify()[Lsun/security/pkcs/SignerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public verify([B)[Lsun/security/pkcs/SignerInfo;
    .locals 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 534
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 535
    .local v1, "intResult":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/pkcs/SignerInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 537
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4, p1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 538
    .local v3, "signerInfo":Lsun/security/pkcs/SignerInfo;
    if-eqz v3, :cond_0

    .line 539
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 535
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    .end local v3    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 544
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v2, v4, [Lsun/security/pkcs/SignerInfo;

    .line 545
    .local v2, "result":[Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 548
    .end local v2    # "result":[Lsun/security/pkcs/SignerInfo;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
