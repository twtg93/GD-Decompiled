.class public Lsun/security/pkcs/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# static fields
.field public static DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static DIGESTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static ENCRYPTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

.field private static final OLD_DATA:[I

.field public static OLD_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field private static final OLD_SDATA:[I

.field public static OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static PKCS7_OID:Lsun/security/util/ObjectIdentifier;

.field public static SIGNED_AND_ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static TIMESTAMP_TOKEN_INFO_OID:Lsun/security/util/ObjectIdentifier;

.field private static crdata:[I

.field private static data:[I

.field private static ddata:[I

.field private static edata:[I

.field private static nsdata:[I

.field private static pkcs7:[I

.field private static sdata:[I

.field private static sedata:[I

.field private static tstInfo:[I


# instance fields
.field content:Lsun/security/util/DerValue;

.field contentType:Lsun/security/util/ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->pkcs7:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lsun/security/pkcs/ContentInfo;->data:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lsun/security/pkcs/ContentInfo;->sdata:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lsun/security/pkcs/ContentInfo;->edata:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lsun/security/pkcs/ContentInfo;->sedata:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lsun/security/pkcs/ContentInfo;->ddata:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lsun/security/pkcs/ContentInfo;->crdata:[I

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lsun/security/pkcs/ContentInfo;->nsdata:[I

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lsun/security/pkcs/ContentInfo;->tstInfo:[I

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_SDATA:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_DATA:[I

    .line 70
    sget-object v0, Lsun/security/pkcs/ContentInfo;->pkcs7:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->PKCS7_OID:Lsun/security/util/ObjectIdentifier;

    .line 71
    sget-object v0, Lsun/security/pkcs/ContentInfo;->data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 72
    sget-object v0, Lsun/security/pkcs/ContentInfo;->sdata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 73
    sget-object v0, Lsun/security/pkcs/ContentInfo;->edata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 74
    sget-object v0, Lsun/security/pkcs/ContentInfo;->sedata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->SIGNED_AND_ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 75
    sget-object v0, Lsun/security/pkcs/ContentInfo;->ddata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->DIGESTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 76
    sget-object v0, Lsun/security/pkcs/ContentInfo;->crdata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->ENCRYPTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 77
    sget-object v0, Lsun/security/pkcs/ContentInfo;->OLD_SDATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 78
    sget-object v0, Lsun/security/pkcs/ContentInfo;->OLD_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 85
    sget-object v0, Lsun/security/pkcs/ContentInfo;->nsdata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

    .line 86
    sget-object v0, Lsun/security/pkcs/ContentInfo;->tstInfo:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->TIMESTAMP_TOKEN_INFO_OID:Lsun/security/util/ObjectIdentifier;

    .line 87
    return-void

    .line 44
    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x1
    .end array-data

    .line 46
    :array_2
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x2
    .end array-data

    .line 47
    :array_3
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x3
    .end array-data

    .line 48
    :array_4
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x4
    .end array-data

    .line 49
    :array_5
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x5
    .end array-data

    .line 50
    :array_6
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x6
    .end array-data

    .line 51
    :array_7
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x2
        0x5
    .end array-data

    .line 53
    :array_8
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x1
        0x4
    .end array-data

    .line 55
    :array_9
    .array-data 4
        0x1
        0x2
        0x348
        0x10fdcd
        0x1
        0x7
        0x2
    .end array-data

    .line 56
    :array_a
    .array-data 4
        0x1
        0x2
        0x348
        0x10fdcd
        0x1
        0x7
        0x1
    .end array-data
.end method

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
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;Z)V
    .locals 9
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 138
    .local v5, "typeAndContent":[Lsun/security/util/DerValue;
    aget-object v4, v5, v8

    .line 139
    .local v4, "type":Lsun/security/util/DerValue;
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 140
    .local v2, "disType":Lsun/security/util/DerInputStream;
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    iput-object v6, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 142
    if-eqz p2, :cond_1

    .line 144
    aget-object v6, v5, v7

    iput-object v6, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    array-length v6, v5

    if-le v6, v7, :cond_0

    .line 151
    aget-object v3, v5, v7

    .line 152
    .local v3, "taggedContent":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/util/DerInputStream;

    .line 153
    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v6

    invoke-direct {v1, v6}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 154
    .local v1, "disTaggedContent":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v7, v7}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v0

    .line 155
    .local v0, "contents":[Lsun/security/util/DerValue;
    aget-object v6, v0, v8

    iput-object v6, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 0
    .param p1, "contentType"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "content"    # Lsun/security/util/DerValue;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 94
    iput-object p2, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    .line 95
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lsun/security/util/DerValue;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 102
    .local v0, "octetString":Lsun/security/util/DerValue;
    sget-object v1, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 103
    iput-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    .line 104
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 5
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 185
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 188
    iget-object v3, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    if-eqz v3, :cond_0

    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, "taggedContent":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 191
    .local v0, "contentDerCode":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    invoke-virtual {v3, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 194
    new-instance v2, Lsun/security/util/DerValue;

    .end local v2    # "taggedContent":Lsun/security/util/DerValue;
    const/16 v3, -0x60

    .line 195
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 196
    .restart local v2    # "taggedContent":Lsun/security/util/DerValue;
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 199
    .end local v0    # "contentDerCode":Lsun/security/util/DerOutputStream;
    .end local v2    # "taggedContent":Lsun/security/util/DerValue;
    :cond_0
    const/16 v3, 0x30

    invoke-virtual {p1, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 200
    return-void
.end method

.method public getContent()Lsun/security/util/DerValue;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    return-object v0
.end method

.method public getContentBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v1, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    if-nez v1, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 211
    :goto_0
    return-object v1

    .line 210
    :cond_0
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 211
    .local v0, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getContentType()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/pkcs/ContentInfo;->OLD_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 170
    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/pkcs/ContentInfo;->TIMESTAMP_TOKEN_INFO_OID:Lsun/security/util/ObjectIdentifier;

    .line 171
    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_0
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    if-nez v0, :cond_1

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content type is not DATA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    const-string/jumbo v0, ""

    .line 217
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Content Info Sequence\n\tContent type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\tContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    return-object v0
.end method
