.class public final Lsun/security/x509/AccessDescription;
.super Ljava/lang/Object;
.source "AccessDescription.java"


# static fields
.field public static final Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private accessLocation:Lsun/security/x509/GeneralName;

.field private accessMethod:Lsun/security/util/ObjectIdentifier;

.field private myhash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 48
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 51
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    .line 54
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    .line 57
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

    .line 56
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
    .end array-data

    .line 50
    :array_1
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x2
    .end array-data

    .line 53
    :array_2
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x3
    .end array-data

    .line 56
    :array_3
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x5
    .end array-data
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lsun/security/x509/AccessDescription;->myhash:I

    .line 60
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 61
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    .line 62
    new-instance v1, Lsun/security/x509/GeneralName;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    .line 63
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 75
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 76
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    .line 77
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 78
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-eqz p1, :cond_0

    instance-of v3, p1, Lsun/security/x509/AccessDescription;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 96
    :cond_1
    :goto_0
    return v1

    :cond_2
    move-object v0, p1

    .line 91
    check-cast v0, Lsun/security/x509/AccessDescription;

    .line 93
    .local v0, "that":Lsun/security/x509/AccessDescription;
    if-eq p0, v0, :cond_1

    .line 96
    iget-object v3, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    .line 97
    invoke-virtual {v0}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAccessLocation()Lsun/security/x509/GeneralName;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    return-object v0
.end method

.method public getAccessMethod()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    .line 84
    :cond_0
    iget v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "method":Ljava/lang/String;
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string/jumbo v0, "caIssuers"

    .line 113
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n   accessMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n   accessLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    .line 114
    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    return-object v1

    .line 104
    :cond_0
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const-string/jumbo v0, "caRepository"

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    const-string/jumbo v0, "timeStamping"

    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    const-string/jumbo v0, "ocsp"

    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
