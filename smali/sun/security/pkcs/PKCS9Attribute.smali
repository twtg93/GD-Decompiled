.class public Lsun/security/pkcs/PKCS9Attribute;
.super Ljava/lang/Object;
.source "PKCS9Attribute.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field public static final CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

.field public static final CHALLENGE_PASSWORD_STR:Ljava/lang/String; = "ChallengePassword"

.field public static final CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final CONTENT_TYPE_STR:Ljava/lang/String; = "ContentType"

.field public static final COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final COUNTERSIGNATURE_STR:Ljava/lang/String; = "Countersignature"

.field public static final EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EMAIL_ADDRESS_STR:Ljava/lang/String; = "EmailAddress"

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_STR:Ljava/lang/String; = "ExtendedCertificateAttributes"

.field public static final EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EXTENSION_REQUEST_STR:Ljava/lang/String; = "ExtensionRequest"

.field public static final ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field public static final ISSUER_SERIALNUMBER_STR:Ljava/lang/String; = "IssuerAndSerialNumber"

.field public static final MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final MESSAGE_DIGEST_STR:Ljava/lang/String; = "MessageDigest"

.field private static final NAME_OID_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final OID_NAME_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

.field private static final PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

.field private static final RSA_PROPRIETARY_STR:Ljava/lang/String; = "RSAProprietary"

.field public static final SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNATURE_TIMESTAMP_TOKEN_STR:Ljava/lang/String; = "SignatureTimestampToken"

.field public static final SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNING_CERTIFICATE_STR:Ljava/lang/String; = "SigningCertificate"

.field public static final SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNING_TIME_STR:Ljava/lang/String; = "SigningTime"

.field private static final SINGLE_VALUED:[Z

.field public static final SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SMIME_CAPABILITY_STR:Ljava/lang/String; = "SMIMECapability"

.field private static final SMIME_SIGNING_DESC_STR:Ljava/lang/String; = "SMIMESigningDesc"

.field public static final UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_ADDRESS_STR:Ljava/lang/String; = "UnstructuredAddress"

.field public static final UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_NAME_STR:Ljava/lang/String; = "UnstructuredName"

.field private static final VALUE_CLASSES:[Ljava/lang/Class;

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private index:I

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 181
    const-string/jumbo v3, "jar"

    invoke-static {v3}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v3

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    .line 186
    const/16 v3, 0x12

    new-array v3, v3, [Lsun/security/util/ObjectIdentifier;

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    .line 189
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_0

    .line 190
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x7

    new-array v4, v4, [I

    aput v8, v4, v9

    aput v11, v4, v8

    const/16 v5, 0x348

    aput v5, v4, v11

    const/4 v5, 0x3

    const v6, 0x1bb8d

    aput v6, v4, v5

    const/4 v5, 0x4

    aput v8, v4, v5

    const/4 v5, 0x5

    aput v12, v4, v5

    const/4 v5, 0x6

    aput v1, v4, v5

    .line 191
    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    aput-object v4, v3, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    new-array v5, v12, [I

    fill-array-data v5, :array_0

    .line 196
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    aput-object v5, v3, v4

    .line 197
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v5, v12, [I

    fill-array-data v5, :array_1

    .line 198
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    aput-object v5, v3, v4

    .line 202
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v8

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    .line 203
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v11

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 204
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    .line 205
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 206
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

    .line 207
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

    .line 208
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

    .line 209
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    .line 210
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v12

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

    .line 212
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    .line 215
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 216
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

    .line 217
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

    .line 218
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x11

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

    .line 246
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    .line 250
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "emailaddress"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "unstructuredname"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v11

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "contenttype"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "messagedigest"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingtime"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "countersignature"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "challengepassword"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "unstructuredaddress"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "extendedcertificateattributes"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v12

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "issuerandserialnumber"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "rsaproprietary"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "rsaproprietary"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingdescription"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "extensionrequest"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xe

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "smimecapability"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xf

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingcertificate"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x10

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signaturetimestamptoken"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x11

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    .line 276
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v8

    const-string/jumbo v5, "EmailAddress"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v11

    const-string/jumbo v5, "UnstructuredName"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const-string/jumbo v5, "ContentType"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const-string/jumbo v5, "MessageDigest"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const-string/jumbo v5, "SigningTime"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const-string/jumbo v5, "Countersignature"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    const-string/jumbo v5, "ChallengePassword"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    const-string/jumbo v5, "UnstructuredAddress"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v12

    const-string/jumbo v5, "ExtendedCertificateAttributes"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    const-string/jumbo v5, "IssuerAndSerialNumber"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    const-string/jumbo v5, "RSAProprietary"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    const-string/jumbo v5, "RSAProprietary"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xd

    aget-object v4, v4, v5

    const-string/jumbo v5, "SMIMESigningDesc"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xe

    aget-object v4, v4, v5

    const-string/jumbo v5, "ExtensionRequest"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xf

    aget-object v4, v4, v5

    const-string/jumbo v5, "SMIMECapability"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x10

    aget-object v4, v4, v5

    const-string/jumbo v5, "SigningCertificate"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x11

    aget-object v4, v4, v5

    const-string/jumbo v5, "SignatureTimestampToken"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const/16 v3, 0x12

    new-array v3, v3, [[Ljava/lang/Byte;

    aput-object v10, v3, v9

    new-array v4, v8, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v9

    aput-object v4, v3, v8

    new-array v4, v8, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v9

    aput-object v4, v3, v11

    const/4 v4, 0x3

    new-array v5, v8, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-array v5, v8, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-array v5, v8, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x17

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v8, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x30

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v5, v11, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x13

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v5, v11, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x13

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    new-array v4, v8, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x31

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v9

    aput-object v4, v3, v12

    const/16 v4, 0xa

    new-array v5, v8, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x30

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xb

    aput-object v10, v3, v4

    const/16 v4, 0xc

    aput-object v10, v3, v4

    const/16 v4, 0xd

    aput-object v10, v3, v4

    const/16 v4, 0xe

    new-array v5, v8, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x30

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xf

    new-array v5, v8, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x30

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x10

    new-array v5, v8, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x30

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x11

    new-array v5, v8, [Ljava/lang/Byte;

    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x30

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    .line 323
    const/16 v3, 0x12

    new-array v3, v3, [Ljava/lang/Class;

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 327
    :try_start_0
    const-string/jumbo v3, "[Ljava.lang.String;"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 329
    .local v2, "str":Ljava/lang/Class;
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 330
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 331
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 332
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x3

    const-string/jumbo v5, "sun.security.util.ObjectIdentifier"

    .line 333
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 334
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x4

    const-string/jumbo v5, "[B"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 335
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x5

    const-string/jumbo v5, "java.util.Date"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 336
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x6

    const-string/jumbo v5, "[Lsun.security.pkcs.SignerInfo;"

    .line 337
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 338
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x7

    const-string/jumbo v5, "java.lang.String"

    .line 339
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 340
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0x8

    aput-object v2, v3, v4

    .line 341
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 342
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0xa

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 343
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0xb

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 344
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0xc

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 345
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0xd

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 346
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0xe

    const-string/jumbo v5, "sun.security.x509.CertificateExtensions"

    .line 347
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 348
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0xf

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 349
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0x10

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 350
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0x11

    const-string/jumbo v5, "[B"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    const/16 v3, 0x12

    new-array v3, v3, [Z

    fill-array-data v3, :array_2

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    return-void

    .line 351
    .end local v2    # "str":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xc
    .end array-data

    .line 197
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xe
    .end array-data

    .line 360
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 429
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v0, :cond_0

    .line 430
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " constructing PKCS9Attribute."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_0
    invoke-direct {p0, v0, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    .line 435
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 12
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v7

    invoke-direct {v0, v7}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 469
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v0, v8}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 471
    .local v5, "val":[Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v7

    if-eqz v7, :cond_0

    .line 472
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Excess data parsing PKCS9Attribute"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 474
    :cond_0
    array-length v7, v5

    if-eq v7, v8, :cond_1

    .line 475
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "PKCS9Attribute doesn\'t have two components"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 478
    :cond_1
    aget-object v7, v5, v9

    invoke-virtual {v7}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    .line 479
    .local v3, "oid":Lsun/security/util/ObjectIdentifier;
    sget-object v7, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    invoke-static {v3, v7, v10}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v7

    iput v7, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    .line 480
    iget v7, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-ne v7, v11, :cond_3

    .line 481
    sget-object v7, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_2

    .line 482
    sget-object v7, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ignoring unsupported signer attribute: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 484
    :cond_2
    new-instance v7, Lsun/security/pkcs/ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported PKCS9 attribute: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 487
    :cond_3
    new-instance v7, Lsun/security/util/DerInputStream;

    aget-object v8, v5, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v7, v10}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 489
    .local v1, "elems":[Lsun/security/util/DerValue;
    sget-object v7, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_4

    array-length v7, v1

    if-le v7, v10, :cond_4

    .line 490
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attribute;->throwSingleValuedException()V

    .line 494
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_6

    .line 495
    new-instance v4, Ljava/lang/Byte;

    aget-object v7, v1, v2

    iget-byte v7, v7, Lsun/security/util/DerValue;->tag:B

    invoke-direct {v4, v7}, Ljava/lang/Byte;-><init>(B)V

    .line 497
    .local v4, "tag":Ljava/lang/Byte;
    sget-object v7, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v7, v7, v8

    invoke-static {v4, v7, v9}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 498
    invoke-direct {p0, v4}, Lsun/security/pkcs/PKCS9Attribute;->throwTagException(Ljava/lang/Byte;)V

    .line 494
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    .end local v4    # "tag":Ljava/lang/Byte;
    :cond_6
    iget v7, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v7, :pswitch_data_0

    .line 575
    :goto_1
    return-void

    .line 506
    :pswitch_0
    array-length v7, v1

    new-array v6, v7, [Ljava/lang/String;

    .line 508
    .local v6, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_2
    array-length v7, v1

    if-ge v2, v7, :cond_7

    .line 509
    aget-object v7, v1, v2

    invoke-virtual {v7}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 510
    :cond_7
    iput-object v6, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 515
    .end local v6    # "values":[Ljava/lang/String;
    :pswitch_1
    aget-object v7, v1, v9

    invoke-virtual {v7}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 519
    :pswitch_2
    aget-object v7, v1, v9

    invoke-virtual {v7}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v7

    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 523
    :pswitch_3
    new-instance v7, Lsun/security/util/DerInputStream;

    aget-object v8, v1, v9

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v7

    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 528
    :pswitch_4
    array-length v7, v1

    new-array v6, v7, [Lsun/security/pkcs/SignerInfo;

    .line 529
    .local v6, "values":[Lsun/security/pkcs/SignerInfo;
    const/4 v2, 0x0

    :goto_3
    array-length v7, v1

    if-ge v2, v7, :cond_8

    .line 530
    new-instance v7, Lsun/security/pkcs/SignerInfo;

    aget-object v8, v1, v2

    .line 531
    invoke-virtual {v8}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    aput-object v7, v6, v2

    .line 529
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 532
    :cond_8
    iput-object v6, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 537
    .end local v6    # "values":[Lsun/security/pkcs/SignerInfo;
    :pswitch_5
    aget-object v7, v1, v9

    invoke-virtual {v7}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 541
    :pswitch_6
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 545
    :pswitch_7
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 550
    :pswitch_8
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 554
    :pswitch_9
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "PKCS9 attribute #13 not supported."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 558
    :pswitch_a
    new-instance v7, Lsun/security/x509/CertificateExtensions;

    new-instance v8, Lsun/security/util/DerInputStream;

    aget-object v9, v1, v9

    .line 559
    invoke-virtual {v9}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 563
    :pswitch_b
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "PKCS9 SMIMECapability attribute not supported."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 567
    :pswitch_c
    new-instance v7, Lsun/security/pkcs/SigningCertificateInfo;

    aget-object v8, v1, v9

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/security/pkcs/SigningCertificateInfo;-><init>([B)V

    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 571
    :pswitch_d
    aget-object v7, v1, v9

    invoke-virtual {v7}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v7

    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 0
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    invoke-direct {p0, p1, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    .line 407
    return-void
.end method

.method public static getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 754
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 746
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method static indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "start"    # I

    .prologue
    .line 800
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 801
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 800
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 4
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 440
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    .line 442
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported OID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " constructing PKCS9Attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong value class  for attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " constructing PKCS9Attribute; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 452
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    iget v3, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v2, v2, v3

    .line 453
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_1
    iput-object p2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 456
    return-void
.end method

.method private throwSingleValuedException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Single-value attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 812
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") has multiple values."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwTagException(Ljava/lang/Byte;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v4, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v3, v4

    .line 823
    .local v0, "expectedTags":[Ljava/lang/Byte;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 824
    .local v2, "msg":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "Value of attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 826
    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 827
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 828
    const-string/jumbo v3, ") has wrong tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 829
    invoke-virtual {p1}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    const-string/jumbo v3, ".  Expected tags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 832
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 834
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 835
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 836
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    :cond_0
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x31

    .line 586
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 587
    .local v4, "temp":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v4, v8}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 588
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v8, :pswitch_data_0

    .line 699
    :goto_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 700
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    const/16 v8, 0x30

    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 702
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 704
    return-void

    .line 592
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    :pswitch_0
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    .line 593
    .local v7, "values":[Ljava/lang/String;
    array-length v8, v7

    new-array v6, v8, [Lsun/security/util/DerOutputStream;

    .line 596
    .local v6, "temps":[Lsun/security/util/DerOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 597
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v8, v6, v3

    .line 598
    aget-object v8, v6, v3

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 600
    :cond_0
    invoke-virtual {v4, v10, v6}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto :goto_0

    .line 606
    .end local v3    # "i":I
    .end local v6    # "temps":[Lsun/security/util/DerOutputStream;
    .end local v7    # "values":[Ljava/lang/String;
    :pswitch_1
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 607
    .local v5, "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 608
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_0

    .line 614
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_2
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 615
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 616
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_0

    .line 622
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_3
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 623
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Ljava/util/Date;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 624
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_0

    .line 629
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_4
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [Lsun/security/util/DerEncoder;

    check-cast v8, [Lsun/security/util/DerEncoder;

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto :goto_0

    .line 634
    :pswitch_5
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 635
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_0

    .line 642
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_6
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    .line 643
    .restart local v7    # "values":[Ljava/lang/String;
    array-length v8, v7

    new-array v6, v8, [Lsun/security/util/DerOutputStream;

    .line 646
    .restart local v6    # "temps":[Lsun/security/util/DerOutputStream;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v8, v7

    if-ge v3, v8, :cond_1

    .line 647
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v8, v6, v3

    .line 648
    aget-object v8, v6, v3

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 650
    :cond_1
    invoke-virtual {v4, v10, v6}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto/16 :goto_0

    .line 655
    .end local v3    # "i":I
    .end local v6    # "temps":[Lsun/security/util/DerOutputStream;
    .end local v7    # "values":[Ljava/lang/String;
    :pswitch_7
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 659
    :pswitch_8
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 664
    :pswitch_9
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 668
    :pswitch_a
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #13 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 673
    :pswitch_b
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 674
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v2, Lsun/security/x509/CertificateExtensions;

    .line 676
    .local v2, "exts":Lsun/security/x509/CertificateExtensions;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v2, v5, v8}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_0

    .line 677
    :catch_0
    move-exception v1

    .line 678
    .local v1, "ex":Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 684
    .end local v1    # "ex":Ljava/security/cert/CertificateException;
    .end local v2    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_c
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #15 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 688
    :pswitch_d
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 SigningCertificate attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 693
    :pswitch_e
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 738
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 2

    .prologue
    .line 731
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isSingleValued()Z
    .locals 2

    .prologue
    .line 724
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 761
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v5, 0x64

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 763
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    iget v7, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    const-string/jumbo v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 768
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v6, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_1

    .line 769
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    instance-of v5, v5, [B

    if-eqz v5, :cond_0

    .line 770
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 771
    .local v2, "hexDump":Lsun/misc/HexDumpEncoder;
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-virtual {v2, v5}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 775
    .end local v2    # "hexDump":Lsun/misc/HexDumpEncoder;
    :goto_0
    const-string/jumbo v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 776
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 789
    :goto_1
    return-object v5

    .line 773
    :cond_0
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 778
    :cond_1
    const/4 v1, 0x1

    .line 779
    .local v1, "first":Z
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    .line 781
    .local v4, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 782
    if-eqz v1, :cond_2

    .line 783
    const/4 v1, 0x0

    .line 787
    :goto_3
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 785
    :cond_2
    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 789
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
