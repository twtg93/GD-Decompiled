.class public Lsun/security/x509/NetscapeCertTypeExtension;
.super Lsun/security/x509/Extension;
.source "NetscapeCertTypeExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    }
.end annotation

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
.field private static final CertType_data:[I

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.NetscapeCertType"

.field public static final NAME:Ljava/lang/String; = "NetscapeCertType"

.field public static NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier; = null

.field public static final OBJECT_SIGNING:Ljava/lang/String; = "object_signing"

.field public static final OBJECT_SIGNING_CA:Ljava/lang/String; = "object_signing_ca"

.field public static final SSL_CA:Ljava/lang/String; = "ssl_ca"

.field public static final SSL_CLIENT:Ljava/lang/String; = "ssl_client"

.field public static final SSL_SERVER:Ljava/lang/String; = "ssl_server"

.field public static final S_MIME:Ljava/lang/String; = "s_mime"

.field public static final S_MIME_CA:Ljava/lang/String; = "s_mime_ca"

.field private static final mAttributeNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;


# instance fields
.field private bitString:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x7

    const/4 v1, 0x0

    .line 76
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    sput-object v2, Lsun/security/x509/NetscapeCertTypeExtension;->CertType_data:[I

    .line 85
    :try_start_0
    new-instance v2, Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->CertType_data:[I

    invoke-direct {v2, v3}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v2, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    new-array v2, v7, [Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    new-instance v3, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v4, "ssl_client"

    invoke-direct {v3, v4, v1}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v1

    new-instance v3, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v4, "ssl_server"

    invoke-direct {v3, v4, v5}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v4, "s_mime"

    invoke-direct {v3, v4, v6}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v4, "object_signing"

    invoke-direct {v3, v4, v8}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v8

    const/4 v3, 0x4

    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v5, "ssl_ca"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v5, "s_mime_ca"

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v5, "object_signing_ca"

    invoke-direct {v4, v5, v7}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    sput-object v2, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    .line 114
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    sput-object v2, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    .line 116
    sget-object v2, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    array-length v3, v2

    .local v0, "entry":Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 117
    sget-object v4, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    iget-object v5, v0, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    :cond_0
    return-void

    .line 86
    .end local v0    # "entry":Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 76
    nop

    :array_0
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 207
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 209
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 2
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 196
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 198
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    .line 199
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 200
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 201
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
    .line 165
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 166
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 167
    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 168
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 170
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 171
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
    .line 179
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 180
    iput-object p1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 181
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 183
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 184
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
    .line 132
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 133
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/BitArray;

    iget-object v2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 134
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    .line 135
    return-void
.end method

.method private static getPosition(Ljava/lang/String;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 123
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    aget-object v1, v1, v0

    iget-object v1, v1, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    aget-object v1, v1, v0

    iget v1, v1, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mPosition:I

    return v1

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attribute name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] not recognized by CertAttrSet:NetscapeCertType."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private set(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 152
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [Z

    .line 153
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    iget-object v2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 156
    .end local v0    # "tmp":[Z
    :cond_0
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    aput-boolean p2, v1, p1

    .line 157
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
    .line 235
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->set(IZ)V

    .line 236
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 237
    return-void
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
    .line 273
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 275
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 276
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 278
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 280
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 281
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 282
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 1
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
    .line 289
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getKeyUsageMappedBits()[Z
    .locals 3

    .prologue
    .line 306
    new-instance v0, Lsun/security/x509/KeyUsageExtension;

    invoke-direct {v0}, Lsun/security/x509/KeyUsageExtension;-><init>()V

    .line 307
    .local v0, "keyUsage":Lsun/security/x509/KeyUsageExtension;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 310
    .local v1, "val":Ljava/lang/Boolean;
    :try_start_0
    const-string/jumbo v2, "ssl_client"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "s_mime"

    .line 311
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "object_signing"

    .line 312
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    :cond_0
    const-string/jumbo v2, "digital_signature"

    invoke-virtual {v0, v2, v1}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    :cond_1
    const-string/jumbo v2, "ssl_server"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    const-string/jumbo v2, "key_encipherment"

    invoke-virtual {v0, v2, v1}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    :cond_2
    const-string/jumbo v2, "ssl_ca"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "s_mime_ca"

    .line 319
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "object_signing_ca"

    .line 320
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 321
    :cond_3
    const-string/jumbo v2, "key_certsign"

    invoke-virtual {v0, v2, v1}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lsun/security/x509/KeyUsageExtension;->getBits()[Z

    move-result-object v2

    return-object v2

    .line 322
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string/jumbo v0, "NetscapeCertType"

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
    .line 216
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 217
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute must be of type Boolean."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 220
    .local v0, "val":Z
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/NetscapeCertTypeExtension;->set(IZ)V

    .line 221
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "NetscapeCertType [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "ssl_client"

    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   SSL client\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_0
    const-string/jumbo v1, "ssl_server"

    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   SSL server\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_1
    const-string/jumbo v1, "s_mime"

    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   S/MIME\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_2
    const-string/jumbo v1, "object_signing"

    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   Object Signing\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_3
    const-string/jumbo v1, "ssl_ca"

    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   SSL CA\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_4
    const-string/jumbo v1, "s_mime_ca"

    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   S/MIME CA\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_5
    const-string/jumbo v1, "object_signing_ca"

    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   Object Signing CA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    :cond_6
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

    .line 263
    return-object v0

    .line 260
    :catch_0
    move-exception v1

    goto :goto_0
.end method
