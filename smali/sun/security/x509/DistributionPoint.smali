.class public Lsun/security/x509/DistributionPoint;
.super Ljava/lang/Object;
.source "DistributionPoint.java"


# static fields
.field public static final AA_COMPROMISE:I = 0x8

.field public static final AFFILIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x7

.field private static final REASON_STRINGS:[Ljava/lang/String;

.field public static final SUPERSEDED:I = 0x4

.field private static final TAG_DIST_PT:B = 0x0t

.field private static final TAG_FULL_NAME:B = 0x0t

.field private static final TAG_ISSUER:B = 0x2t

.field private static final TAG_REASONS:B = 0x1t

.field private static final TAG_REL_NAME:B = 0x1t


# instance fields
.field private crlIssuer:Lsun/security/x509/GeneralNames;

.field private fullName:Lsun/security/x509/GeneralNames;

.field private volatile hashCode:I

.field private reasonFlags:[Z

.field private relativeName:Lsun/security/x509/RDN;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "key compromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "CA compromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "affiliation changed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "cessation of operation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "certificate hold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "privilege withdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "AA compromise"

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x30

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v3, :cond_1

    .line 192
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    .local v1, "opt":Lsun/security/util/DerValue;
    :cond_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 207
    .local v0, "distPnt":Lsun/security/util/DerValue;
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 210
    new-instance v2, Lsun/security/x509/GeneralNames;

    invoke-direct {v2, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    .line 198
    .end local v0    # "distPnt":Lsun/security/util/DerValue;
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_1
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_a

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_a

    .line 199
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 201
    .restart local v1    # "opt":Lsun/security/util/DerValue;
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 202
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v2, :cond_2

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v2, :cond_0

    .line 203
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate DistributionPointName in DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    .restart local v0    # "distPnt":Lsun/security/util/DerValue;
    :cond_3
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 212
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 213
    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 214
    new-instance v2, Lsun/security/x509/RDN;

    invoke-direct {v2, v0}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    goto :goto_0

    .line 216
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid DistributionPointName in DistributionPoint"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    .end local v0    # "distPnt":Lsun/security/util/DerValue;
    :cond_5
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 220
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 221
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v2, :cond_6

    .line 222
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate Reasons in DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_6
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 226
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    goto :goto_0

    .line 227
    :cond_7
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 228
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 229
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_8

    .line 230
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate CRLIssuer in DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_8
    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 234
    new-instance v2, Lsun/security/x509/GeneralNames;

    invoke-direct {v2, v1}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    goto/16 :goto_0

    .line 236
    :cond_9
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_a
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-nez v2, :cond_b

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v2, :cond_b

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-nez v2, :cond_b

    .line 241
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "One of fullName, relativeName,  and crlIssuer has to be set"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_b
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V
    .locals 2
    .param p1, "fullName"    # Lsun/security/x509/GeneralNames;
    .param p2, "reasonFlags"    # [Z
    .param p3, "crlIssuer"    # Lsun/security/x509/GeneralNames;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    if-nez p1, :cond_0

    if-nez p3, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fullName and crlIssuer may not both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    .line 158
    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    .line 159
    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    .line 160
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/RDN;[ZLsun/security/x509/GeneralNames;)V
    .locals 2
    .param p1, "relativeName"    # Lsun/security/x509/RDN;
    .param p2, "reasonFlags"    # [Z
    .param p3, "crlIssuer"    # Lsun/security/x509/GeneralNames;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    if-nez p1, :cond_0

    if-nez p3, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "relativeName and crlIssuer may not both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    .line 180
    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    .line 181
    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    .line 182
    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 325
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static reasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .prologue
    .line 379
    if-lez p0, :cond_0

    sget-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 380
    sget-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 10
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0x80

    const/4 v7, 0x1

    .line 281
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 284
    .local v5, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v6, :cond_0

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v6, :cond_2

    .line 285
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 286
    .local v1, "distributionPoint":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v6, :cond_5

    .line 287
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 288
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v6, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 290
    invoke-static {v8, v7, v9}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 289
    invoke-virtual {v1, v6, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 300
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    :cond_1
    :goto_0
    invoke-static {v8, v7, v9}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 299
    invoke-virtual {v5, v6, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 303
    .end local v1    # "distributionPoint":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v6, :cond_3

    .line 304
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 305
    .local v3, "reasons":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/BitArray;

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    invoke-direct {v4, v6}, Lsun/security/util/BitArray;-><init>([Z)V

    .line 306
    .local v4, "rf":Lsun/security/util/BitArray;
    invoke-virtual {v3, v4}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 308
    invoke-static {v8, v9, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 307
    invoke-virtual {v5, v6, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 311
    .end local v3    # "reasons":Lsun/security/util/DerOutputStream;
    .end local v4    # "rf":Lsun/security/util/BitArray;
    :cond_3
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v6, :cond_4

    .line 312
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 313
    .local v2, "issuer":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v6, v2}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 314
    const/4 v6, 0x2

    .line 315
    invoke-static {v8, v7, v6}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 314
    invoke-virtual {v5, v6, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 318
    .end local v2    # "issuer":Lsun/security/util/DerOutputStream;
    :cond_4
    const/16 v6, 0x30

    invoke-virtual {p1, v6, v5}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 319
    return-void

    .line 292
    .restart local v1    # "distributionPoint":Lsun/security/util/DerOutputStream;
    :cond_5
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v6, :cond_1

    .line 293
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 294
    .restart local v0    # "derOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v6, v0}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    .line 296
    invoke-static {v8, v7, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 295
    invoke-virtual {v1, v6, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 335
    if-ne p0, p1, :cond_0

    .line 347
    :goto_0
    return v0

    .line 338
    :cond_0
    instance-of v3, p1, Lsun/security/x509/DistributionPoint;

    if-nez v3, :cond_1

    move v0, v2

    .line 339
    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 341
    check-cast v1, Lsun/security/x509/DistributionPoint;

    .line 343
    .local v1, "other":Lsun/security/x509/DistributionPoint;
    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    iget-object v4, v1, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-static {v3, v4}, Lsun/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    iget-object v4, v1, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    .line 344
    invoke-static {v3, v4}, Lsun/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    iget-object v4, v1, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    .line 345
    invoke-static {v3, v4}, Lsun/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    iget-object v4, v1, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    .line 346
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    .local v0, "equal":Z
    :goto_1
    goto :goto_0

    .end local v0    # "equal":Z
    :cond_2
    move v0, v2

    .line 346
    goto :goto_1
.end method

.method public getCRLIssuer()Lsun/security/x509/GeneralNames;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public getFullName()Lsun/security/x509/GeneralNames;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public getReasonFlags()[Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    return-object v0
.end method

.method public getRelativeName()Lsun/security/x509/RDN;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 351
    iget v0, p0, Lsun/security/x509/DistributionPoint;->hashCode:I

    .line 352
    .local v0, "hash":I
    if-nez v0, :cond_5

    .line 353
    const/4 v0, 0x1

    .line 354
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 357
    :cond_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v2}, Lsun/security/x509/RDN;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 360
    :cond_1
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 363
    :cond_2
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v2, :cond_4

    .line 364
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 365
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_3

    .line 366
    add-int/2addr v0, v1

    .line 364
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :cond_4
    iput v0, p0, Lsun/security/x509/DistributionPoint;->hashCode:I

    .line 372
    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_0

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DistributionPoint:\n     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v2, :cond_1

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DistributionPoint:\n     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_1
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v2, :cond_3

    .line 398
    const-string/jumbo v2, "   ReasonFlags:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 400
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lsun/security/x509/DistributionPoint;->reasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_4

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "   CRLIssuer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
