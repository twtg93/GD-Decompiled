.class public Lsun/security/pkcs/SigningCertificateInfo;
.super Ljava/lang/Object;
.source "SigningCertificateInfo.java"


# instance fields
.field private ber:[B

.field private certId:[Lsun/security/pkcs/ESSCertId;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "ber"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lsun/security/pkcs/SigningCertificateInfo;->ber:[B

    .line 86
    iput-object v0, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    .line 89
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SigningCertificateInfo;->parse([B)V

    .line 90
    return-void
.end method


# virtual methods
.method public parse([B)V
    .locals 8
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 107
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 108
    .local v1, "derValue":Lsun/security/util/DerValue;
    iget-byte v4, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-eq v4, v5, :cond_0

    .line 109
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Bad encoding for signingCertificate"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    :cond_0
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v0

    .line 114
    .local v0, "certs":[Lsun/security/util/DerValue;
    array-length v4, v0

    new-array v4, v4, [Lsun/security/pkcs/ESSCertId;

    iput-object v4, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    .line 115
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 116
    iget-object v4, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    new-instance v5, Lsun/security/pkcs/ESSCertId;

    aget-object v6, v0, v2

    invoke-direct {v5, v6}, Lsun/security/pkcs/ESSCertId;-><init>(Lsun/security/util/DerValue;)V

    aput-object v5, v4, v2

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    .line 121
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v3

    .line 122
    .local v3, "policies":[Lsun/security/util/DerValue;
    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    .end local v3    # "policies":[Lsun/security/util/DerValue;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "[\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsun/security/pkcs/ESSCertId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const-string/jumbo v2, "\n]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
