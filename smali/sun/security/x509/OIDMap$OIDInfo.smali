.class Lsun/security/x509/OIDMap$OIDInfo;
.super Ljava/lang/Object;
.source "OIDMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/OIDMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OIDInfo"
.end annotation


# instance fields
.field final className:Ljava/lang/String;

.field private volatile clazz:Ljava/lang/Class;

.field final name:Ljava/lang/String;

.field final oid:Lsun/security/util/ObjectIdentifier;


# direct methods
.method constructor <init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lsun/security/x509/OIDMap$OIDInfo;->name:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lsun/security/x509/OIDMap$OIDInfo;->oid:Lsun/security/util/ObjectIdentifier;

    .line 191
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OIDMap$OIDInfo;->className:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lsun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;

    .line 193
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lsun/security/x509/OIDMap$OIDInfo;->name:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lsun/security/x509/OIDMap$OIDInfo;->oid:Lsun/security/util/ObjectIdentifier;

    .line 185
    iput-object p3, p0, Lsun/security/x509/OIDMap$OIDInfo;->className:Ljava/lang/String;

    .line 186
    return-void
.end method


# virtual methods
.method getClazz()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lsun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;

    .line 201
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 202
    iget-object v2, p0, Lsun/security/x509/OIDMap$OIDInfo;->className:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 203
    iput-object v0, p0, Lsun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    return-object v0

    .line 206
    .end local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not load class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CertificateException;

    throw v2
.end method
