.class public Lsun/security/x509/AlgorithmId;
.super Ljava/lang/Object;
.source "AlgorithmId.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static final DH_PKIX_data:[I

.field public static final DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DH_data:[I

.field public static final DH_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DSA_OIW_data:[I

.field public static final DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DSA_PKIX_data:[I

.field public static final DSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final EC_oid:Lsun/security/util/ObjectIdentifier;

.field public static final MD2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final MD5_oid:Lsun/security/util/ObjectIdentifier;

.field private static final RSAEncryption_data:[I

.field public static final RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final RSA_data:[I

.field public static final RSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA256_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA384_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA512_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final dsaWithSHA1_PKIX_data:[I

.field private static initOidTable:Z = false

.field private static final md2WithRSAEncryption_data:[I

.field public static final md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final md5WithRSAEncryption_data:[I

.field public static final md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final nameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static oidTable:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static final pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static final pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field private static final serialVersionUID:J = 0x640067c6d62263e5L

.field private static final sha1WithDSA_OIW_data:[I

.field public static final sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha1WithRSAEncryption_OIW_data:[I

.field public static final sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha1WithRSAEncryption_data:[I

.field public static final sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha256WithRSAEncryption_data:[I

.field public static final sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha384WithRSAEncryption_data:[I

.field public static final sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha512WithRSAEncryption_data:[I

.field public static final sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final shaWithDSA_OIW_data:[I

.field public static final shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private algParams:Ljava/security/AlgorithmParameters;

.field private algid:Lsun/security/util/ObjectIdentifier;

.field private constructedFromDer:Z

.field protected params:Lsun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0x9

    const/4 v2, 0x6

    const/4 v1, 0x7

    .line 587
    const/4 v0, 0x0

    sput-boolean v0, Lsun/security/x509/AlgorithmId;->initOidTable:Z

    .line 601
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 602
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    .line 608
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    .line 609
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    .line 617
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    .line 618
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    .line 620
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    .line 621
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    .line 623
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    .line 624
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    .line 626
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    .line 627
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    .line 632
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_data:[I

    .line 633
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    .line 634
    new-array v0, v2, [I

    fill-array-data v0, :array_8

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    .line 635
    new-array v0, v2, [I

    fill-array-data v0, :array_9

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    .line 636
    new-array v0, v2, [I

    fill-array-data v0, :array_a

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    .line 637
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    .line 644
    new-array v0, v2, [I

    fill-array-data v0, :array_c

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    .line 651
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    .line 653
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    .line 655
    new-array v0, v1, [I

    fill-array-data v0, :array_f

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    .line 657
    new-array v0, v2, [I

    fill-array-data v0, :array_10

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    .line 659
    new-array v0, v1, [I

    fill-array-data v0, :array_11

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    .line 661
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    .line 663
    new-array v0, v1, [I

    fill-array-data v0, :array_13

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    .line 665
    new-array v0, v2, [I

    fill-array-data v0, :array_14

    sput-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    .line 667
    new-array v0, v2, [I

    fill-array-data v0, :array_15

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    .line 669
    new-array v0, v2, [I

    fill-array-data v0, :array_16

    sput-object v0, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    .line 683
    new-array v0, v2, [I

    fill-array-data v0, :array_17

    .line 684
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 685
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    .line 686
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 687
    new-array v0, v1, [I

    fill-array-data v0, :array_19

    .line 688
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 689
    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    .line 690
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 691
    new-array v0, v1, [I

    fill-array-data v0, :array_1b

    .line 692
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 693
    new-array v0, v2, [I

    fill-array-data v0, :array_1c

    .line 694
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 700
    new-array v0, v1, [I

    fill-array-data v0, :array_1d

    .line 701
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    .line 702
    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    .line 703
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    .line 704
    new-array v0, v1, [I

    fill-array-data v0, :array_1f

    .line 705
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    .line 706
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    .line 707
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    .line 708
    new-array v0, v4, [I

    fill-array-data v0, :array_21

    .line 709
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    .line 710
    new-array v0, v4, [I

    fill-array-data v0, :array_22

    .line 711
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    .line 728
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    .line 735
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    .line 745
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 754
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 762
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 769
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 777
    sget-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    .line 778
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 785
    sget-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    .line 786
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 793
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    .line 794
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 801
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    .line 802
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 809
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    .line 810
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 817
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    .line 818
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 825
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    .line 826
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 834
    sget-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 841
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 848
    sget-object v0, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 850
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    .line 851
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "Diffie-Hellman"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "Diffie-Hellman"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA224withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA256withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA384withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA512withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD5withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD2withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA256withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA384withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA512withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithMD5AndDES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithMD5AndRC2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndDES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndRC2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndDESede"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndRC2_40"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    return-void

    .line 601
    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x2
    .end array-data

    .line 608
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x5
    .end array-data

    .line 617
    :array_2
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1a
    .end array-data

    .line 620
    :array_3
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x1
    .end array-data

    .line 623
    :array_4
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x2
    .end array-data

    .line 626
    :array_5
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x3
    .end array-data

    .line 632
    :array_6
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x3
        0x1
    .end array-data

    .line 633
    :array_7
    .array-data 4
        0x1
        0x2
        0x348
        0x273e
        0x2
        0x1
    .end array-data

    .line 634
    :array_8
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xc
    .end array-data

    .line 635
    :array_9
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x1
    .end array-data

    .line 636
    :array_a
    .array-data 4
        0x1
        0x2
        0x5
        0x8
        0x1
        0x1
    .end array-data

    .line 637
    :array_b
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x1
    .end array-data

    .line 644
    :array_c
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x2
        0x1
    .end array-data

    .line 651
    :array_d
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x2
    .end array-data

    .line 653
    :array_e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x4
    .end array-data

    .line 655
    :array_f
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x5
    .end array-data

    .line 657
    :array_10
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1d
    .end array-data

    .line 659
    :array_11
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xb
    .end array-data

    .line 661
    :array_12
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xc
    .end array-data

    .line 663
    :array_13
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xd
    .end array-data

    .line 665
    :array_14
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xd
    .end array-data

    .line 667
    :array_15
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1b
    .end array-data

    .line 669
    :array_16
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x3
    .end array-data

    .line 683
    :array_17
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x1
    .end array-data

    .line 685
    :array_18
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x1
    .end array-data

    .line 687
    :array_19
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x2
    .end array-data

    .line 689
    :array_1a
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x3
    .end array-data

    .line 691
    :array_1b
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x4
    .end array-data

    .line 693
    :array_1c
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
    .end array-data

    .line 700
    :array_1d
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x3
    .end array-data

    .line 702
    :array_1e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x6
    .end array-data

    .line 704
    :array_1f
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xa
    .end array-data

    .line 706
    :array_20
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xb
    .end array-data

    .line 708
    :array_21
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x3
    .end array-data

    .line 710
    :array_22
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 97
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 105
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 106
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "algparams"    # Ljava/security/AlgorithmParameters;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 115
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 116
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 118
    return-void
.end method

.method private constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "params"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 122
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 123
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 124
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->decodeParams()V

    .line 127
    :cond_0
    return-void
.end method

.method private static algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 472
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v10, :cond_1

    .line 473
    const-string/jumbo v7, "OID."

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 474
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v8, "OID."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 580
    :goto_0
    return-object v7

    .line 476
    :cond_0
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v7, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_1
    const-string/jumbo v7, "MD5"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 482
    sget-object v7, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    goto :goto_0

    .line 484
    :cond_2
    const-string/jumbo v7, "MD2"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 485
    sget-object v7, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    goto :goto_0

    .line 487
    :cond_3
    const-string/jumbo v7, "SHA"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "SHA1"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "SHA-1"

    .line 488
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 489
    :cond_4
    sget-object v7, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    goto :goto_0

    .line 491
    :cond_5
    const-string/jumbo v7, "SHA-256"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "SHA256"

    .line 492
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 493
    :cond_6
    sget-object v7, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    goto :goto_0

    .line 495
    :cond_7
    const-string/jumbo v7, "SHA-384"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "SHA384"

    .line 496
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 497
    :cond_8
    sget-object v7, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    goto :goto_0

    .line 499
    :cond_9
    const-string/jumbo v7, "SHA-512"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "SHA512"

    .line 500
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 501
    :cond_a
    sget-object v7, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    goto :goto_0

    .line 506
    :cond_b
    const-string/jumbo v7, "RSA"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 507
    sget-object v7, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    goto/16 :goto_0

    .line 509
    :cond_c
    const-string/jumbo v7, "Diffie-Hellman"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string/jumbo v7, "DH"

    .line 510
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 511
    :cond_d
    sget-object v7, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    goto/16 :goto_0

    .line 513
    :cond_e
    const-string/jumbo v7, "DSA"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 514
    sget-object v7, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    goto/16 :goto_0

    .line 516
    :cond_f
    const-string/jumbo v7, "EC"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 517
    sget-object v7, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    goto/16 :goto_0

    .line 521
    :cond_10
    const-string/jumbo v7, "MD5withRSA"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string/jumbo v7, "MD5/RSA"

    .line 522
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 523
    :cond_11
    sget-object v7, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    goto/16 :goto_0

    .line 525
    :cond_12
    const-string/jumbo v7, "MD2withRSA"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string/jumbo v7, "MD2/RSA"

    .line 526
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 527
    :cond_13
    sget-object v7, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    goto/16 :goto_0

    .line 529
    :cond_14
    const-string/jumbo v7, "SHAwithDSA"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string/jumbo v7, "SHA1withDSA"

    .line 530
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string/jumbo v7, "SHA/DSA"

    .line 531
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string/jumbo v7, "SHA1/DSA"

    .line 532
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string/jumbo v7, "DSAWithSHA1"

    .line 533
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string/jumbo v7, "DSS"

    .line 534
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string/jumbo v7, "SHA-1/DSA"

    .line 535
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 536
    :cond_15
    sget-object v7, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    goto/16 :goto_0

    .line 538
    :cond_16
    const-string/jumbo v7, "SHA1WithRSA"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    const-string/jumbo v7, "SHA1/RSA"

    .line 539
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 540
    :cond_17
    sget-object v7, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    goto/16 :goto_0

    .line 542
    :cond_18
    const-string/jumbo v7, "SHA1withECDSA"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19

    const-string/jumbo v7, "ECDSA"

    .line 543
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 544
    :cond_19
    sget-object v7, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    goto/16 :goto_0

    .line 550
    :cond_1a
    sget-boolean v7, Lsun/security/x509/AlgorithmId;->initOidTable:Z

    if-nez v7, :cond_20

    .line 551
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v5

    .line 552
    .local v5, "provs":[Ljava/security/Provider;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_1f

    .line 553
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 554
    .local v1, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_1b
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 555
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 557
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ALG.ALIAS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 558
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "OID."

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .local v3, "index":I
    if-eq v3, v10, :cond_1b

    .line 559
    const-string/jumbo v7, "OID."

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    .line 560
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v3, v7, :cond_1d

    .line 552
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 564
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_1d
    sget-object v7, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    if-nez v7, :cond_1e

    .line 565
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    .line 567
    :cond_1e
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, "oidString":Ljava/lang/String;
    aget-object v7, v5, v2

    .line 569
    invoke-virtual {v7, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 570
    .local v6, "stdAlgName":Ljava/lang/String;
    sget-object v7, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1b

    .line 571
    sget-object v7, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    new-instance v8, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v8, v4}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 577
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v3    # "index":I
    .end local v4    # "oidString":Ljava/lang/String;
    .end local v6    # "stdAlgName":Ljava/lang/String;
    :cond_1f
    const/4 v7, 0x1

    sput-boolean v7, Lsun/security/x509/AlgorithmId;->initOidTable:Z

    .line 580
    .end local v2    # "i":I
    .end local v5    # "provs":[Ljava/security/Provider;
    :cond_20
    sget-object v7, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/util/ObjectIdentifier;

    goto/16 :goto_0
.end method

.method public static get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .locals 5
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 421
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 427
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v1, :cond_0

    .line 428
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unrecognized algorithm name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v0

    .line 423
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid ObjectIdentifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    new-instance v2, Lsun/security/x509/AlgorithmId;

    invoke-direct {v2, v1}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    return-object v2
.end method

.method public static get(Ljava/security/AlgorithmParameters;)Lsun/security/x509/AlgorithmId;
    .locals 6
    .param p0, "algparams"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "algname":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 451
    .local v2, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v2, :cond_0

    .line 452
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized algorithm name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    .end local v2    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v1

    .line 448
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid ObjectIdentifier "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 455
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v2    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    new-instance v3, Lsun/security/x509/AlgorithmId;

    invoke-direct {v3, v2, p0}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    return-object v3
.end method

.method public static getAlgorithmId(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .locals 1
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    return-object v0
.end method

.method private static varargs oid([I)Lsun/security/util/ObjectIdentifier;
    .locals 1
    .param p0, "values"    # [I

    .prologue
    .line 584
    invoke-static {p0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;
    .locals 5
    .param p0, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 367
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "algid parse error, not a sequence"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 375
    :cond_0
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v1

    .line 377
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 378
    .local v0, "algid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_2

    .line 379
    const/4 v2, 0x0

    .line 393
    .local v2, "params":Lsun/security/util/DerValue;
    :cond_1
    new-instance v3, Lsun/security/x509/AlgorithmId;

    invoke-direct {v3, v0, v2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    return-object v3

    .line 381
    .end local v2    # "params":Lsun/security/util/DerValue;
    :cond_2
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 382
    .restart local v2    # "params":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 383
    invoke-virtual {v2}, Lsun/security/util/DerValue;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "invalid NULL"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 386
    :cond_3
    const/4 v2, 0x0

    .line 388
    :cond_4
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid AlgorithmIdentifier: extra data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method protected decodeParams()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "algidString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 152
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    goto :goto_0
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 172
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 174
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 176
    iget-boolean v2, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    if-nez v2, :cond_0

    .line 177
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v2, :cond_1

    .line 178
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {v3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 183
    :cond_0
    :goto_0
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v2, :cond_2

    .line 209
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->putNull()V

    .line 213
    :goto_1
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 214
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 215
    return-void

    .line 180
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    goto :goto_0

    .line 211
    :cond_2
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    goto :goto_1
.end method

.method public final encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    .line 159
    return-void
.end method

.method public final encode()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 223
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    .line 224
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 299
    if-ne p0, p1, :cond_0

    .line 300
    const/4 v0, 0x1

    .line 307
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 302
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lsun/security/x509/AlgorithmId;

    if-eqz v0, :cond_1

    .line 303
    check-cast p1, Lsun/security/x509/AlgorithmId;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v0

    goto :goto_0

    .line 304
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lsun/security/util/ObjectIdentifier;

    if-eqz v0, :cond_2

    .line 305
    check-cast p1, Lsun/security/util/ObjectIdentifier;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    goto :goto_0

    .line 307
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Lsun/security/util/ObjectIdentifier;)Z
    .locals 1
    .param p1, "id"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 316
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    return v0
.end method

.method public equals(Lsun/security/x509/AlgorithmId;)Z
    .locals 5
    .param p1, "other"    # Lsun/security/x509/AlgorithmId;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v3, :cond_1

    iget-object v3, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v3, :cond_0

    move v0, v1

    .line 288
    .local v0, "paramsEqual":Z
    :goto_0
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    iget-object v4, p1, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3, v4}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v1

    .end local v0    # "paramsEqual":Z
    :cond_0
    move v0, v2

    .line 286
    goto :goto_0

    :cond_1
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    iget-object v4, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 287
    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    move-result v0

    goto :goto_0

    .restart local v0    # "paramsEqual":Z
    :cond_2
    move v1, v2

    .line 288
    goto :goto_1
.end method

.method public getEncodedParams()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 247
    sget-object v3, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 264
    :goto_0
    return-object v3

    .line 251
    :cond_0
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3, v4}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    :try_start_0
    new-instance v3, Lsun/security/util/DerValue;

    .line 254
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    .line 255
    .local v1, "paramsId":Lsun/security/x509/AlgorithmId;
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "paramsName":Ljava/lang/String;
    const-string/jumbo v3, "SHA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    const-string/jumbo v2, "SHA1"

    .line 259
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "withECDSA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 264
    .end local v1    # "paramsId":Lsun/security/x509/AlgorithmId;
    .end local v2    # "paramsName":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public final getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method protected paramsToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_0

    .line 337
    const-string/jumbo v0, ""

    .line 341
    :goto_0
    return-object v0

    .line 338
    :cond_0
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_1
    const-string/jumbo v0, ", params unparsed"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
