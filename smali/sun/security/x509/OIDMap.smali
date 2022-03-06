.class public Lsun/security/x509/OIDMap;
.super Ljava/lang/Object;
.source "OIDMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/OIDMap$OIDInfo;
    }
.end annotation


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String; = "x509.info.extensions.AuthorityInfoAccess"

.field private static final AUTH_KEY_IDENTIFIER:Ljava/lang/String; = "x509.info.extensions.AuthorityKeyIdentifier"

.field private static final BASIC_CONSTRAINTS:Ljava/lang/String; = "x509.info.extensions.BasicConstraints"

.field private static final CERT_ISSUER:Ljava/lang/String; = "x509.info.extensions.CertificateIssuer"

.field private static final CERT_POLICIES:Ljava/lang/String; = "x509.info.extensions.CertificatePolicies"

.field private static final CRL_DIST_POINTS:Ljava/lang/String; = "x509.info.extensions.CRLDistributionPoints"

.field private static final CRL_NUMBER:Ljava/lang/String; = "x509.info.extensions.CRLNumber"

.field private static final CRL_REASON:Ljava/lang/String; = "x509.info.extensions.CRLReasonCode"

.field private static final DELTA_CRL_INDICATOR:Ljava/lang/String; = "x509.info.extensions.DeltaCRLIndicator"

.field private static final EXT_KEY_USAGE:Ljava/lang/String; = "x509.info.extensions.ExtendedKeyUsage"

.field private static final FRESHEST_CRL:Ljava/lang/String; = "x509.info.extensions.FreshestCRL"

.field private static final INHIBIT_ANY_POLICY:Ljava/lang/String; = "x509.info.extensions.InhibitAnyPolicy"

.field private static final ISSUER_ALT_NAME:Ljava/lang/String; = "x509.info.extensions.IssuerAlternativeName"

.field private static final ISSUING_DIST_POINT:Ljava/lang/String; = "x509.info.extensions.IssuingDistributionPoint"

.field private static final KEY_USAGE:Ljava/lang/String; = "x509.info.extensions.KeyUsage"

.field private static final NAME_CONSTRAINTS:Ljava/lang/String; = "x509.info.extensions.NameConstraints"

.field private static final NETSCAPE_CERT:Ljava/lang/String; = "x509.info.extensions.NetscapeCertType"

.field private static final NetscapeCertType_data:[I

.field private static final POLICY_CONSTRAINTS:Ljava/lang/String; = "x509.info.extensions.PolicyConstraints"

.field private static final POLICY_MAPPINGS:Ljava/lang/String; = "x509.info.extensions.PolicyMappings"

.field private static final PRIVATE_KEY_USAGE:Ljava/lang/String; = "x509.info.extensions.PrivateKeyUsage"

.field private static final ROOT:Ljava/lang/String; = "x509.info.extensions"

.field private static final SUB_ALT_NAME:Ljava/lang/String; = "x509.info.extensions.SubjectAlternativeName"

.field private static final SUB_KEY_IDENTIFIER:Ljava/lang/String; = "x509.info.extensions.SubjectKeyIdentifier"

.field private static final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/OIDMap$OIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/x509/OIDMap$OIDInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 101
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/x509/OIDMap;->NetscapeCertType_data:[I

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    .line 113
    const-string/jumbo v0, "x509.info.extensions.SubjectKeyIdentifier"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.SubjectKeyIdentifierExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "x509.info.extensions.KeyUsage"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.KeyUsageExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "x509.info.extensions.PrivateKeyUsage"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.PrivateKeyUsageExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v0, "x509.info.extensions.SubjectAlternativeName"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.SubjectAlternativeNameExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v0, "x509.info.extensions.IssuerAlternativeName"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.IssuerAlternativeNameExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "x509.info.extensions.BasicConstraints"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.BasicConstraintsExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v0, "x509.info.extensions.CRLNumber"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.CRLNumberExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "x509.info.extensions.CRLReasonCode"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.CRLReasonCodeExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v0, "x509.info.extensions.NameConstraints"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.NameConstraintsExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "x509.info.extensions.PolicyMappings"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.PolicyMappingsExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "x509.info.extensions.AuthorityKeyIdentifier"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.AuthorityKeyIdentifierExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v0, "x509.info.extensions.PolicyConstraints"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.PolicyConstraintsExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, "x509.info.extensions.NetscapeCertType"

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    .line 138
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "sun.security.x509.NetscapeCertTypeExtension"

    .line 137
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "x509.info.extensions.CertificatePolicies"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.CertificatePoliciesExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "x509.info.extensions.ExtendedKeyUsage"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.ExtendedKeyUsageExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v0, "x509.info.extensions.InhibitAnyPolicy"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.InhibitAnyPolicyExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "x509.info.extensions.CRLDistributionPoints"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.CRLDistributionPointsExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v0, "x509.info.extensions.CertificateIssuer"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.CertificateIssuerExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "x509.info.extensions.AuthorityInfoAccess"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.AuthorityInfoAccessExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v0, "x509.info.extensions.IssuingDistributionPoint"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.IssuingDistributionPointExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v0, "x509.info.extensions.DeltaCRLIndicator"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.DeltaCRLIndicatorExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "x509.info.extensions.FreshestCRL"

    sget-object v1, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "sun.security.x509.FreshestCRLExtension"

    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 159
    return-void

    .line 101
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

    .line 137
    :array_1
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

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    new-instance v2, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v2, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .local v2, "objId":Lsun/security/util/ObjectIdentifier;
    new-instance v0, Lsun/security/x509/OIDMap$OIDInfo;

    invoke-direct {v0, p0, v2, p2}, Lsun/security/x509/OIDMap$OIDInfo;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 232
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    sget-object v3, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 233
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Object identifier already exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    .end local v0    # "info":Lsun/security/x509/OIDMap$OIDInfo;
    .end local v2    # "objId":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v1

    .line 228
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid Object identifier: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "info":Lsun/security/x509/OIDMap$OIDInfo;
    .restart local v2    # "objId":Lsun/security/util/ObjectIdentifier;
    :cond_0
    sget-object v3, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 237
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Name already exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_1
    return-void
.end method

.method private static addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Lsun/security/x509/OIDMap$OIDInfo;

    invoke-direct {v0, p0, p1, p2}, Lsun/security/x509/OIDMap$OIDInfo;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 168
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    sget-object v1, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 272
    sget-object v1, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    .line 273
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lsun/security/x509/OIDMap$OIDInfo;->getClazz()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public static getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;
    .locals 2
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 284
    sget-object v1, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    .line 285
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lsun/security/x509/OIDMap$OIDInfo;->getClazz()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public static getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .locals 2
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 249
    sget-object v1, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    .line 250
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lsun/security/x509/OIDMap$OIDInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 261
    sget-object v1, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    .line 262
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lsun/security/x509/OIDMap$OIDInfo;->oid:Lsun/security/util/ObjectIdentifier;

    goto :goto_0
.end method
