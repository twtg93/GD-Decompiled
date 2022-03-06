.class public Lsun/security/x509/CertException;
.super Ljava/lang/SecurityException;
.source "CertException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final err_CONSTRUCTION:I = 0x8

.field public static final err_ENCODING:I = 0xc

.field public static final err_INVALID_FORMAT:I = 0xb

.field public static final err_INVALID_PUBLIC_KEY:I = 0x9

.field public static final err_INVALID_VERSION:I = 0xa

.field private static final serialVersionUID:J = 0x602f1f8c76db42beL

.field public static final verf_CA_UNTRUSTED:I = 0x5

.field public static final verf_CHAIN_LENGTH:I = 0x6

.field public static final verf_INVALID_EXPIRED:I = 0x4

.field public static final verf_INVALID_NOTBEFORE:I = 0x3

.field public static final verf_INVALID_REVOKED:I = 0x2

.field public static final verf_INVALID_SIG:I = 0x1

.field public static final verf_PARSE_ERROR:I = 0x7


# instance fields
.field private moreData:Ljava/lang/String;

.field private verfCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 105
    iput p1, p0, Lsun/security/x509/CertException;->verfCode:I

    .line 106
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "moredata"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 95
    iput p1, p0, Lsun/security/x509/CertException;->verfCode:I

    .line 96
    iput-object p2, p0, Lsun/security/x509/CertException;->moreData:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/x509/CertException;->getVerfDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lsun/security/x509/CertException;->moreData:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n  ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/security/x509/CertException;->moreData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMoreData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lsun/security/x509/CertException;->moreData:Ljava/lang/String;

    return-object v0
.end method

.method public getVerfCode()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lsun/security/x509/CertException;->verfCode:I

    return v0
.end method

.method public getVerfDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lsun/security/x509/CertException;->verfCode:I

    packed-switch v0, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown code:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsun/security/x509/CertException;->verfCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 127
    :pswitch_0
    const-string/jumbo v0, "The signature in the certificate is not valid."

    goto :goto_0

    .line 129
    :pswitch_1
    const-string/jumbo v0, "The certificate has been revoked."

    goto :goto_0

    .line 131
    :pswitch_2
    const-string/jumbo v0, "The certificate is not yet valid."

    goto :goto_0

    .line 133
    :pswitch_3
    const-string/jumbo v0, "The certificate has expired."

    goto :goto_0

    .line 135
    :pswitch_4
    const-string/jumbo v0, "The Authority which issued the certificate is not trusted."

    goto :goto_0

    .line 137
    :pswitch_5
    const-string/jumbo v0, "The certificate path to a trusted authority is too long."

    goto :goto_0

    .line 139
    :pswitch_6
    const-string/jumbo v0, "The certificate could not be parsed."

    goto :goto_0

    .line 141
    :pswitch_7
    const-string/jumbo v0, "There was an error when constructing the certificate."

    goto :goto_0

    .line 143
    :pswitch_8
    const-string/jumbo v0, "The public key was not in the correct format."

    goto :goto_0

    .line 145
    :pswitch_9
    const-string/jumbo v0, "The certificate has an invalid version number."

    goto :goto_0

    .line 147
    :pswitch_a
    const-string/jumbo v0, "The certificate has an invalid format."

    goto :goto_0

    .line 149
    :pswitch_b
    const-string/jumbo v0, "Problem encountered while encoding the data."

    goto :goto_0

    .line 125
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
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Certificate Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/x509/CertException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
