.class public Lsun/security/x509/CertificateX509Key;
.super Ljava/lang/Object;
.source "CertificateX509Key.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.key"

.field public static final KEY:Ljava/lang/String; = "value"

.field public static final NAME:Ljava/lang/String; = "key"


# instance fields
.field private key:Ljava/security/PublicKey;


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
    invoke-static {v0}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    .line 67
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 2
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
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 77
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-static {v0}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    .line 78
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
    .line 140
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    .line 146
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

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
    .line 106
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 107
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 109
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 110
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
    .line 128
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

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
    .line 153
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 154
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "key"

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
    .line 116
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    check-cast p2, Ljava/security/PublicKey;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    .line 122
    return-void

    .line 119
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
