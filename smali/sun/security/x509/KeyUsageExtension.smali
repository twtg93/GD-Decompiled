.class public Lsun/security/x509/KeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "KeyUsageExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CRL_SIGN:Ljava/lang/String; = "crl_sign"

.field public static final DATA_ENCIPHERMENT:Ljava/lang/String; = "data_encipherment"

.field public static final DECIPHER_ONLY:Ljava/lang/String; = "decipher_only"

.field public static final DIGITAL_SIGNATURE:Ljava/lang/String; = "digital_signature"

.field public static final ENCIPHER_ONLY:Ljava/lang/String; = "encipher_only"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.KeyUsage"

.field public static final KEY_AGREEMENT:Ljava/lang/String; = "key_agreement"

.field public static final KEY_CERTSIGN:Ljava/lang/String; = "key_certsign"

.field public static final KEY_ENCIPHERMENT:Ljava/lang/String; = "key_encipherment"

.field public static final NAME:Ljava/lang/String; = "KeyUsage"

.field public static final NON_REPUDIATION:Ljava/lang/String; = "non_repudiation"


# instance fields
.field private bitString:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 181
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 183
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 4
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 156
    sget-object v2, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 167
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 168
    .local v0, "extValue":[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 169
    new-instance v2, Lsun/security/util/DerValue;

    invoke-direct {v2, v0}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    .line 173
    :goto_0
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 174
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 175
    return-void

    .line 171
    .end local v1    # "val":Lsun/security/util/DerValue;
    :cond_0
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/BitArray;)V
    .locals 1
    .param p1, "bitString"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 138
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 139
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 141
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 142
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bitString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 111
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 112
    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 113
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 115
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 116
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 1
    .param p1, "bitString"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 125
    iput-object p1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 126
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 128
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 129
    return-void
.end method

.method private encodeThis()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 78
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/BitArray;

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 79
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    .line 80
    return-void
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private set(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 97
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [Z

    .line 98
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 101
    .end local v0    # "tmp":[Z
    :cond_0
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    aput-boolean p2, v1, p1

    .line 102
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 251
    const-string/jumbo v0, "digital_signature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0, v1, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    .line 273
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 274
    return-void

    .line 253
    :cond_0
    const-string/jumbo v0, "non_repudiation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 255
    :cond_1
    const-string/jumbo v0, "key_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 257
    :cond_2
    const-string/jumbo v0, "data_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 259
    :cond_3
    const-string/jumbo v0, "key_agreement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 261
    :cond_4
    const-string/jumbo v0, "key_certsign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 263
    :cond_5
    const-string/jumbo v0, "crl_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    const/4 v0, 0x6

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 265
    :cond_6
    const-string/jumbo v0, "encipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    const/4 v0, 0x7

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 267
    :cond_7
    const-string/jumbo v0, "decipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    const/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 270
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 326
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 327
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 329
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 331
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 332
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 333
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const-string/jumbo v0, "digital_signature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 225
    :cond_0
    const-string/jumbo v0, "non_repudiation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_1
    const-string/jumbo v0, "key_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_2
    const-string/jumbo v0, "data_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_3
    const-string/jumbo v0, "key_agreement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_4
    const-string/jumbo v0, "key_certsign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_5
    const-string/jumbo v0, "crl_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 236
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_6
    const-string/jumbo v0, "encipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 239
    :cond_7
    const-string/jumbo v0, "decipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 240
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 242
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBits()[Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 341
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "digital_signature"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 342
    const-string/jumbo v1, "non_repudiation"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 343
    const-string/jumbo v1, "key_encipherment"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 344
    const-string/jumbo v1, "data_encipherment"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 345
    const-string/jumbo v1, "key_agreement"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 346
    const-string/jumbo v1, "key_certsign"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 347
    const-string/jumbo v1, "crl_sign"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 348
    const-string/jumbo v1, "encipher_only"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 349
    const-string/jumbo v1, "decipher_only"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 351
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    const-string/jumbo v0, "KeyUsage"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute must be of type Boolean."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 194
    .local v0, "val":Z
    const-string/jumbo v1, "digital_signature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    .line 216
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 217
    return-void

    .line 196
    :cond_1
    const-string/jumbo v1, "non_repudiation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 198
    :cond_2
    const-string/jumbo v1, "key_encipherment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 200
    :cond_3
    const-string/jumbo v1, "data_encipherment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 202
    :cond_4
    const-string/jumbo v1, "key_agreement"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 204
    :cond_5
    const-string/jumbo v1, "key_certsign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 205
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 206
    :cond_6
    const-string/jumbo v1, "crl_sign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 207
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 208
    :cond_7
    const-string/jumbo v1, "encipher_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 209
    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 210
    :cond_8
    const-string/jumbo v1, "decipher_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 211
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 213
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "KeyUsage [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  DigitalSignature\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Non_repudiation\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Key_Encipherment\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Data_Encipherment\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Key_Agreement\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_4
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Key_CertSign\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_5
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Crl_Sign\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_6
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Encipher_Only\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_7
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Decipher_Only\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 312
    :cond_8
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    return-object v0

    .line 310
    :catch_0
    move-exception v1

    goto :goto_0
.end method
