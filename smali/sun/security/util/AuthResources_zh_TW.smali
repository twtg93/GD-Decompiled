.class public Lsun/security/util/AuthResources_zh_TW;
.super Ljava/util/ListResourceBundle;
.source "AuthResources_zh_TW.java"


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

    const-string/jumbo v2, "\u7121\u6548\u7a7a\u8f38\u5165\uff1a {0}"

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

    const-string/jumbo v3, "\u7121\u6548 NTSid \u503c"

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

    const-string/jumbo v3, "UnixNumericGroupPrincipal [\u4e3b\u7fa4\u7d44]\uff1a {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "UnixNumericGroupPrincipal [Supplementary Group]: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UnixNumericGroupPrincipal [\u9644\u52a0\u7fa4\u7d44]\uff1a {0}"

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

    const-string/jumbo v3, "UnixPrincipal\uff1a {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Unable to properly expand config"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u7121\u6cd5\u5b8c\u5168\u64f4\u5145 {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "extra_config (No such file or directory)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} \uff08\u6c92\u6709\u6b64\u6a94\u6848\u6216\u76ee\u9304\uff09"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Unable to locate a login configuration"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u7121\u6cd5\u5b9a\u4f4d\u767b\u5165\u914d\u7f6e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tInvalid control flag, flag"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u914d\u7f6e\u932f\u8aa4\uff1a\n\t\u7121\u6548\u7684\u63a7\u5236\u65d7\u865f\uff0c {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tCan not specify multiple entries for appName"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u914d\u7f6e\u932f\u8aa4\uff1a\n\t\u7121\u6cd5\u6307\u5b9a\u591a\u91cd\u9805\u76ee {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\texpected [expect], read [end of file]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u914d\u7f6e\u932f\u8aa4\uff1a\n\t\u9810\u671f\u7684 [{0}], \u8b80\u53d6 [\u6a94\u6848\u672b\u7aef]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tLine line: expected [expect], found [value]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u914d\u7f6e\u932f\u8aa4\uff1a\n\t\u884c {0}: \u9810\u671f\u7684 [{1}], \u767c\u73fe [{2}]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tLine line: expected [expect]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u914d\u7f6e\u932f\u8aa4\uff1a\n\t\u884c {0}: \u9810\u671f\u7684 [{1}]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tLine line: system property [value] expanded to empty value"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u914d\u7f6e\u932f\u8aa4\uff1a\n\t\u884c {0}: \u7cfb\u7d71\u5c6c\u6027 [{1}] \u64f4\u5145\u81f3\u7a7a\u503c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "username: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u4f7f\u7528\u8005\u540d\u7a31\uff1a "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u5bc6\u78bc\uff1a "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Please enter keystore information"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u8acb\u8f38\u5165 keystore \u8cc7\u8a0a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore alias: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore \u5225\u540d\uff1a "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore \u5bc6\u78bc\uff1a "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Private key password (optional): "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u79c1\u4eba\u95dc\u9375\u5bc6\u78bc\uff08\u9078\u64c7\u6027\u7684\uff09\uff1a "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Kerberos username [[defUsername]]: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kerberos \u4f7f\u7528\u8005\u540d\u7a31 [{0}]: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Kerberos password for [username]: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kerberos \u7684 {0} \u5bc6\u78bc\uff1a  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ": error parsing "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uff1a\u8a9e\u6cd5\u932f\u8aa4 "

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

    const-string/jumbo v3, "\uff1a\u65b0\u589e\u8a31\u53ef\u6b0a\u932f\u8aa4 "

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

    const-string/jumbo v3, "\u65b0\u589e\u8f38\u5165\u932f\u8aa4 "

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

    const-string/jumbo v3, "\u8a66\u8457\u65b0\u589e\u8a31\u53ef\u6b0a\u81f3\u552f\u8b80\u7684 PermissionCollection"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected keystore type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u9810\u671f\u7684 keystore \u985e\u578b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "can not specify Principal with a "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u7121\u6cd5\u4ee5\u6b64\u4f86\u6307\u5b9a Principal "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "wildcard class without a wildcard name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u842c\u7528\u5b57\u5143\u985e\u5225\u672a\u9644\u842c\u7528\u5b57\u5143\u540d\u7a31"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected codeBase or SignedBy"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u9810\u671f\u7684 codeBase \u6216 SignedBy"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "only Principal-based grant entries permitted"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u53ea\u5141\u8a31\u4ee5 Principal \u70ba\u57fa\u790e\u7684\u6388\u6b0a\u8f38\u5165"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected permission entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u9810\u671f\u8a31\u53ef\u8f38\u5165"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "number "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u865f\u78bc "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u9810\u671f\u7684 "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ", read end of file"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uff0c\u8b80\u53d6\u6a94\u6848\u672b\u7aef"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected \';\', read end of file"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u9810\u671f\u7684 \';\', \u8b80\u53d6\u6a94\u6848\u672b\u7aef"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "line "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u884c "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ": expected \'"

    aput-object v3, v2, v4

    const-string/jumbo v3, ": \u9810\u671f \'"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\', found \'"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\', \u767c\u73fe \'"

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

    const-string/jumbo v3, "SolarisNumericGroupPrincipal [\u4e3b\u7fa4\u7d44]\uff1a "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SolarisNumericGroupPrincipal [Supplementary Group]: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "SolarisNumericGroupPrincipal [\u9644\u52a0\u7fa4\u7d44]\uff1a "

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

    const-string/jumbo v3, "\u63d0\u4f9b\u7684\u7a7a\u540d\u7a31"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/util/AuthResources_zh_TW;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/security/util/AuthResources_zh_TW;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
