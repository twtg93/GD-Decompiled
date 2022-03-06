.class public Lsun/security/util/AuthResources;
.super Ljava/util/ListResourceBundle;
.source "AuthResources.java"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    const/16 v0, 0x3a

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "invalid null input: value"

    aput-object v2, v1, v4

    const-string/jumbo v2, "invalid null input: {0}"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "NTDomainPrincipal: name"

    aput-object v2, v1, v4

    const-string/jumbo v2, "NTDomainPrincipal: {0}"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "NTNumericCredential: name"

    aput-object v2, v1, v4

    const-string/jumbo v2, "NTNumericCredential: {0}"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Invalid NTSid value"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Invalid NTSid value"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "NTSid: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "NTSid: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "NTSidDomainPrincipal: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "NTSidDomainPrincipal: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "NTSidGroupPrincipal: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "NTSidGroupPrincipal: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "NTSidPrimaryGroupPrincipal: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "NTSidPrimaryGroupPrincipal: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "NTSidUserPrincipal: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "NTSidUserPrincipal: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "NTUserPrincipal: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "NTUserPrincipal: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "UnixNumericGroupPrincipal [Primary Group]: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UnixNumericGroupPrincipal [Primary Group]: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "UnixNumericGroupPrincipal [Supplementary Group]: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UnixNumericGroupPrincipal [Supplementary Group]: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "UnixNumericUserPrincipal: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UnixNumericUserPrincipal: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "UnixPrincipal: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UnixPrincipal: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Unable to properly expand config"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Unable to properly expand {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "extra_config (No such file or directory)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} (No such file or directory)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tNo such file or directory"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Configuration Error:\n\tNo such file or directory"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tInvalid control flag, flag"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Configuration Error:\n\tInvalid control flag, {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tCan not specify multiple entries for appName"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Configuration Error:\n\tCan not specify multiple entries for {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\texpected [expect], read [end of file]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Configuration Error:\n\texpected [{0}], read [end of file]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tLine line: expected [expect], found [value]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Configuration Error:\n\tLine {0}: expected [{1}], found [{2}]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tLine line: expected [expect]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Configuration Error:\n\tLine {0}: expected [{1}]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tLine line: system property [value] expanded to empty value"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Configuration Error:\n\tLine {0}: system property [{1}] expanded to empty value"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "username: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "username: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "password: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Please enter keystore information"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Please enter keystore information"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore alias: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore alias: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore password: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Private key password (optional): "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Private key password (optional): "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Kerberos username [[defUsername]]: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kerberos username [{0}]: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Kerberos password for [username]: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kerberos password for {0}: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ": error parsing "

    aput-object v3, v2, v4

    const-string/jumbo v3, ": error parsing "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ": "

    aput-object v3, v2, v4

    const-string/jumbo v3, ": "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ": error adding Permission "

    aput-object v3, v2, v4

    const-string/jumbo v3, ": error adding Permission "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, " "

    aput-object v3, v2, v4

    const-string/jumbo v3, " "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ": error adding Entry "

    aput-object v3, v2, v4

    const-string/jumbo v3, ": error adding Entry "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "("

    aput-object v3, v2, v4

    const-string/jumbo v3, "("

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ")"

    aput-object v3, v2, v4

    const-string/jumbo v3, ")"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "attempt to add a Permission to a readonly PermissionCollection"

    aput-object v3, v2, v4

    const-string/jumbo v3, "attempt to add a Permission to a readonly PermissionCollection"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected keystore type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "expected keystore type"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "can not specify Principal with a "

    aput-object v3, v2, v4

    const-string/jumbo v3, "can not specify Principal with a "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "wildcard class without a wildcard name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "wildcard class without a wildcard name"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected codeBase or SignedBy"

    aput-object v3, v2, v4

    const-string/jumbo v3, "expected codeBase or SignedBy"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "only Principal-based grant entries permitted"

    aput-object v3, v2, v4

    const-string/jumbo v3, "only Principal-based grant entries permitted"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected permission entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "expected permission entry"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "number "

    aput-object v3, v2, v4

    const-string/jumbo v3, "number "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected "

    aput-object v3, v2, v4

    const-string/jumbo v3, "expected "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ", read end of file"

    aput-object v3, v2, v4

    const-string/jumbo v3, ", read end of file"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected \';\', read end of file"

    aput-object v3, v2, v4

    const-string/jumbo v3, "expected \';\', read end of file"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "line "

    aput-object v3, v2, v4

    const-string/jumbo v3, "line "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ": expected \'"

    aput-object v3, v2, v4

    const-string/jumbo v3, ": expected \'"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\', found \'"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\', found \'"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\'"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\'"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SolarisNumericGroupPrincipal [Primary Group]: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "SolarisNumericGroupPrincipal [Primary Group]: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SolarisNumericGroupPrincipal [Supplementary Group]: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "SolarisNumericGroupPrincipal [Supplementary Group]: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SolarisNumericUserPrincipal: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "SolarisNumericUserPrincipal: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SolarisPrincipal: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "SolarisPrincipal: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provided null name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "provided null name"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/util/AuthResources;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lsun/security/util/AuthResources;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
