.class public Lsun/security/x509/CertificateIssuerUniqueIdentity;
.super Ljava/lang/Object;
.source "CertificateIssuerUniqueIdentity.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final IDENT:Ljava/lang/String; = "x509.info.issuerID"

.field public static final NAME:Ljava/lang/String; = "issuerID"


# instance fields
.field private id:Lsun/security/x509/UniqueIdentity;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 88
    .local v0, "val":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v1, v0}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/CertificateIssuerUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    .line 89
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v0, p1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun/security/x509/CertificateIssuerUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    .line 77
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v0, p1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/CertificateIssuerUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    .line 100
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/UniqueIdentity;)V
    .locals 0
    .param p1, "id"    # Lsun/security/x509/UniqueIdentity;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lsun/security/x509/CertificateIssuerUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    .line 66
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
    .line 154
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificateIssuerUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    .line 160
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateIssuerUniqueIdentity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 118
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateIssuerUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    const/16 v2, -0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    .line 120
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 121
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
    .line 142
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lsun/security/x509/CertificateIssuerUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    return-object v0

    .line 145
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateIssuerUniqueIdentity."

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
    .line 167
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 168
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string/jumbo v0, "issuerID"

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
    .line 127
    instance-of v0, p2, Lsun/security/x509/UniqueIdentity;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute must be of type UniqueIdentity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    check-cast p2, Lsun/security/x509/UniqueIdentity;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateIssuerUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    .line 136
    return-void

    .line 133
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateIssuerUniqueIdentity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lsun/security/x509/CertificateIssuerUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateIssuerUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    invoke-virtual {v0}, Lsun/security/x509/UniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
