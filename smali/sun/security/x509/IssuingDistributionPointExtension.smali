.class public Lsun/security/x509/IssuingDistributionPointExtension;
.super Lsun/security/x509/Extension;
.source "IssuingDistributionPointExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.IssuingDistributionPoint"

.field public static final INDIRECT_CRL:Ljava/lang/String; = "indirect_crl"

.field public static final NAME:Ljava/lang/String; = "IssuingDistributionPoint"

.field public static final ONLY_ATTRIBUTE_CERTS:Ljava/lang/String; = "only_attribute_certs"

.field public static final ONLY_CA_CERTS:Ljava/lang/String; = "only_ca_certs"

.field public static final ONLY_USER_CERTS:Ljava/lang/String; = "only_user_certs"

.field public static final POINT:Ljava/lang/String; = "point"

.field public static final REASONS:Ljava/lang/String; = "reasons"

.field private static final TAG_DISTRIBUTION_POINT:B = 0x0t

.field private static final TAG_INDIRECT_CRL:B = 0x4t

.field private static final TAG_ONLY_ATTRIBUTE_CERTS:B = 0x5t

.field private static final TAG_ONLY_CA_CERTS:B = 0x2t

.field private static final TAG_ONLY_SOME_REASONS:B = 0x3t

.field private static final TAG_ONLY_USER_CERTS:B = 0x1t


# instance fields
.field private distributionPoint:Lsun/security/x509/DistributionPointName;

.field private hasOnlyAttributeCerts:Z

.field private hasOnlyCACerts:Z

.field private hasOnlyUserCerts:Z

.field private isIndirectCRL:Z

.field private revocationReasons:Lsun/security/x509/ReasonFlags;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 7
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 168
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 92
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 97
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    .line 98
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    .line 99
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    .line 100
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 101
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    .line 169
    sget-object v3, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    .line 172
    instance-of v3, p2, [B

    if-nez v3, :cond_0

    .line 173
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Illegal argument type"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_0
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    .line 177
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 178
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    .line 179
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid encoding for IssuingDistributionPointExtension."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    :cond_1
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_3

    .line 220
    :cond_2
    return-void

    .line 188
    :cond_3
    iget-object v0, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 189
    .local v0, "in":Lsun/security/util/DerInputStream;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 192
    .local v1, "opt":Lsun/security/util/DerValue;
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    new-instance v3, Lsun/security/x509/DistributionPointName;

    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 195
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/x509/DistributionPointName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    goto :goto_0

    .line 196
    :cond_4
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 197
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 198
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 199
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_0

    .line 200
    :cond_5
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 201
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 202
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 203
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_0

    .line 204
    :cond_6
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 205
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 206
    new-instance v3, Lsun/security/x509/ReasonFlags;

    invoke-direct {v3, v1}, Lsun/security/x509/ReasonFlags;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    goto :goto_0

    .line 207
    :cond_7
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 208
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 209
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 210
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_0

    .line 211
    :cond_8
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 212
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 213
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 214
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    goto/16 :goto_0

    .line 216
    :cond_9
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid encoding of IssuingDistributionPoint"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lsun/security/x509/DistributionPointName;Lsun/security/x509/ReasonFlags;ZZZZ)V
    .locals 2
    .param p1, "distributionPoint"    # Lsun/security/x509/DistributionPointName;
    .param p2, "revocationReasons"    # Lsun/security/x509/ReasonFlags;
    .param p3, "hasOnlyUserCerts"    # Z
    .param p4, "hasOnlyCACerts"    # Z
    .param p5, "hasOnlyAttributeCerts"    # Z
    .param p6, "isIndirectCRL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 92
    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 97
    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    .line 98
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    .line 99
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    .line 100
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 101
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    .line 141
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    if-nez p3, :cond_2

    if-nez p5, :cond_2

    :cond_1
    if-eqz p5, :cond_3

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 144
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only one of hasOnlyUserCerts, hasOnlyCACerts, hasOnlyAttributeCerts may be set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_3
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    .line 150
    iput-object p1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 151
    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    .line 152
    iput-boolean p3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    .line 153
    iput-boolean p4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    .line 154
    iput-boolean p5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 155
    iput-boolean p6, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    .line 156
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 157
    return-void
.end method

.method private encodeThis()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, -0x80

    .line 378
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-nez v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-nez v3, :cond_0

    .line 385
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    .line 437
    :goto_0
    return-void

    .line 390
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 392
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-eqz v3, :cond_1

    .line 393
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 394
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    invoke-virtual {v3, v2}, Lsun/security/x509/DistributionPointName;->encode(Lsun/security/util/DerOutputStream;)V

    .line 395
    invoke-static {v4, v6, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 399
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v3, :cond_2

    .line 400
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 401
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 402
    invoke-static {v4, v5, v6}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 406
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-eqz v3, :cond_3

    .line 407
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 408
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 409
    const/4 v3, 0x2

    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 413
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_3
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-eqz v3, :cond_4

    .line 414
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 415
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    invoke-virtual {v3, v2}, Lsun/security/x509/ReasonFlags;->encode(Lsun/security/util/DerOutputStream;)V

    .line 416
    const/4 v3, 0x3

    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 420
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_4
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz v3, :cond_5

    .line 421
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 422
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 423
    const/4 v3, 0x4

    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 427
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_5
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-eqz v3, :cond_6

    .line 428
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 429
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 430
    const/4 v3, 0x5

    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 434
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_6
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 435
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    const/16 v3, 0x30

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 436
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 334
    const-string/jumbo v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iput-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 357
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 358
    return-void

    .line 337
    :cond_0
    const-string/jumbo v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_0

    .line 340
    :cond_1
    const-string/jumbo v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    iput-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    goto :goto_0

    .line 343
    :cond_2
    const-string/jumbo v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_0

    .line 346
    :cond_3
    const-string/jumbo v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_0

    .line 349
    :cond_4
    const-string/jumbo v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    goto :goto_0

    .line 353
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not recognized by CertAttrSet:IssuingDistributionPointExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
    .line 237
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 238
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 239
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    .line 241
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 243
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 244
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 245
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    const-string/jumbo v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 321
    :goto_0
    return-object v0

    .line 308
    :cond_0
    const-string/jumbo v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_1
    const-string/jumbo v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    goto :goto_0

    .line 314
    :cond_2
    const-string/jumbo v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_3
    const-string/jumbo v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_4
    const-string/jumbo v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not recognized by CertAttrSet:IssuingDistributionPointExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 365
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 366
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "point"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 367
    const-string/jumbo v1, "reasons"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 368
    const-string/jumbo v1, "only_user_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 369
    const-string/jumbo v1, "only_ca_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 370
    const-string/jumbo v1, "only_attribute_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 371
    const-string/jumbo v1, "indirect_crl"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string/jumbo v0, "IssuingDistributionPoint"

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
    .line 251
    const-string/jumbo v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    instance-of v0, p2, Lsun/security/x509/DistributionPointName;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type DistributionPointName."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    check-cast p2, Lsun/security/x509/DistributionPointName;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 298
    :cond_1
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 299
    return-void

    .line 258
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    instance-of v0, p2, Lsun/security/x509/ReasonFlags;

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type ReasonFlags."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_3
    const-string/jumbo v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 266
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_0

    .line 271
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 272
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 273
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_0

    .line 278
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 279
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 280
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_8
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_0

    .line 285
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_9
    const-string/jumbo v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 286
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_a

    .line 287
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    goto/16 :goto_0

    .line 294
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not recognized by CertAttrSet:IssuingDistributionPointExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "IssuingDistributionPoint [\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    :cond_0
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    :cond_1
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "  Only contains user certs: true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    .line 457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "  Only contains CA certs: true"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "  Only contains attribute certs: true"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "  Indirect CRL: true"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 455
    :cond_2
    const-string/jumbo v1, "  Only contains user certs: false"

    goto :goto_0

    .line 459
    :cond_3
    const-string/jumbo v1, "  Only contains CA certs: false"

    goto :goto_1

    .line 463
    :cond_4
    const-string/jumbo v1, "  Only contains attribute certs: false"

    goto :goto_2

    .line 467
    :cond_5
    const-string/jumbo v1, "  Indirect CRL: false"

    goto :goto_3
.end method
