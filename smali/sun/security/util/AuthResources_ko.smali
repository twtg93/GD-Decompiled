.class public Lsun/security/util/AuthResources_ko;
.super Ljava/util/ListResourceBundle;
.source "AuthResources_ko.java"


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

    const-string/jumbo v2, "\uc798\ubabb\ub41c \ub110 \uc785\ub825:  {0}"

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

    const-string/jumbo v3, "\uc798\ubabb\ub41c NTSid \uac12"

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

    const-string/jumbo v3, "UnixNumericGroupPrincipal [\uae30\ubcf8 \uadf8\ub8f9]:  {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "UnixNumericGroupPrincipal [Supplementary Group]: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UnixNumericGroupPrincipal [\ubcf4\uc870 \uadf8\ub8f9]:  {0}"

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

    const-string/jumbo v3, "\uc801\uc808\ud788 \ud655\uc7a5\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "extra_config (No such file or directory)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} (\ud574\ub2f9 \ud30c\uc77c\uc774\ub098 \ub514\ub809\ud1a0\ub9ac\uac00 \uc5c6\uc2b5\ub2c8\ub2e4.)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Unable to locate a login configuration"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\ub85c\uadf8\uc778 \uad6c\uc131\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tInvalid control flag, flag"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uad6c\uc131 \uc624\ub958:\n\t\uc798\ubabb\ub41c \ucee8\ud2b8\ub864 \ud50c\ub798\uadf8, {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tCan not specify multiple entries for appName"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uad6c\uc131 \uc624\ub958:\n\t{0}\uc5d0 \ub300\ud574 \uc5ec\ub7ec \ud56d\ubaa9\uc744 \uc9c0\uc815\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\texpected [expect], read [end of file]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uad6c\uc131 \uc624\ub958:\n\t\uc608\uc0c1 [{0}], \uc77d\uc74c [\ud30c\uc77c\uc758 \ub05d]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tLine line: expected [expect], found [value]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uad6c\uc131 \uc624\ub958:\n\t\uc904 {0}: \uc608\uc0c1 [{1}], \ubc1c\uacac [{2}]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tLine line: expected [expect]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uad6c\uc131 \uc624\ub958:\n\t\uc904 {0}: \uc608\uc0c1 [{1}]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Configuration Error:\n\tLine line: system property [value] expanded to empty value"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uad6c\uc131 \uc624\ub958:\n\t\uc904 {0}: \uc2dc\uc2a4\ud15c \ub4f1\ub85d \uc815\ubcf4 [{1}]\uc774(\uac00) \ube48 \uac12\uc73c\ub85c \ud655\uc7a5\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "username: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uc0ac\uc6a9\uc790 \uc774\ub984: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uc554\ud638: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Please enter keystore information"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore \uc815\ubcf4\ub97c \uc785\ub825\ud558\uc2ed\uc2dc\uc624."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore alias: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore \ubcc4\uba85: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore \uc554\ud638: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Private key password (optional): "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uac1c\uc778 \ud0a4 \uc554\ud638(\uc120\ud0dd \uc0ac\ud56d): "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Kerberos username [[defUsername]]: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kerberos \uc0ac\uc6a9\uc790 \uc774\ub984 [{0}]: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Kerberos password for [username]: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0}\uc758 Kerberos \uc554\ud638: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ": error parsing "

    aput-object v3, v2, v4

    const-string/jumbo v3, ": \uad6c\ubb38 \ubd84\uc11d \uc624\ub958 "

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

    const-string/jumbo v3, ": \uc0ac\uc6a9 \uad8c\ud55c \ucd94\uac00 \uc911 \uc624\ub958 "

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

    const-string/jumbo v3, ": \uc785\ub825 \ud56d\ubaa9 \ucd94\uac00 \uc911 \uc624\ub958 "

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

    const-string/jumbo v3, "\uc77d\uae30 \uc804\uc6a9 PermissionCollection\uc5d0 \uc0ac\uc6a9 \uad8c\ud55c\uc744 \ucd94\uac00\ud558\ub824\uace0 \uc2dc\ub3c4\ud588\uc2b5\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected keystore type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore \uc720\ud615\uc774 \ud544\uc694\ud569\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "can not specify Principal with a "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uc640\uc77c\ub4dc\uce74\ub4dc \ud074\ub798\uc2a4\ub97c \uc640\uc77c\ub4dc\uce74\ub4dc \uc774\ub984\uc774 \uc5c6\uc774 "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "wildcard class without a wildcard name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uae30\ubcf8\uac12\uc744 \uc9c0\uc815\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected codeBase or SignedBy"

    aput-object v3, v2, v4

    const-string/jumbo v3, "codeBase \ub610\ub294 SignedBy\uac00 \ud544\uc694\ud569\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "only Principal-based grant entries permitted"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uae30\ubcf8\uac12 \uae30\ubc18 \ubd80\uc5ec \uc785\ub825 \ud56d\ubaa9\ub9cc \ud5c8\uc6a9\ub429\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected permission entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uc0ac\uc6a9 \uad8c\ud55c \uc785\ub825 \ud56d\ubaa9\uc774 \ud544\uc694\ud569\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "number "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uc22b\uc790 "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\ud544\uc694\ud569\ub2c8\ub2e4. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ", read end of file"

    aput-object v3, v2, v4

    const-string/jumbo v3, ", \ud30c\uc77c\uc758 \ub05d\uc744 \uc77d\uc5c8\uc2b5\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected \';\', read end of file"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\';\'\uc774 \ud544\uc694\ud569\ub2c8\ub2e4. \ud30c\uc77c\uc758 \ub05d\uc744 \uc77d\uc5c8\uc2b5\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "line "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\uc904 "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ": expected \'"

    aput-object v3, v2, v4

    const-string/jumbo v3, ":  \'\uc774 \ud544\uc694\ud569\ub2c8\ub2e4."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\', found \'"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\', \'\uc744 \ucc3e\uc558\uc2b5\ub2c8\ub2e4."

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

    const-string/jumbo v3, "SolarisNumericGroupPrincipal [\uae30\ubcf8 \uadf8\ub8f9]: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SolarisNumericGroupPrincipal [Supplementary Group]: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "SolarisNumericGroupPrincipal [\ubcf4\uc870 \uadf8\ub8f9]: "

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

    const-string/jumbo v3, "\uc81c\uacf5\ub41c \ub110 \uc774\ub984"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/util/AuthResources_ko;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/security/util/AuthResources_ko;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
