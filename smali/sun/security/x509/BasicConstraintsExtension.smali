.class public Lsun/security/x509/BasicConstraintsExtension;
.super Lsun/security/x509/Extension;
.source "BasicConstraintsExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.BasicConstraints"

.field public static final IS_CA:Ljava/lang/String; = "is_ca"

.field public static final NAME:Ljava/lang/String; = "BasicConstraints"

.field public static final PATH_LEN:Ljava/lang/String; = "path_len"


# instance fields
.field private ca:Z

.field private pathLen:I


# direct methods
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
    .line 128
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 69
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 70
    const/4 v2, -0x1

    iput v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    .line 129
    sget-object v2, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    .line 132
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    .line 133
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 134
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 135
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of BasicConstraints"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-nez v2, :cond_2

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 143
    .local v0, "opt":Lsun/security/util/DerValue;
    iget-byte v2, v0, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 148
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 149
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_3

    .line 153
    const v2, 0x7fffffff

    iput v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    goto :goto_0

    .line 157
    :cond_3
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 158
    iget-byte v2, v0, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 159
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of BasicConstraints"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_4
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getInteger()I

    move-result v2

    iput v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Boolean;ZI)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "ca"    # Z
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    .line 111
    iput-boolean p2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 112
    iput p3, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    .line 113
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    .line 115
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    .line 116
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ca"    # Z
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lsun/security/x509/BasicConstraintsExtension;-><init>(Ljava/lang/Boolean;ZI)V

    .line 100
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
    .line 74
    iget-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    if-nez v2, :cond_0

    iget v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    if-gez v2, :cond_0

    .line 75
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    .line 89
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 79
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 81
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    if-eqz v2, :cond_1

    .line 82
    iget-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 84
    :cond_1
    iget v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    if-ltz v2, :cond_2

    .line 85
    iget v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 87
    :cond_2
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 88
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    goto :goto_0
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
    .line 249
    const-string/jumbo v0, "is_ca"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 257
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    .line 258
    return-void

    .line 251
    :cond_0
    const-string/jumbo v0, "path_len"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    goto :goto_0

    .line 254
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:BasicConstraints."

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
    .line 195
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 196
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 197
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 198
    iget-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    if-eqz v1, :cond_1

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    .line 203
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    .line 205
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 207
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 208
    return-void

    .line 201
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    goto :goto_0
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
    .line 235
    const-string/jumbo v0, "is_ca"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 237
    :cond_0
    const-string/jumbo v0, "path_len"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:BasicConstraints."

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
    .line 265
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 266
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "is_ca"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 267
    const-string/jumbo v1, "path_len"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string/jumbo v0, "BasicConstraints"

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
    .line 214
    const-string/jumbo v0, "is_ca"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 228
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    .line 229
    return-void

    .line 219
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "path_len"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 221
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Integer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    goto :goto_0

    .line 225
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:BasicConstraints."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "BasicConstraints:[\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "  CA:true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget v1, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    if-ltz v1, :cond_1

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  PathLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_1
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

    .line 180
    :cond_0
    const-string/jumbo v1, "  CA:false"

    goto :goto_0

    .line 184
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  PathLen: undefined\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
