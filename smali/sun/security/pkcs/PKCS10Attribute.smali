.class public Lsun/security/pkcs/PKCS10Attribute;
.super Ljava/lang/Object;
.source "PKCS10Attribute.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# instance fields
.field protected attributeId:Lsun/security/util/ObjectIdentifier;

.field protected attributeValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lsun/security/pkcs/PKCS9Attribute;)V
    .locals 1
    .param p1, "attr"    # Lsun/security/pkcs/PKCS9Attribute;

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 61
    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 100
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 2
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 61
    iput-object v1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    .line 74
    new-instance v0, Lsun/security/pkcs/PKCS9Attribute;

    invoke-direct {v0, p1}, Lsun/security/pkcs/PKCS9Attribute;-><init>(Lsun/security/util/DerValue;)V

    .line 75
    .local v0, "attr":Lsun/security/pkcs/PKCS9Attribute;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 76
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 1
    .param p1, "attributeId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "attributeValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 61
    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 90
    iput-object p2, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lsun/security/pkcs/PKCS9Attribute;

    iget-object v1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    iget-object v2, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lsun/security/pkcs/PKCS9Attribute;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    .line 114
    .local v0, "attr":Lsun/security/pkcs/PKCS9Attribute;
    invoke-virtual {v0, p1}, Lsun/security/pkcs/PKCS9Attribute;->derEncode(Ljava/io/OutputStream;)V

    .line 115
    return-void
.end method

.method public getAttributeId()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
