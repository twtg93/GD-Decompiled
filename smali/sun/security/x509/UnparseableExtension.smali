.class Lsun/security/x509/UnparseableExtension;
.super Lsun/security/x509/Extension;
.source "CertificateExtensions.java"


# instance fields
.field private name:Ljava/lang/String;

.field private why:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lsun/security/x509/Extension;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .param p2, "why"    # Ljava/lang/Throwable;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lsun/security/x509/Extension;-><init>(Lsun/security/x509/Extension;)V

    .line 352
    const-string/jumbo v2, ""

    iput-object v2, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;

    .line 354
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v0

    .line 355
    .local v0, "extClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 356
    const-string/jumbo v2, "NAME"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 357
    .local v1, "field":Ljava/lang/reflect/Field;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v0    # "extClass":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    iput-object p2, p0, Lsun/security/x509/UnparseableExtension;->why:Ljava/lang/Throwable;

    .line 364
    return-void

    .line 359
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Unparseable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "extension due to\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/UnparseableExtension;->why:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 369
    invoke-virtual {p0}, Lsun/security/x509/UnparseableExtension;->getExtensionValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    return-object v0
.end method
