.class public Lsun/security/x509/X509CertInfo;
.super Ljava/lang/Object;
.source "X509CertInfo.java"

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
.field public static final ALGORITHM_ID:Ljava/lang/String; = "algorithmID"

.field private static final ATTR_ALGORITHM:I = 0x3

.field private static final ATTR_EXTENSIONS:I = 0xa

.field private static final ATTR_ISSUER:I = 0x4

.field private static final ATTR_ISSUER_ID:I = 0x8

.field private static final ATTR_KEY:I = 0x7

.field private static final ATTR_SERIAL:I = 0x2

.field private static final ATTR_SUBJECT:I = 0x6

.field private static final ATTR_SUBJECT_ID:I = 0x9

.field private static final ATTR_VALIDITY:I = 0x5

.field private static final ATTR_VERSION:I = 0x1

.field public static final EXTENSIONS:Ljava/lang/String; = "extensions"

.field public static final IDENT:Ljava/lang/String; = "x509.info"

.field public static final ISSUER:Ljava/lang/String; = "issuer"

.field public static final ISSUER_ID:Ljava/lang/String; = "issuerID"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final NAME:Ljava/lang/String; = "info"

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final SUBJECT_ID:Ljava/lang/String; = "subjectID"

.field public static final VALIDITY:Ljava/lang/String; = "validity"

.field public static final VERSION:Ljava/lang/String; = "version"

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected algId:Lsun/security/x509/CertificateAlgorithmId;

.field protected extensions:Lsun/security/x509/CertificateExtensions;

.field protected interval:Lsun/security/x509/CertificateValidity;

.field protected issuer:Lsun/security/x509/CertificateIssuerName;

.field protected issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

.field protected pubKey:Lsun/security/x509/CertificateX509Key;

.field private rawCertInfo:[B

.field protected serialNum:Lsun/security/x509/CertificateSerialNumber;

.field protected subject:Lsun/security/x509/CertificateSubjectName;

.field protected subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

.field protected version:Lsun/security/x509/CertificateVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    .line 122
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "serialNumber"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "algorithmID"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "issuer"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "validity"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "subject"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "key"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "issuerID"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "subjectID"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "extensions"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lsun/security/x509/CertificateVersion;

    invoke-direct {v0}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 90
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 91
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 92
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    .line 93
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 94
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    .line 95
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 98
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    .line 99
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    .line 102
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 117
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 138
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Lsun/security/x509/CertificateVersion;

    invoke-direct {v2}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 90
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 91
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 92
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    .line 93
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 94
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    .line 95
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 98
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    .line 99
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    .line 102
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 117
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 175
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertInfo;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    .line 178
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "parseException":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 180
    throw v1
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "cert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v3, Lsun/security/x509/CertificateVersion;

    invoke-direct {v3}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 90
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 91
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 92
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    .line 93
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 94
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    .line 95
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 98
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    .line 99
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    .line 102
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 117
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 154
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 156
    .local v1, "in":Lsun/security/util/DerValue;
    invoke-direct {p0, v1}, Lsun/security/x509/X509CertInfo;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-void

    .line 157
    .end local v1    # "in":Lsun/security/util/DerValue;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    .line 159
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, "parseException":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 161
    throw v2
.end method

.method private attributeMap(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 848
    sget-object v1, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 849
    .local v0, "num":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 850
    const/4 v1, 0x0

    .line 852
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private emit(Lsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 801
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 804
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateVersion;->encode(Ljava/io/OutputStream;)V

    .line 808
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateSerialNumber;->encode(Ljava/io/OutputStream;)V

    .line 809
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateAlgorithmId;->encode(Ljava/io/OutputStream;)V

    .line 811
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v2}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    .line 812
    invoke-virtual {v1}, Lsun/security/x509/CertificateIssuerName;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 813
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v2, "Null issuer DN not allowed in v1 certificate"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateIssuerName;->encode(Ljava/io/OutputStream;)V

    .line 817
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateValidity;->encode(Ljava/io/OutputStream;)V

    .line 820
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v2}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    .line 821
    invoke-virtual {v1}, Lsun/security/x509/CertificateSubjectName;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 822
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v2, "Null subject DN not allowed in v1 certificate"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    :cond_1
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateSubjectName;->encode(Ljava/io/OutputStream;)V

    .line 825
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateX509Key;->encode(Ljava/io/OutputStream;)V

    .line 828
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    if-eqz v1, :cond_2

    .line 829
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateIssuerUniqueIdentity;->encode(Ljava/io/OutputStream;)V

    .line 831
    :cond_2
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    if-eqz v1, :cond_3

    .line 832
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateSubjectUniqueIdentity;->encode(Ljava/io/OutputStream;)V

    .line 836
    :cond_3
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v1, :cond_4

    .line 837
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;)V

    .line 841
    :cond_4
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 842
    return-void
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 8
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 670
    iget-byte v4, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-eq v4, v5, :cond_0

    .line 671
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v5, "signed fields invalid"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 673
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 675
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 678
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 679
    .local v3, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v3, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 680
    new-instance v4, Lsun/security/x509/CertificateVersion;

    invoke-direct {v4, v3}, Lsun/security/x509/CertificateVersion;-><init>(Lsun/security/util/DerValue;)V

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 681
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 685
    :cond_1
    new-instance v4, Lsun/security/x509/CertificateSerialNumber;

    invoke-direct {v4, v3}, Lsun/security/x509/CertificateSerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 688
    new-instance v4, Lsun/security/x509/CertificateAlgorithmId;

    invoke-direct {v4, v0}, Lsun/security/x509/CertificateAlgorithmId;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 691
    new-instance v4, Lsun/security/x509/CertificateIssuerName;

    invoke-direct {v4, v0}, Lsun/security/x509/CertificateIssuerName;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    .line 692
    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    const-string/jumbo v5, "dname"

    invoke-virtual {v4, v5}, Lsun/security/x509/CertificateIssuerName;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/X500Name;

    .line 693
    .local v1, "issuerDN":Lsun/security/x509/X500Name;
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 694
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v5, "Empty issuer DN not allowed in X509Certificates"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 699
    :cond_2
    new-instance v4, Lsun/security/x509/CertificateValidity;

    invoke-direct {v4, v0}, Lsun/security/x509/CertificateValidity;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 702
    new-instance v4, Lsun/security/x509/CertificateSubjectName;

    invoke-direct {v4, v0}, Lsun/security/x509/CertificateSubjectName;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    .line 703
    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    const-string/jumbo v5, "dname"

    invoke-virtual {v4, v5}, Lsun/security/x509/CertificateSubjectName;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X500Name;

    .line 704
    .local v2, "subjectDN":Lsun/security/x509/X500Name;
    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v4, v6}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 705
    invoke-virtual {v2}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 706
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v5, "Empty subject DN not allowed in v1 certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 711
    :cond_3
    new-instance v4, Lsun/security/x509/CertificateX509Key;

    invoke-direct {v4, v0}, Lsun/security/x509/CertificateX509Key;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 714
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_5

    .line 715
    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v4, v6}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v4

    if-nez v4, :cond_4

    .line 716
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v5, "no more data allowed for version 1 certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 724
    :cond_4
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 725
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 726
    new-instance v4, Lsun/security/x509/CertificateIssuerUniqueIdentity;

    invoke-direct {v4, v3}, Lsun/security/x509/CertificateIssuerUniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    .line 727
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-nez v4, :cond_6

    .line 752
    :cond_5
    :goto_0
    return-void

    .line 729
    :cond_6
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 733
    :cond_7
    invoke-virtual {v3, v7}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 734
    new-instance v4, Lsun/security/x509/CertificateSubjectUniqueIdentity;

    invoke-direct {v4, v3}, Lsun/security/x509/CertificateSubjectUniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    .line 735
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_5

    .line 737
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 741
    :cond_8
    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v4, v7}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v4

    if-eqz v4, :cond_9

    .line 742
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v5, "Extensions not allowed in v2 certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 745
    :cond_9
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 746
    new-instance v4, Lsun/security/x509/CertificateExtensions;

    iget-object v5, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v4, v5}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 750
    :cond_a
    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    iget-object v5, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-direct {p0, v4, v5}, Lsun/security/x509/X509CertInfo;->verifyCert(Lsun/security/x509/CertificateSubjectName;Lsun/security/x509/CertificateExtensions;)V

    goto :goto_0
.end method

.method private setAlgorithmId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 888
    instance-of v0, p1, Lsun/security/x509/CertificateAlgorithmId;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "AlgorithmId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateAlgorithmId;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 893
    return-void
.end method

.method private setExtensions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 993
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_0
    instance-of v0, p1, Lsun/security/x509/CertificateExtensions;

    if-nez v0, :cond_1

    .line 996
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Extensions class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_1
    check-cast p1, Lsun/security/x509/CertificateExtensions;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 1000
    return-void
.end method

.method private setIssuer(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 902
    instance-of v0, p1, Lsun/security/x509/CertificateIssuerName;

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Issuer class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateIssuerName;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    .line 907
    return-void
.end method

.method private setIssuerUniqueId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 959
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_0
    instance-of v0, p1, Lsun/security/x509/CertificateIssuerUniqueIdentity;

    if-nez v0, :cond_1

    .line 962
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "IssuerUniqueId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_1
    check-cast p1, Lsun/security/x509/CertificateIssuerUniqueIdentity;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    .line 966
    return-void
.end method

.method private setKey(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 944
    instance-of v0, p1, Lsun/security/x509/CertificateX509Key;

    if-nez v0, :cond_0

    .line 945
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Key class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateX509Key;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 949
    return-void
.end method

.method private setSerialNumber(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 875
    instance-of v0, p1, Lsun/security/x509/CertificateSerialNumber;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "SerialNumber class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateSerialNumber;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 879
    return-void
.end method

.method private setSubject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 930
    instance-of v0, p1, Lsun/security/x509/CertificateSubjectName;

    if-nez v0, :cond_0

    .line 931
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Subject class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateSubjectName;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    .line 935
    return-void
.end method

.method private setSubjectUniqueId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 975
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 976
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_0
    instance-of v0, p1, Lsun/security/x509/CertificateSubjectUniqueIdentity;

    if-nez v0, :cond_1

    .line 979
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "SubjectUniqueId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_1
    check-cast p1, Lsun/security/x509/CertificateSubjectUniqueIdentity;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    .line 983
    return-void
.end method

.method private setValidity(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 916
    instance-of v0, p1, Lsun/security/x509/CertificateValidity;

    if-nez v0, :cond_0

    .line 917
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "CertificateValidity class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateValidity;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 921
    return-void
.end method

.method private setVersion(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 862
    instance-of v0, p1, Lsun/security/x509/CertificateVersion;

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Version class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateVersion;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 866
    return-void
.end method

.method private verifyCert(Lsun/security/x509/CertificateSubjectName;Lsun/security/x509/CertificateExtensions;)V
    .locals 8
    .param p1, "subject"    # Lsun/security/x509/CertificateSubjectName;
    .param p2, "extensions"    # Lsun/security/x509/CertificateExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    const-string/jumbo v6, "dname"

    invoke-virtual {p1, v6}, Lsun/security/x509/CertificateSubjectName;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/X500Name;

    .line 763
    .local v5, "subjectDN":Lsun/security/x509/X500Name;
    invoke-virtual {v5}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 764
    if-nez p2, :cond_0

    .line 765
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v7, "X.509 Certificate is incomplete: subject field is empty, and certificate has no extensions"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 769
    :cond_0
    const/4 v4, 0x0

    .line 770
    .local v4, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    const/4 v2, 0x0

    .line 771
    .local v2, "extValue":Lsun/security/x509/SubjectAlternativeNameExtension;
    const/4 v3, 0x0

    .line 773
    .local v3, "names":Lsun/security/x509/GeneralNames;
    :try_start_0
    const-string/jumbo v6, "SubjectAlternativeName"

    .line 774
    invoke-virtual {p2, v6}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lsun/security/x509/SubjectAlternativeNameExtension;

    move-object v4, v0

    .line 775
    const-string/jumbo v6, "subject_name"

    .line 776
    invoke-virtual {v4, v6}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "names":Lsun/security/x509/GeneralNames;
    check-cast v3, Lsun/security/x509/GeneralNames;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .restart local v3    # "names":Lsun/security/x509/GeneralNames;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 785
    :cond_1
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v7, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is empty"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 777
    .end local v3    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v7, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is absent"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 788
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "names":Lsun/security/x509/GeneralNames;
    :cond_2
    invoke-virtual {v4}, Lsun/security/x509/SubjectAlternativeNameExtension;->isCritical()Z

    move-result v6

    if-nez v6, :cond_3

    .line 789
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v7, "X.509 Certificate is incomplete: SubjectAlternativeName extension MUST be marked critical when subject field is empty"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 794
    .end local v2    # "extValue":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v3    # "names":Lsun/security/x509/GeneralNames;
    .end local v4    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :cond_3
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 482
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 484
    .local v1, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v0

    .line 485
    .local v0, "attr":I
    if-nez v0, :cond_0

    .line 486
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 490
    :cond_0
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 491
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "suffix":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 566
    :cond_1
    :goto_0
    return-void

    .line 495
    :pswitch_0
    if-nez v2, :cond_2

    .line 496
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    goto :goto_0

    .line 498
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :pswitch_1
    if-nez v2, :cond_3

    .line 503
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    goto :goto_0

    .line 505
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSerialNumber;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :pswitch_2
    if-nez v2, :cond_4

    .line 510
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    goto :goto_0

    .line 512
    :cond_4
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateAlgorithmId;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :pswitch_3
    if-nez v2, :cond_5

    .line 517
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    goto :goto_0

    .line 519
    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateIssuerName;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :pswitch_4
    if-nez v2, :cond_6

    .line 524
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    goto :goto_0

    .line 526
    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateValidity;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :pswitch_5
    if-nez v2, :cond_7

    .line 531
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    goto :goto_0

    .line 533
    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSubjectName;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :pswitch_6
    if-nez v2, :cond_8

    .line 538
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    goto :goto_0

    .line 540
    :cond_8
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateX509Key;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :pswitch_7
    if-nez v2, :cond_9

    .line 545
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    goto :goto_0

    .line 547
    :cond_9
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateIssuerUniqueIdentity;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :pswitch_8
    if-nez v2, :cond_a

    .line 552
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    goto :goto_0

    .line 554
    :cond_a
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSubjectUniqueIdentity;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :pswitch_9
    if-nez v2, :cond_b

    .line 559
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    goto :goto_0

    .line 561
    :cond_b
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v3, :cond_1

    .line 562
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateExtensions;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v1, :cond_0

    .line 194
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 195
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v0}, Lsun/security/x509/X509CertInfo;->emit(Lsun/security/util/DerOutputStream;)V

    .line 196
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 198
    .end local v0    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 199
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 257
    instance-of v0, p1, Lsun/security/x509/X509CertInfo;

    if-eqz v0, :cond_0

    .line 258
    check-cast p1, Lsun/security/x509/X509CertInfo;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/X509CertInfo;->equals(Lsun/security/x509/X509CertInfo;)Z

    move-result v0

    .line 260
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lsun/security/x509/X509CertInfo;)Z
    .locals 5
    .param p1, "other"    # Lsun/security/x509/X509CertInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    if-ne p0, p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-eqz v3, :cond_2

    iget-object v3, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 275
    goto :goto_0

    .line 276
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v3, v3

    iget-object v4, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v4, v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 277
    goto :goto_0

    .line 279
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 280
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v3, v3, v0

    iget-object v4, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 281
    goto :goto_0

    .line 279
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 578
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 580
    .local v1, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v0

    .line 581
    .local v0, "attr":I
    if-nez v0, :cond_0

    .line 582
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    :cond_0
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "suffix":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 659
    :cond_1
    :goto_0
    return-object v3

    .line 589
    :pswitch_0
    if-nez v2, :cond_2

    .line 590
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    goto :goto_0

    .line 592
    :cond_2
    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v4, :cond_1

    .line 595
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 599
    :pswitch_1
    if-nez v2, :cond_3

    .line 600
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    goto :goto_0

    .line 602
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSubjectName;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 605
    :pswitch_2
    if-nez v2, :cond_4

    .line 606
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    goto :goto_0

    .line 608
    :cond_4
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateIssuerName;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 611
    :pswitch_3
    if-nez v2, :cond_5

    .line 612
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    goto :goto_0

    .line 614
    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateX509Key;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 617
    :pswitch_4
    if-nez v2, :cond_6

    .line 618
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    goto :goto_0

    .line 620
    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateAlgorithmId;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 623
    :pswitch_5
    if-nez v2, :cond_7

    .line 624
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    goto :goto_0

    .line 626
    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateValidity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 629
    :pswitch_6
    if-nez v2, :cond_8

    .line 630
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    goto :goto_0

    .line 632
    :cond_8
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 635
    :pswitch_7
    if-nez v2, :cond_9

    .line 636
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    goto :goto_0

    .line 638
    :cond_9
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSerialNumber;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 641
    :pswitch_8
    if-nez v2, :cond_a

    .line 642
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    goto :goto_0

    .line 644
    :cond_a
    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    if-eqz v4, :cond_1

    .line 647
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateIssuerUniqueIdentity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 650
    :pswitch_9
    if-nez v2, :cond_b

    .line 651
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    goto :goto_0

    .line 653
    :cond_b
    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    if-eqz v4, :cond_1

    .line 656
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSubjectUniqueIdentity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
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
    .line 206
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 207
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 208
    const-string/jumbo v1, "serialNumber"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 209
    const-string/jumbo v1, "algorithmID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 210
    const-string/jumbo v1, "issuer"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 211
    const-string/jumbo v1, "validity"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 212
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 213
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 214
    const-string/jumbo v1, "issuerID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 215
    const-string/jumbo v1, "subjectID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 216
    const-string/jumbo v1, "extensions"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEncodedInfo()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 235
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v2, :cond_0

    .line 236
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 237
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v1}, Lsun/security/x509/X509CertInfo;->emit(Lsun/security/util/DerOutputStream;)V

    .line 238
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 240
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 244
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string/jumbo v0, "info"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 294
    .local v1, "retval":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 295
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return v1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 379
    .local v1, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v0

    .line 380
    .local v0, "attr":I
    if-nez v0, :cond_0

    .line 381
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 385
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 386
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "suffix":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 471
    :goto_0
    return-void

    .line 390
    :pswitch_0
    if-nez v2, :cond_1

    .line 391
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setVersion(Ljava/lang/Object;)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateVersion;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 398
    :pswitch_1
    if-nez v2, :cond_2

    .line 399
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSerialNumber(Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateSerialNumber;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 406
    :pswitch_2
    if-nez v2, :cond_3

    .line 407
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setAlgorithmId(Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateAlgorithmId;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    :pswitch_3
    if-nez v2, :cond_4

    .line 415
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setIssuer(Ljava/lang/Object;)V

    goto :goto_0

    .line 417
    :cond_4
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateIssuerName;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 422
    :pswitch_4
    if-nez v2, :cond_5

    .line 423
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setValidity(Ljava/lang/Object;)V

    goto :goto_0

    .line 425
    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateValidity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    :pswitch_5
    if-nez v2, :cond_6

    .line 431
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSubject(Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateSubjectName;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    :pswitch_6
    if-nez v2, :cond_7

    .line 439
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setKey(Ljava/lang/Object;)V

    goto :goto_0

    .line 441
    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateX509Key;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 446
    :pswitch_7
    if-nez v2, :cond_8

    .line 447
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setIssuerUniqueId(Ljava/lang/Object;)V

    goto :goto_0

    .line 449
    :cond_8
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateIssuerUniqueIdentity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 454
    :pswitch_8
    if-nez v2, :cond_9

    .line 455
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSubjectUniqueId(Ljava/lang/Object;)V

    goto :goto_0

    .line 457
    :cond_9
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateSubjectUniqueIdentity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :pswitch_9
    if-nez v2, :cond_a

    .line 463
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setExtensions(Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    :cond_a
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-nez v3, :cond_b

    .line 466
    new-instance v3, Lsun/security/x509/CertificateExtensions;

    invoke-direct {v3}, Lsun/security/x509/CertificateExtensions;-><init>()V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 467
    :cond_b
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateExtensions;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 305
    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    if-nez v11, :cond_1

    .line 307
    :cond_0
    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v12, "X.509 cert is incomplete"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 309
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v11, "[\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v12}, Lsun/security/x509/CertificateVersion;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Subject: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/CertificateSubjectName;

    invoke-virtual {v12}, Lsun/security/x509/CertificateSubjectName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Signature Algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v12}, Lsun/security/x509/CertificateAlgorithmId;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Key:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v12}, Lsun/security/x509/CertificateX509Key;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v12}, Lsun/security/x509/CertificateValidity;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Issuer: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/CertificateIssuerName;

    invoke-virtual {v12}, Lsun/security/x509/CertificateIssuerName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v12}, Lsun/security/x509/CertificateSerialNumber;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    if-eqz v11, :cond_2

    .line 322
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Issuer Id:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/CertificateIssuerUniqueIdentity;

    invoke-virtual {v12}, Lsun/security/x509/CertificateIssuerUniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_2
    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    if-eqz v11, :cond_3

    .line 325
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Subject Id:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/CertificateSubjectUniqueIdentity;

    invoke-virtual {v12}, Lsun/security/x509/CertificateSubjectUniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_3
    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v11, :cond_7

    .line 328
    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v11}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    .line 329
    .local v0, "allExts":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 330
    .local v8, "objs":[Ljava/lang/Object;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\nCertificate Extensions: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, v8

    if-ge v5, v11, :cond_6

    .line 332
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\n["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    aget-object v3, v8, v5

    check-cast v3, Lsun/security/x509/Extension;

    .line 335
    .local v3, "ext":Lsun/security/x509/Extension;
    :try_start_0
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v11

    invoke-static {v11}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v11

    if-nez v11, :cond_5

    .line 336
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v4

    .line 338
    .local v4, "extValue":[B
    if-eqz v4, :cond_4

    .line 339
    new-instance v9, Lsun/security/util/DerOutputStream;

    invoke-direct {v9}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 340
    .local v9, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v9, v4}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 341
    invoke-virtual {v9}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    .line 342
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 343
    .local v2, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 345
    invoke-virtual {v2, v4}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 343
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .end local v2    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v4    # "extValue":[B
    .end local v9    # "out":Lsun/security/util/DerOutputStream;
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 348
    :cond_5
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v11, ", Error parsing this extension"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 353
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ext":Lsun/security/x509/Extension;
    :cond_6
    iget-object v11, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v11}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v7

    .line 354
    .local v7, "invalid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsun/security/x509/Extension;>;"
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 355
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\nUnparseable certificate extensions: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const/4 v5, 0x1

    .line 357
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;

    .line 358
    .restart local v3    # "ext":Lsun/security/x509/Extension;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\n["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v6

    .line 360
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 363
    .end local v0    # "allExts":Ljava/util/Collection;
    .end local v3    # "ext":Lsun/security/x509/Extension;
    .end local v5    # "i":I
    .end local v7    # "invalid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsun/security/x509/Extension;>;"
    .end local v8    # "objs":[Ljava/lang/Object;
    :cond_7
    const-string/jumbo v11, "\n]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method
