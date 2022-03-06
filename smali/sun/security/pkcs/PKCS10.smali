.class public Lsun/security/pkcs/PKCS10;
.super Ljava/lang/Object;
.source "PKCS10.java"


# instance fields
.field private attributeSet:Lsun/security/pkcs/PKCS10Attributes;

.field private encoded:[B

.field private subject:Lsun/security/x509/X500Name;

.field private subjectPublicKeyInfo:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lsun/security/pkcs/PKCS10;->subjectPublicKeyInfo:Ljava/security/PublicKey;

    .line 90
    new-instance v0, Lsun/security/pkcs/PKCS10Attributes;

    invoke-direct {v0}, Lsun/security/pkcs/PKCS10Attributes;-><init>()V

    iput-object v0, p0, Lsun/security/pkcs/PKCS10;->attributeSet:Lsun/security/pkcs/PKCS10Attributes;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Lsun/security/pkcs/PKCS10Attributes;)V
    .locals 0
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "attributes"    # Lsun/security/pkcs/PKCS10Attributes;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lsun/security/pkcs/PKCS10;->subjectPublicKeyInfo:Ljava/security/PublicKey;

    .line 105
    iput-object p2, p0, Lsun/security/pkcs/PKCS10;->attributeSet:Lsun/security/pkcs/PKCS10Attributes;

    .line 106
    return-void
.end method

.method public constructor <init>([B)V
    .locals 10
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    .line 134
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 135
    .local v2, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v2, v8}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v3

    .line 137
    .local v3, "seq":[Lsun/security/util/DerValue;
    array-length v7, v3

    if-eq v7, v8, :cond_0

    .line 138
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "not a PKCS #10 request"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 140
    :cond_0
    aget-object v7, v3, v9

    invoke-virtual {v7}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    .line 141
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    .line 142
    .local v1, "id":Lsun/security/x509/AlgorithmId;
    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v6

    .line 150
    .local v6, "sigData":[B
    aget-object v7, v3, v9

    iget-object v7, v7, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 151
    .local v4, "serial":Ljava/math/BigInteger;
    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 152
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "not PKCS #10 v1"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 154
    :cond_1
    new-instance v7, Lsun/security/x509/X500Name;

    aget-object v8, v3, v9

    iget-object v8, v8, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v7, v8}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v7, p0, Lsun/security/pkcs/PKCS10;->subject:Lsun/security/x509/X500Name;

    .line 155
    aget-object v7, v3, v9

    iget-object v7, v7, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    invoke-static {v7}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    move-result-object v7

    iput-object v7, p0, Lsun/security/pkcs/PKCS10;->subjectPublicKeyInfo:Ljava/security/PublicKey;

    .line 158
    aget-object v7, v3, v9

    iget-object v7, v7, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v7

    if-eqz v7, :cond_2

    .line 159
    new-instance v7, Lsun/security/pkcs/PKCS10Attributes;

    aget-object v8, v3, v9

    iget-object v8, v8, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v7, v8}, Lsun/security/pkcs/PKCS10Attributes;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v7, p0, Lsun/security/pkcs/PKCS10;->attributeSet:Lsun/security/pkcs/PKCS10Attributes;

    .line 163
    :goto_0
    aget-object v7, v3, v9

    iget-object v7, v7, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v7

    if-eqz v7, :cond_3

    .line 164
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "illegal PKCS #10 data"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 161
    :cond_2
    new-instance v7, Lsun/security/pkcs/PKCS10Attributes;

    invoke-direct {v7}, Lsun/security/pkcs/PKCS10Attributes;-><init>()V

    iput-object v7, p0, Lsun/security/pkcs/PKCS10;->attributeSet:Lsun/security/pkcs/PKCS10Attributes;

    goto :goto_0

    .line 171
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 172
    .local v5, "sig":Ljava/security/Signature;
    iget-object v7, p0, Lsun/security/pkcs/PKCS10;->subjectPublicKeyInfo:Ljava/security/PublicKey;

    invoke-virtual {v5, v7}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 173
    invoke-virtual {v5, p1}, Ljava/security/Signature;->update([B)V

    .line 174
    invoke-virtual {v5, v6}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    if-nez v7, :cond_4

    .line 175
    new-instance v7, Ljava/security/SignatureException;

    const-string/jumbo v8, "Invalid PKCS #10 signature"

    invoke-direct {v7, v8}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v5    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v7, Ljava/security/SignatureException;

    const-string/jumbo v8, "invalid key"

    invoke-direct {v7, v8}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 179
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .restart local v5    # "sig":Ljava/security/Signature;
    :cond_4
    return-void
.end method


# virtual methods
.method public encodeAndSign(Lsun/security/x509/X500Signer;)V
    .locals 7
    .param p1, "requester"    # Lsun/security/x509/X500Signer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x30

    .line 197
    iget-object v4, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    if-eqz v4, :cond_0

    .line 198
    new-instance v4, Ljava/security/SignatureException;

    const-string/jumbo v5, "request is already signed"

    invoke-direct {v4, v5}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
    :cond_0
    invoke-virtual {p1}, Lsun/security/x509/X500Signer;->getSigner()Lsun/security/x509/X500Name;

    move-result-object v4

    iput-object v4, p0, Lsun/security/pkcs/PKCS10;->subject:Lsun/security/x509/X500Name;

    .line 205
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 206
    .local v2, "scratch":Lsun/security/util/DerOutputStream;
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 207
    iget-object v4, p0, Lsun/security/pkcs/PKCS10;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v4, v2}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 208
    iget-object v4, p0, Lsun/security/pkcs/PKCS10;->subjectPublicKeyInfo:Ljava/security/PublicKey;

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 209
    iget-object v4, p0, Lsun/security/pkcs/PKCS10;->attributeSet:Lsun/security/pkcs/PKCS10Attributes;

    invoke-virtual {v4, v2}, Lsun/security/pkcs/PKCS10Attributes;->encode(Ljava/io/OutputStream;)V

    .line 211
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 212
    .local v1, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v1, v6, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 213
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    .line 214
    .local v0, "certificateRequestInfo":[B
    move-object v2, v1

    .line 219
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {p1, v0, v4, v5}, Lsun/security/x509/X500Signer;->update([BII)V

    .line 221
    invoke-virtual {p1}, Lsun/security/x509/X500Signer;->sign()[B

    move-result-object v3

    .line 226
    .local v3, "sig":[B
    invoke-virtual {p1}, Lsun/security/x509/X500Signer;->getAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 227
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    .line 232
    new-instance v1, Lsun/security/util/DerOutputStream;

    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 233
    .restart local v1    # "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v1, v6, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 234
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    .line 235
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 317
    if-ne p0, p1, :cond_1

    .line 318
    const/4 v1, 0x1

    .line 327
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 319
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lsun/security/pkcs/PKCS10;

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    if-eqz v2, :cond_0

    .line 323
    check-cast p1, Lsun/security/pkcs/PKCS10;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS10;->getEncoded()[B

    move-result-object v0

    .line 324
    .local v0, "otherEncoded":[B
    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getAttributes()Lsun/security/pkcs/PKCS10Attributes;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lsun/security/pkcs/PKCS10;->attributeSet:Lsun/security/pkcs/PKCS10Attributes;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubjectName()Lsun/security/x509/X500Name;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lsun/security/pkcs/PKCS10;->subject:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lsun/security/pkcs/PKCS10;->subjectPublicKeyInfo:Ljava/security/PublicKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "retval":I
    iget-object v2, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    if-eqz v2, :cond_0

    .line 339
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 340
    iget-object v2, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_0
    return v1
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v1, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "Cert request was not signed"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    new-instance v0, Lsun/misc/BASE64Encoder;

    invoke-direct {v0}, Lsun/misc/BASE64Encoder;-><init>()V

    .line 289
    .local v0, "encoder":Lsun/misc/BASE64Encoder;
    const-string/jumbo v1, "-----BEGIN NEW CERTIFICATE REQUEST-----"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lsun/security/pkcs/PKCS10;->encoded:[B

    invoke-virtual {v0, v1, p1}, Lsun/misc/BASE64Encoder;->encodeBuffer([BLjava/io/OutputStream;)V

    .line 291
    const-string/jumbo v1, "-----END NEW CERTIFICATE REQUEST-----"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[PKCS #10 certificate request:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/pkcs/PKCS10;->subjectPublicKeyInfo:Ljava/security/PublicKey;

    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " subject: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/pkcs/PKCS10;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">\n attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/pkcs/PKCS10;->attributeSet:Lsun/security/pkcs/PKCS10Attributes;

    .line 301
    invoke-virtual {v1}, Lsun/security/pkcs/PKCS10Attributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    return-object v0
.end method
