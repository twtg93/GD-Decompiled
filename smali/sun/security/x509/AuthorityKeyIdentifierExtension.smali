.class public Lsun/security/x509/AuthorityKeyIdentifierExtension;
.super Lsun/security/x509/Extension;
.source "AuthorityKeyIdentifierExtension.java"

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
.field public static final AUTH_NAME:Ljava/lang/String; = "auth_name"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.AuthorityKeyIdentifier"

.field public static final KEY_ID:Ljava/lang/String; = "key_id"

.field public static final NAME:Ljava/lang/String; = "AuthorityKeyIdentifier"

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final TAG_ID:B = 0x0t

.field private static final TAG_NAMES:B = 0x1t

.field private static final TAG_SERIAL_NUM:B = 0x2t


# instance fields
.field private id:Lsun/security/x509/KeyIdentifier;

.field private names:Lsun/security/x509/GeneralNames;

.field private serialNum:Lsun/security/x509/SerialNumber;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 79
    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 80
    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    .line 81
    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    .line 149
    sget-object v2, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    .line 152
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    .line 153
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 154
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v4, :cond_1

    .line 155
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding for AuthorityKeyIdentifierExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    .local v0, "opt":Lsun/security/util/DerValue;
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 173
    new-instance v2, Lsun/security/x509/KeyIdentifier;

    invoke-direct {v2, v0}, Lsun/security/x509/KeyIdentifier;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 162
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_1
    :goto_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_7

    .line 163
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 168
    .restart local v0    # "opt":Lsun/security/util/DerValue;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 169
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    if-eqz v2, :cond_0

    .line 170
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate KeyIdentifier in AuthorityKeyIdentifier."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_3

    .line 178
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate GeneralNames in AuthorityKeyIdentifier."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_3
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 181
    new-instance v2, Lsun/security/x509/GeneralNames;

    invoke-direct {v2, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 184
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 185
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    if-eqz v2, :cond_5

    .line 186
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate SerialNumber in AuthorityKeyIdentifier."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_5
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 189
    new-instance v2, Lsun/security/x509/SerialNumber;

    invoke-direct {v2, v0}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    goto :goto_0

    .line 191
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of AuthorityKeyIdentifierExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_7
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/KeyIdentifier;Lsun/security/x509/GeneralNames;Lsun/security/x509/SerialNumber;)V
    .locals 1
    .param p1, "kid"    # Lsun/security/x509/KeyIdentifier;
    .param p2, "name"    # Lsun/security/x509/GeneralNames;
    .param p3, "sn"    # Lsun/security/x509/SerialNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 79
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 80
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    .line 81
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    .line 130
    iput-object p1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 131
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    .line 132
    iput-object p3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    .line 134
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    .line 136
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    .line 137
    return-void
.end method

.method private encodeThis()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x80

    .line 85
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    if-nez v4, :cond_0

    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    if-nez v4, :cond_0

    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    if-nez v4, :cond_0

    .line 86
    const/4 v4, 0x0

    iput-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    .line 115
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 90
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 91
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    if-eqz v4, :cond_1

    .line 92
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 93
    .local v3, "tmp1":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v4, v3}, Lsun/security/x509/KeyIdentifier;->encode(Lsun/security/util/DerOutputStream;)V

    .line 94
    invoke-static {v7, v8, v8}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v4

    invoke-virtual {v2, v4, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 98
    .end local v3    # "tmp1":Lsun/security/util/DerOutputStream;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    if-eqz v4, :cond_2

    .line 99
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 100
    .restart local v3    # "tmp1":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v4, v3}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 101
    const/16 v4, -0x80

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v4

    invoke-virtual {v2, v4, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v3    # "tmp1":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    if-eqz v4, :cond_3

    .line 108
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 109
    .restart local v3    # "tmp1":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    invoke-virtual {v4, v3}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    .line 110
    const/4 v4, 0x2

    invoke-static {v7, v8, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v4

    invoke-virtual {v2, v4, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 113
    .end local v3    # "tmp1":Lsun/security/util/DerOutputStream;
    :cond_3
    const/16 v4, 0x30

    invoke-virtual {v1, v4, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 114
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
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

    .line 279
    const-string/jumbo v0, "key_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 289
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    .line 290
    return-void

    .line 281
    :cond_0
    const-string/jumbo v0, "auth_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    goto :goto_0

    .line 283
    :cond_1
    const-string/jumbo v0, "serial_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    goto :goto_0

    .line 286
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

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
    .line 220
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 221
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 222
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 223
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    .line 224
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    .line 226
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 227
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 228
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
    .line 263
    const-string/jumbo v0, "key_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 268
    :goto_0
    return-object v0

    .line 265
    :cond_0
    const-string/jumbo v0, "auth_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    goto :goto_0

    .line 267
    :cond_1
    const-string/jumbo v0, "serial_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    goto :goto_0

    .line 270
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

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
    .line 297
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 298
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "key_id"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 299
    const-string/jumbo v1, "auth_name"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 300
    const-string/jumbo v1, "serial_number"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 302
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const-string/jumbo v0, "AuthorityKeyIdentifier"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const-string/jumbo v0, "key_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    instance-of v0, p2, Lsun/security/x509/KeyIdentifier;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type KeyIdentifier."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    check-cast p2, Lsun/security/x509/KeyIdentifier;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 256
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    .line 257
    return-void

    .line 240
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "auth_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    instance-of v0, p2, Lsun/security/x509/GeneralNames;

    if-nez v0, :cond_2

    .line 242
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type GeneralNames."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2
    check-cast p2, Lsun/security/x509/GeneralNames;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    goto :goto_0

    .line 246
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v0, "serial_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    instance-of v0, p2, Lsun/security/x509/SerialNumber;

    if-nez v0, :cond_4

    .line 248
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type SerialNumber."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_4
    check-cast p2, Lsun/security/x509/SerialNumber;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    goto :goto_0

    .line 253
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "AuthorityKeyIdentifier [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v2}, Lsun/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_0
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_1

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_1
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    if-eqz v1, :cond_2

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    invoke-virtual {v2}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
