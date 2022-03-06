.class public Lsun/security/x509/X500Name;
.super Ljava/lang/Object;
.source "X500Name.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;
.implements Ljava/security/Principal;


# static fields
.field private static final DNQUALIFIER_DATA:[I

.field public static final DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final DOMAIN_COMPONENT_DATA:[I

.field public static final DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

.field private static final GENERATIONQUALIFIER_DATA:[I

.field public static final GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final GIVENNAME_DATA:[I

.field public static final GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

.field private static final INITIALS_DATA:[I

.field public static final INITIALS_OID:Lsun/security/util/ObjectIdentifier;

.field private static final SERIALNUMBER_DATA:[I

.field public static final SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final SURNAME_DATA:[I

.field public static final SURNAME_OID:Lsun/security/util/ObjectIdentifier;

.field private static final commonName_data:[I

.field public static final commonName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final countryName_data:[I

.field public static final countryName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final internedOIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final ipAddress_data:[I

.field public static final ipAddress_oid:Lsun/security/util/ObjectIdentifier;

.field private static final localityName_data:[I

.field public static final localityName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final orgName_data:[I

.field public static final orgName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final orgUnitName_data:[I

.field public static final orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final stateName_data:[I

.field public static final stateName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final streetAddress_data:[I

.field public static final streetAddress_oid:Lsun/security/util/ObjectIdentifier;

.field private static final title_data:[I

.field public static final title_oid:Lsun/security/util/ObjectIdentifier;

.field private static final userid_data:[I

.field public static final userid_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private volatile allAvaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field

.field private canonicalDn:Ljava/lang/String;

.field private dn:Ljava/lang/String;

.field private encoded:[B

.field private names:[Lsun/security/x509/RDN;

.field private volatile rdnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/RDN;",
            ">;"
        }
    .end annotation
.end field

.field private rfc1779Dn:Ljava/lang/String;

.field private rfc2253Dn:Ljava/lang/String;

.field private x500Principal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x4

    .line 1126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    .line 1134
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/x509/X500Name;->commonName_data:[I

    .line 1135
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lsun/security/x509/X500Name;->SURNAME_DATA:[I

    .line 1136
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lsun/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    .line 1137
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lsun/security/x509/X500Name;->countryName_data:[I

    .line 1138
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lsun/security/x509/X500Name;->localityName_data:[I

    .line 1139
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lsun/security/x509/X500Name;->stateName_data:[I

    .line 1140
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lsun/security/x509/X500Name;->streetAddress_data:[I

    .line 1141
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lsun/security/x509/X500Name;->orgName_data:[I

    .line 1142
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lsun/security/x509/X500Name;->orgUnitName_data:[I

    .line 1143
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lsun/security/x509/X500Name;->title_data:[I

    .line 1144
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lsun/security/x509/X500Name;->GIVENNAME_DATA:[I

    .line 1145
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lsun/security/x509/X500Name;->INITIALS_DATA:[I

    .line 1146
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    .line 1147
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lsun/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    .line 1149
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lsun/security/x509/X500Name;->ipAddress_data:[I

    .line 1150
    new-array v0, v2, [I

    fill-array-data v0, :array_f

    sput-object v0, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    .line 1152
    new-array v0, v2, [I

    fill-array-data v0, :array_10

    sput-object v0, Lsun/security/x509/X500Name;->userid_data:[I

    .line 1176
    sget-object v0, Lsun/security/x509/X500Name;->commonName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1181
    sget-object v0, Lsun/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    .line 1184
    sget-object v0, Lsun/security/x509/X500Name;->countryName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1187
    sget-object v0, Lsun/security/x509/X500Name;->localityName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1190
    sget-object v0, Lsun/security/x509/X500Name;->orgName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1193
    sget-object v0, Lsun/security/x509/X500Name;->orgUnitName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1196
    sget-object v0, Lsun/security/x509/X500Name;->stateName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1199
    sget-object v0, Lsun/security/x509/X500Name;->streetAddress_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->streetAddress_oid:Lsun/security/util/ObjectIdentifier;

    .line 1202
    sget-object v0, Lsun/security/x509/X500Name;->title_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->title_oid:Lsun/security/util/ObjectIdentifier;

    .line 1206
    sget-object v0, Lsun/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    .line 1209
    sget-object v0, Lsun/security/x509/X500Name;->SURNAME_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 1212
    sget-object v0, Lsun/security/x509/X500Name;->GIVENNAME_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 1215
    sget-object v0, Lsun/security/x509/X500Name;->INITIALS_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    .line 1218
    sget-object v0, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    .line 1219
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    .line 1226
    sget-object v0, Lsun/security/x509/X500Name;->ipAddress_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    .line 1236
    sget-object v0, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    .line 1237
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    .line 1240
    sget-object v0, Lsun/security/x509/X500Name;->userid_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->userid_oid:Lsun/security/util/ObjectIdentifier;

    .line 1241
    return-void

    .line 1134
    nop

    :array_0
    .array-data 4
        0x2
        0x5
        0x4
        0x3
    .end array-data

    .line 1135
    :array_1
    .array-data 4
        0x2
        0x5
        0x4
        0x4
    .end array-data

    .line 1136
    :array_2
    .array-data 4
        0x2
        0x5
        0x4
        0x5
    .end array-data

    .line 1137
    :array_3
    .array-data 4
        0x2
        0x5
        0x4
        0x6
    .end array-data

    .line 1138
    :array_4
    .array-data 4
        0x2
        0x5
        0x4
        0x7
    .end array-data

    .line 1139
    :array_5
    .array-data 4
        0x2
        0x5
        0x4
        0x8
    .end array-data

    .line 1140
    :array_6
    .array-data 4
        0x2
        0x5
        0x4
        0x9
    .end array-data

    .line 1141
    :array_7
    .array-data 4
        0x2
        0x5
        0x4
        0xa
    .end array-data

    .line 1142
    :array_8
    .array-data 4
        0x2
        0x5
        0x4
        0xb
    .end array-data

    .line 1143
    :array_9
    .array-data 4
        0x2
        0x5
        0x4
        0xc
    .end array-data

    .line 1144
    :array_a
    .array-data 4
        0x2
        0x5
        0x4
        0x2a
    .end array-data

    .line 1145
    :array_b
    .array-data 4
        0x2
        0x5
        0x4
        0x2b
    .end array-data

    .line 1146
    :array_c
    .array-data 4
        0x2
        0x5
        0x4
        0x2c
    .end array-data

    .line 1147
    :array_d
    .array-data 4
        0x2
        0x5
        0x4
        0x2e
    .end array-data

    .line 1149
    :array_e
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x4
        0x1
        0x2a
        0x2
        0xb
        0x2
        0x1
    .end array-data

    .line 1150
    :array_f
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x19
    .end array-data

    .line 1152
    :array_10
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dname"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    const-string/jumbo v0, "RFC2253"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->parseRFC2253DN(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string/jumbo v0, "DEFAULT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 190
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "commonName"    # Ljava/lang/String;
    .param p2, "organizationUnit"    # Ljava/lang/String;
    .param p3, "organizationName"    # Ljava/lang/String;
    .param p4, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x4

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 215
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v2

    .line 216
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v2

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 218
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v6

    .line 219
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v6

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 221
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v5

    .line 222
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v5

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 224
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v4

    .line 225
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "commonName"    # Ljava/lang/String;
    .param p2, "organizationUnit"    # Ljava/lang/String;
    .param p3, "organizationName"    # Ljava/lang/String;
    .param p4, "localityName"    # Ljava/lang/String;
    .param p5, "stateName"    # Ljava/lang/String;
    .param p6, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x6

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 253
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    const/4 v1, 0x5

    new-instance v2, Lsun/security/x509/RDN;

    invoke-direct {v2, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v2, v0, v1

    .line 254
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 256
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v8

    .line 257
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v8

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 259
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v7

    .line 260
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v7

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 262
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v6

    .line 263
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v6

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 265
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v5

    .line 266
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v5

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p5}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 268
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v4

    .line 269
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "dname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-direct {p0, p1, p2}, Lsun/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 0
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->parseDER(Lsun/security/util/DerInputStream;)V

    .line 312
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "value"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    .line 302
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 321
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->parseDER(Lsun/security/util/DerInputStream;)V

    .line 322
    return-void
.end method

.method public constructor <init>([Lsun/security/x509/RDN;)V
    .locals 3
    .param p1, "rdnArray"    # [Lsun/security/x509/RDN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    if-nez p1, :cond_1

    .line 281
    const/4 v1, 0x0

    new-array v1, v1, [Lsun/security/x509/RDN;

    iput-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 290
    :cond_0
    return-void

    .line 283
    :cond_1
    invoke-virtual {p1}, [Lsun/security/x509/RDN;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsun/security/x509/RDN;

    iput-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 286
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Cannot create an X500Name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;
    .locals 4
    .param p0, "p"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 1435
    :try_start_0
    new-instance v1, Lsun/security/x509/X500Name;

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v1, "name":Lsun/security/x509/X500Name;
    iput-object p0, v1, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    return-object v1

    .line 1438
    .end local v1    # "name":Lsun/security/x509/X500Name;
    :catch_0
    move-exception v0

    .line 1439
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unexpected exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static countQuotes(Ljava/lang/String;II)I
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/16 v4, 0x22

    .line 1007
    const/4 v0, 0x0

    .line 1009
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    .line 1010
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    if-eq v1, p1, :cond_1

    .line 1011
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    .line 1012
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1009
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    :cond_3
    return v0
.end method

.method private static escaped(IILjava/lang/String;)Z
    .locals 5
    .param p0, "rdnEnd"    # I
    .param p1, "searchOffset"    # I
    .param p2, "dnString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x5c

    const/4 v1, 0x1

    .line 1022
    if-ne p0, v1, :cond_1

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return v1

    .line 1029
    :cond_1
    if-le p0, v1, :cond_2

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, p0, -0x2

    .line 1030
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1037
    :cond_2
    if-le p0, v1, :cond_5

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    add-int/lit8 v3, p0, -0x2

    .line 1038
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, "count":I
    add-int/lit8 p0, p0, -0x1

    .line 1045
    :goto_1
    if-lt p0, p1, :cond_4

    .line 1046
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    .line 1047
    add-int/lit8 v0, v0, 0x1

    .line 1049
    :cond_3
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 1053
    :cond_4
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "count":I
    :cond_5
    move v1, v2

    .line 1056
    goto :goto_0
.end method

.method private findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 3
    .param p1, "attribute"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 752
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_1

    .line 753
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 754
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v1

    .line 755
    .local v1, "value":Lsun/security/util/DerValue;
    if-eqz v1, :cond_0

    .line 760
    .end local v0    # "i":I
    .end local v1    # "value":Lsun/security/util/DerValue;
    :goto_1
    return-object v1

    .line 753
    .restart local v0    # "i":I
    .restart local v1    # "value":Lsun/security/util/DerValue;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    .end local v0    # "i":I
    .end local v1    # "value":Lsun/security/util/DerValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private generateDN()V
    .locals 4

    .prologue
    .line 1068
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1069
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    .line 1083
    :goto_0
    return-void

    .line 1073
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1074
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_2

    .line 1075
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1076
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1077
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1082
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    goto :goto_0
.end method

.method private generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1095
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1096
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 1108
    :goto_0
    return-object v2

    .line 1099
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1100
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_2

    .line 1101
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1102
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1103
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1108
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 684
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 685
    const-string/jumbo v2, ""

    .line 704
    :goto_0
    return-object v2

    .line 697
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 698
    .local v0, "fullname":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 699
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 700
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 704
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getString(Lsun/security/util/DerValue;)Ljava/lang/String;
    .locals 4
    .param p1, "attribute"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    if-nez p1, :cond_1

    .line 432
    const/4 v0, 0x0

    .line 439
    :cond_0
    return-object v0

    .line 433
    :cond_1
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 436
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not a DER string encoding, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p1, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;
    .locals 2
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 1118
    sget-object v1, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    .line 1119
    .local v0, "interned":Lsun/security/util/ObjectIdentifier;
    if-eqz v0, :cond_0

    .line 1123
    .end local v0    # "interned":Lsun/security/util/ObjectIdentifier;
    :goto_0
    return-object v0

    .line 1122
    .restart local v0    # "interned":Lsun/security/util/ObjectIdentifier;
    :cond_0
    sget-object v1, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    invoke-interface {v1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    .line 1123
    goto :goto_0
.end method

.method private isWithinSubtree(Lsun/security/x509/X500Name;)Z
    .locals 5
    .param p1, "other"    # Lsun/security/x509/X500Name;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1294
    if-ne p0, p1, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return v1

    .line 1297
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 1298
    goto :goto_0

    .line 1300
    :cond_2
    iget-object v3, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    if-eqz v3, :cond_0

    .line 1303
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    if-nez v3, :cond_3

    move v1, v2

    .line 1304
    goto :goto_0

    .line 1306
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    iget-object v4, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    move v1, v2

    .line 1307
    goto :goto_0

    .line 1309
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1310
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v3, v3, v0

    iget-object v4, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 1311
    goto :goto_0

    .line 1309
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseDER(Lsun/security/util/DerInputStream;)V
    .locals 8
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    .line 787
    const/4 v4, 0x0

    .line 788
    .local v4, "nameseq":[Lsun/security/util/DerValue;
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v0

    .line 791
    .local v0, "derBytes":[B
    const/4 v5, 0x5

    :try_start_0
    invoke-virtual {p1, v5}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 803
    :goto_0
    if-nez v4, :cond_2

    .line 804
    const/4 v5, 0x0

    new-array v5, v5, [Lsun/security/x509/RDN;

    iput-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 811
    :cond_0
    return-void

    .line 792
    :catch_0
    move-exception v3

    .line 793
    .local v3, "ioe":Ljava/io/IOException;
    if-nez v0, :cond_1

    .line 794
    const/4 v4, 0x0

    goto :goto_0

    .line 796
    :cond_1
    new-instance v1, Lsun/security/util/DerValue;

    const/16 v5, 0x30

    invoke-direct {v1, v5, v0}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 798
    .local v1, "derVal":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    .line 799
    new-instance v5, Lsun/security/util/DerInputStream;

    invoke-direct {v5, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v4

    goto :goto_0

    .line 806
    .end local v1    # "derVal":Lsun/security/util/DerValue;
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_2
    array-length v5, v4

    new-array v5, v5, [Lsun/security/x509/RDN;

    iput-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 807
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 808
    iget-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v6, Lsun/security/x509/RDN;

    aget-object v7, v4, v2

    invoke-direct {v6, v7}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    aput-object v6, v5, v2

    .line 807
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private parseDN(Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v12, 0x3b

    const/16 v11, 0x2c

    .line 879
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 880
    :cond_0
    const/4 v10, 0x0

    new-array v10, v10, [Lsun/security/x509/RDN;

    iput-object v10, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 948
    :goto_0
    return-void

    .line 884
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v2, "dnVector":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    const/4 v0, 0x0

    .line 888
    .local v0, "dnOffset":I
    const/4 v5, 0x0

    .line 890
    .local v5, "quoteCount":I
    move-object v1, p1

    .line 892
    .local v1, "dnString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 893
    .local v9, "searchOffset":I
    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 894
    .local v3, "nextComma":I
    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 895
    .local v4, "nextSemiColon":I
    :goto_1
    if-gez v3, :cond_2

    if-ltz v4, :cond_6

    .line 897
    :cond_2
    if-gez v4, :cond_4

    .line 898
    move v7, v3

    .line 904
    .local v7, "rdnEnd":I
    :goto_2
    invoke-static {v1, v9, v7}, Lsun/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    move-result v10

    add-int/2addr v5, v10

    .line 913
    if-ltz v7, :cond_3

    const/4 v10, 0x1

    if-eq v5, v10, :cond_3

    .line 914
    invoke-static {v7, v9, v1}, Lsun/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 919
    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 922
    .local v8, "rdnString":Ljava/lang/String;
    new-instance v6, Lsun/security/x509/RDN;

    invoke-direct {v6, v8, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 923
    .local v6, "rdn":Lsun/security/x509/RDN;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    add-int/lit8 v0, v7, 0x1

    .line 929
    const/4 v5, 0x0

    .line 932
    .end local v6    # "rdn":Lsun/security/x509/RDN;
    .end local v8    # "rdnString":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v7, 0x1

    .line 933
    invoke-virtual {v1, v11, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 934
    invoke-virtual {v1, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    .line 899
    .end local v7    # "rdnEnd":I
    :cond_4
    if-gez v3, :cond_5

    .line 900
    move v7, v4

    .restart local v7    # "rdnEnd":I
    goto :goto_2

    .line 902
    .end local v7    # "rdnEnd":I
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .restart local v7    # "rdnEnd":I
    goto :goto_2

    .line 938
    .end local v7    # "rdnEnd":I
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 939
    .restart local v8    # "rdnString":Ljava/lang/String;
    new-instance v6, Lsun/security/x509/RDN;

    invoke-direct {v6, v8, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 940
    .restart local v6    # "rdn":Lsun/security/x509/RDN;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 947
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lsun/security/x509/RDN;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lsun/security/x509/RDN;

    iput-object v10, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    goto :goto_0
.end method

.method private parseRFC2253DN(Ljava/lang/String;)V
    .locals 8
    .param p1, "dnString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2c

    .line 951
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 952
    const/4 v6, 0x0

    new-array v6, v6, [Lsun/security/x509/RDN;

    iput-object v6, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 1000
    :goto_0
    return-void

    .line 956
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v1, "dnVector":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    const/4 v0, 0x0

    .line 960
    .local v0, "dnOffset":I
    const/4 v5, 0x0

    .line 961
    .local v5, "searchOffset":I
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 962
    .local v3, "rdnEnd":I
    :goto_1
    if-ltz v3, :cond_2

    .line 970
    if-lez v3, :cond_1

    invoke-static {v3, v5, p1}, Lsun/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 975
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 978
    .local v4, "rdnString":Ljava/lang/String;
    new-instance v2, Lsun/security/x509/RDN;

    const-string/jumbo v6, "RFC2253"

    invoke-direct {v2, v4, v6}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    .local v2, "rdn":Lsun/security/x509/RDN;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    add-int/lit8 v0, v3, 0x1

    .line 985
    .end local v2    # "rdn":Lsun/security/x509/RDN;
    .end local v4    # "rdnString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 986
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_1

    .line 990
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 991
    .restart local v4    # "rdnString":Ljava/lang/String;
    new-instance v2, Lsun/security/x509/RDN;

    const-string/jumbo v6, "RFC2253"

    invoke-direct {v2, v4, v6}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    .restart local v2    # "rdn":Lsun/security/x509/RDN;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 999
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lsun/security/x509/RDN;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lsun/security/x509/RDN;

    iput-object v6, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    goto :goto_0
.end method


# virtual methods
.method public allAvas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v1, p0, Lsun/security/x509/X500Name;->allAvaList:Ljava/util/List;

    .line 349
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    if-nez v1, :cond_0

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 352
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/security/x509/RDN;->avas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public asX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .prologue
    .line 1417
    iget-object v1, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_1

    .line 1419
    :try_start_0
    iget-object v1, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lsun/security/x509/X500Name;->generateDN()V

    .line 1420
    :cond_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :cond_1
    iget-object v1, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    return-object v1

    .line 1421
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public avaSize()I
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;
    .locals 11
    .param p1, "other"    # Lsun/security/x509/X500Name;

    .prologue
    const/4 v8, 0x0

    .line 1337
    if-nez p1, :cond_0

    move-object v1, v8

    .line 1372
    :goto_0
    return-object v1

    .line 1340
    :cond_0
    iget-object v9, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v6, v9

    .line 1341
    .local v6, "otherLen":I
    iget-object v9, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v7, v9

    .line 1342
    .local v7, "thisLen":I
    if-eqz v7, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v1, v8

    .line 1343
    goto :goto_0

    .line 1345
    :cond_2
    if-ge v7, v6, :cond_3

    move v5, v7

    .line 1349
    .local v5, "minLen":I
    :goto_1
    const/4 v2, 0x0

    .line 1350
    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 1351
    iget-object v9, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v9, v9, v2

    iget-object v10, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1352
    if-nez v2, :cond_5

    move-object v1, v8

    .line 1353
    goto :goto_0

    .end local v2    # "i":I
    .end local v5    # "minLen":I
    :cond_3
    move v5, v6

    .line 1345
    goto :goto_1

    .line 1350
    .restart local v2    # "i":I
    .restart local v5    # "minLen":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1361
    :cond_5
    new-array v0, v2, [Lsun/security/x509/RDN;

    .line 1362
    .local v0, "ancestor":[Lsun/security/x509/RDN;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v2, :cond_6

    .line 1363
    iget-object v9, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v9, v9, v4

    aput-object v9, v0, v4

    .line 1362
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1366
    :cond_6
    const/4 v1, 0x0

    .line 1368
    .local v1, "commonAncestor":Lsun/security/x509/X500Name;
    :try_start_0
    new-instance v1, Lsun/security/x509/X500Name;

    .end local v1    # "commonAncestor":Lsun/security/x509/X500Name;
    invoke-direct {v1, v0}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "commonAncestor":Lsun/security/x509/X500Name;
    goto :goto_0

    .line 1369
    .end local v1    # "commonAncestor":Lsun/security/x509/X500Name;
    :catch_0
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    move-object v1, v8

    .line 1370
    goto :goto_0
.end method

.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 4
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1263
    if-nez p1, :cond_0

    .line 1264
    const/4 v0, -0x1

    .line 1283
    .local v0, "constraintType":I
    :goto_0
    return v0

    .line 1265
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 1266
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .end local v0    # "constraintType":I
    :cond_1
    move-object v1, p1

    .line 1268
    check-cast v1, Lsun/security/x509/X500Name;

    .line 1269
    .local v1, "inputX500":Lsun/security/x509/X500Name;
    invoke-virtual {v1, p0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1270
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 1271
    .end local v0    # "constraintType":I
    :cond_2
    iget-object v2, v1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_3

    .line 1272
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 1273
    .end local v0    # "constraintType":I
    :cond_3
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_4

    .line 1274
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 1275
    .end local v0    # "constraintType":I
    :cond_4
    invoke-direct {v1, p0}, Lsun/security/x509/X500Name;->isWithinSubtree(Lsun/security/x509/X500Name;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1276
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 1277
    .end local v0    # "constraintType":I
    :cond_5
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->isWithinSubtree(Lsun/security/x509/X500Name;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1278
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 1280
    .end local v0    # "constraintType":I
    :cond_6
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_0
.end method

.method public emit(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 821
    invoke-virtual {p0, p1}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 822
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 831
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 832
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :cond_0
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 835
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 397
    if-ne p0, p1, :cond_1

    .line 398
    const/4 v7, 0x1

    .line 423
    :cond_0
    :goto_0
    return v7

    .line 400
    :cond_1
    instance-of v8, p1, Lsun/security/x509/X500Name;

    if-eqz v8, :cond_0

    move-object v2, p1

    .line 403
    check-cast v2, Lsun/security/x509/X500Name;

    .line 405
    .local v2, "other":Lsun/security/x509/X500Name;
    iget-object v8, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v2, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 406
    iget-object v7, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    iget-object v8, v2, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0

    .line 409
    :cond_2
    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v8

    .line 410
    .local v1, "n":I
    iget-object v8, v2, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v8, v8

    if-ne v1, v8, :cond_0

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 414
    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v4, v8, v0

    .line 415
    .local v4, "r1":Lsun/security/x509/RDN;
    iget-object v8, v2, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v5, v8, v0

    .line 416
    .local v5, "r2":Lsun/security/x509/RDN;
    iget-object v8, v4, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v8, v8

    iget-object v9, v5, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v9, v9

    if-ne v8, v9, :cond_0

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    .end local v4    # "r1":Lsun/security/x509/RDN;
    .end local v5    # "r2":Lsun/security/x509/RDN;
    :cond_3
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 422
    .local v6, "thisCanonical":Ljava/lang/String;
    invoke-virtual {v2}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "otherCanonical":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0
.end method

.method public findMostSpecificAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 3
    .param p1, "attribute"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 768
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_1

    .line 769
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 770
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v1

    .line 771
    .local v1, "value":Lsun/security/util/DerValue;
    if-eqz v1, :cond_0

    .line 776
    .end local v0    # "i":I
    .end local v1    # "value":Lsun/security/util/DerValue;
    :goto_1
    return-object v1

    .line 769
    .restart local v0    # "i":I
    .restart local v1    # "value":Lsun/security/util/DerValue;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 776
    .end local v0    # "i":I
    .end local v1    # "value":Lsun/security/util/DerValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCommonName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    sget-object v1, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 497
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    sget-object v1, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 458
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDNQualifier()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    sget-object v1, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 546
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    sget-object v1, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 534
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEncodedInternal()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    iget-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    if-nez v3, :cond_1

    .line 844
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 845
    .local v1, "out":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 846
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 847
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    :cond_0
    const/16 v3, 0x30

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 850
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    .line 852
    .end local v0    # "i":I
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    return-object v3
.end method

.method public getGeneration()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    sget-object v1, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 594
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    sget-object v1, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 570
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIP()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    sget-object v1, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 606
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInitials()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    sget-object v1, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 582
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocality()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    sget-object v1, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 510
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    sget-object v1, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 471
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOrganizationalUnit()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    sget-object v1, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 484
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRFC1779Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/X500Name;->getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 639
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    .line 648
    :goto_0
    return-object v0

    .line 644
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    goto :goto_0

    .line 648
    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRFC2253CanonicalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 709
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 710
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    .line 738
    :goto_0
    return-object v2

    .line 716
    :cond_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 717
    const-string/jumbo v2, ""

    iput-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    .line 718
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    goto :goto_0

    .line 730
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 731
    .local v0, "fullname":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 732
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 733
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    :cond_2
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 737
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    .line 738
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRFC2253Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/X500Name;->getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    .line 676
    :goto_0
    return-object v0

    .line 672
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    .line 673
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    goto :goto_0

    .line 676
    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    sget-object v1, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 522
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSurname()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    sget-object v1, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 558
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 371
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v3

    .line 372
    .local v1, "n":I
    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v2

    .line 375
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 376
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v3, v3, v0

    iget-object v3, v3, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v3, v3

    if-eqz v3, :cond_2

    .line 377
    const/4 v2, 0x0

    goto :goto_0

    .line 375
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public rdns()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/RDN;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lsun/security/x509/X500Name;->rdnList:Ljava/util/List;

    .line 329
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    if-nez v0, :cond_0

    .line 330
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 331
    iput-object v0, p0, Lsun/security/x509/X500Name;->rdnList:Ljava/util/List;

    .line 333
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    return v0
.end method

.method public subtreeDepth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1326
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 617
    invoke-direct {p0}, Lsun/security/x509/X500Name;->generateDN()V

    .line 619
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    return-object v0
.end method
