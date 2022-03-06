.class public Lsun/security/util/Resources_sv;
.super Ljava/util/ListResourceBundle;
.source "Resources_sv.java"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    const/16 v0, 0x153

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, " "

    aput-object v2, v1, v4

    const-string/jumbo v2, " "

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "  "

    aput-object v2, v1, v4

    const-string/jumbo v2, "  "

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "      "

    aput-object v2, v1, v4

    const-string/jumbo v2, "      "

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ", "

    aput-object v3, v2, v4

    const-string/jumbo v3, ", "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "*******************************************"

    aput-object v3, v2, v4

    const-string/jumbo v3, "*******************************************"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "*******************************************\n\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "*******************************************\n\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "keytool error: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "nyckelverktygsfel: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Illegal option:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ogiltigt alternativ:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Try keytool -help"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Try keytool -help"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Command option <flag> needs an argument."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kommandoalternativet {0} beh\u00f6ver ett argument."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning:  Different store and key passwords not supported for PKCS12 KeyStores. Ignoring user-specified <command> value."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Varning!  PKCS12 KeyStores har inte st\u00f6d f\u00f6r olika l\u00f6senord f\u00f6r lagret och nyckeln. Det anv\u00e4ndarspecificerade {0}-v\u00e4rdet ignoreras."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keystore must be NONE if -storetype is {0}"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-keystore m\u00e5ste vara NONE om -storetype \u00e4r {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too may retries, program terminated"

    aput-object v3, v2, v4

    const-string/jumbo v3, "F\u00f6r m\u00e5nga f\u00f6rs\u00f6k. Programmet avslutas."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-storepasswd and -keypasswd commands not supported if -storetype is {0}"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-storepasswd- och -keypasswd-kommandon st\u00f6ds inte om -storetype \u00e4r {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keypasswd commands not supported if -storetype is PKCS12"

    aput-object v3, v2, v4

    const-string/jumbo v3, " \u0096keypasswd-kommandon st\u00f6ds inte om -storetype \u00e4r inst\u00e4lld p\u00e5 PKCS12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keypass and -new can not be specified if -storetype is {0}"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-keypass och -new kan inte anges om -storetype \u00e4r {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if -protected is specified, then -storepass, -keypass, and -new must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "om -protected har angetts f\u00e5r inte -storepass, -keypass och -new anges"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if -srcprotected is specified, then -srcstorepass and -srckeypass must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "om -srcprotected anges f\u00e5r -srcstorepass och -srckeypass inte anges"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if keystore is not password protected, then -storepass, -keypass, and -new must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "om nyckelfilen inte \u00e4r l\u00f6senordsskyddad f\u00e5r -storepass, -keypass och -new inte anges"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if source keystore is not password protected, then -srcstorepass and -srckeypass must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "om k\u00e4llnyckelfilen inte \u00e4r l\u00f6senordsskyddad f\u00e5r -srcstorepass och -srckeypass inte anges"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Validity must be greater than zero"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Giltigheten m\u00e5ste vara st\u00f6rre \u00e4n noll"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provName not a provider"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} inte en leverant\u00f6r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Usage error: no command provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Anv\u00e4ndningsfel: inget kommando angivet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Usage error, <arg> is not a legal command"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Anv\u00e4ndningsfel: {0} \u00e4r inte ett giltigt kommando"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Source keystore file exists, but is empty: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nyckellagrets k\u00e4llfil finns, men \u00e4r tom: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Please specify -srckeystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange -srckeystore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Must not specify both -v and -rfc with \'list\' command"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det g\u00e5r inte att specificera b\u00e5de -v och -rfc med \'list\'-kommandot"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Key password must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nyckell\u00f6senordet m\u00e5ste inneh\u00e5lla minst 6 tecken"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New password must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det nya l\u00f6senordet m\u00e5ste inneh\u00e5lla minst 6 tecken"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore file exists, but is empty: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-filen finns, men \u00e4r tom: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore file does not exist: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-filen finns inte: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Must specify destination alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Du m\u00e5ste ange destinations-alias"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Must specify alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Du m\u00e5ste ange alias"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore password must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-l\u00f6senordet m\u00e5ste inneh\u00e5lla minst 6 tecken"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter keystore password:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange keystore-l\u00f6senord:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter source keystore password:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange l\u00f6senord f\u00f6r k\u00e4llnyckellagret:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter destination keystore password:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange destination f\u00f6r nyckellagrets l\u00f6senord:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore password is too short - must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-l\u00f6senordet \u00e4r f\u00f6r kort - det m\u00e5ste inneh\u00e5lla minst 6 tecken"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Unknown Entry Type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ok\u00e4nd posttyp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures. Alias not changed"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Alias har inte \u00e4ndrats p.g.a. f\u00f6r m\u00e5nga fel."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Entry for alias <alias> successfully imported."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Posten f\u00f6r alias {0} har importerats."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Entry for alias <alias> not imported."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Posten f\u00f6r alias {0} har inte importerats."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Problem importing entry for alias <alias>: <exception>.\nEntry for alias <alias> not imported."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ett problem uppstod vid importen av posten f\u00f6r alias {0}: {1}.\nPosten har inte importerats."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Import command completed:  <ok> entries successfully imported, <fail> entries failed or cancelled"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kommandoimporten slutf\u00f6rd: {0} poster har importerats, {1} poster var felaktiga eller utesl\u00f6ts"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: Overwriting existing alias <alias> in destination keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Varning! Det befintliga aliaset {0} i m\u00e5lnyckellagret skrivs \u00f6ver"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Existing entry alias <alias> exists, overwrite? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aliaset {0} finns redan. Vill du skriva \u00f6ver det? [no]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures - try later"

    aput-object v3, v2, v4

    const-string/jumbo v3, "F\u00f6r m\u00e5nga fel - f\u00f6rs\u00f6k igen senare"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certification request stored in file <filename>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikat-f\u00f6rfr\u00e5gan har lagrats i filen <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Submit this to your CA"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Skicka detta till din CA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if alias not specified, destalias, srckeypass, and destkeypass must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "om n\u00e5got alias inte anges f\u00e5r destalias, srckeypass och destkeypass inte anges"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate stored in file <filename>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatet har lagrats i filen <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply was installed in keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatsvaret har installerats i keystore-filen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply was not installed in keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatsvaret har inte installerats i keystore-filen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate was added to keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatet har lagts till i keystore-filen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate was not added to keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatet har inte lagts till i keystore-filen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "[Storing ksfname]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "[Lagrar {0}]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias has no public key (certificate)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} saknar offentlig nyckel (certifikat)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot derive signature algorithm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det g\u00e5r inte att h\u00e4mta n\u00e5gon signatur-algoritm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> does not exist"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aliaset <{0}> finns inte"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> has no certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aliaset <{0}> saknar certifikat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Key pair not generated, alias <alias> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nyckelparet genererades inte. Aliaset <{0}> finns redan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot derive signature algorithm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det g\u00e5r inte att h\u00e4mta n\u00e5gon signatur-algoritm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Generating keysize bit keyAlgName key pair and self-signed certificate (sigAlgName) with a validity of validality days\n\tfor: x500Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Genererar {0}-bitars {1}-nyckelpar och sj\u00e4lvsignerat certifikat ({2}) med en giltighet p\u00e5 {3} dagar\n\tf\u00f6r: {4}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter key password for <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange nyckell\u00f6senord f\u00f6r <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t(RETURN if same as keystore password):  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t(RETURN om det \u00e4r identiskt med keystore-l\u00f6senordet):  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Key password is too short - must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nyckell\u00f6senordet \u00e4r f\u00f6r kort - det m\u00e5ste inneh\u00e5lla minst 6 tecken"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures - key not added to keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "F\u00f6r m\u00e5nga fel - nyckeln lades inte till i keystore-filen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Destination alias <dest> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Destinationsaliaset <{0}> finns redan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Password is too short - must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\u00f6senordet \u00e4r f\u00f6r kort - det m\u00e5ste inneh\u00e5lla minst 6 tecken"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures. Key entry not cloned"

    aput-object v3, v2, v4

    const-string/jumbo v3, "F\u00f6r m\u00e5nga fel. Nyckelposten har inte klonats"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "key password for <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nyckell\u00f6senord f\u00f6r <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore entry for <id.getName()> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-post f\u00f6r <{0}> finns redan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Creating keystore entry for <id.getName()> ..."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Skapar keystore-post f\u00f6r <{0}> ..."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No entries from identity database added"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Inga poster fr\u00e5n identitetsdatabasen har lagts till"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias name: alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aliasnamn: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Creation date: keyStore.getCreationDate(alias)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Skapat den: {0,date}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias, keyStore.getCreationDate(alias), "

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0}, {1,date}, "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias, "

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0}, "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Entry type: <type>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Posttyp: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate chain length: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\u00e4ngd p\u00e5 certifikatskedja: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate[(i + 1)]:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikat[{0,number,integer}]:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate fingerprint (MD5): "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatsfingeravtryck (MD5): "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Entry type: trustedCertEntry\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Posttyp: trustedCertEntry\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "trustedCertEntry,"

    aput-object v3, v2, v4

    const-string/jumbo v3, "trustedCertEntry,"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore type: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-typ: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore provider: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-leverant\u00f6r: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Your keystore contains keyStore.size() entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Din keystore inneh\u00e5ller en {0,number,integer} post"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Your keystore contains keyStore.size() entries"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Din keystore inneh\u00e5ller {0,number,integer} poster"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to parse input"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det g\u00e5r inte att analysera indata"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Empty input"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Inga indata"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Not X.509 certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Inte ett X.509-certifikat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot derive signature algorithm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det g\u00e5r inte att h\u00e4mta n\u00e5gon signatur-algoritm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias has no public key"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} saknar offentlig nyckel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias has no X.509 certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} saknar X.509-certifikat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New certificate (self-signed):"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nytt certifikat (sj\u00e4lvsignerat):"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Reply has no certificates"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Svaret saknar certifikat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate not imported, alias <alias> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatet importerades inte. Aliaset <{0}> finns redan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Input not an X.509 certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Indata \u00e4r inte ett X.509-certifikat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate already exists in keystore under alias <trustalias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatet finns redan i keystore-filen under aliaset <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Do you still want to add it? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vill du fortfarande l\u00e4gga till det? [nej]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate already exists in system-wide CA keystore under alias <trustalias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatet finns redan i systemkeystore-filen under aliaset <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Do you still want to add it to your own keystore? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vill du fortfarande l\u00e4gga till det i din egen keystore-fil? [nej]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Trust this certificate? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Betror du det h\u00e4r certifikatet? [nej]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "YES"

    aput-object v3, v2, v4

    const-string/jumbo v3, "JA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New prompt: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nytt {0}: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Passwords must differ"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\u00f6senorden m\u00e5ste vara olika"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Re-enter new prompt: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange nytt {0} igen: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Re-enter new password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange det nya l\u00f6senordet igen: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "They don\'t match. Try again"

    aput-object v3, v2, v4

    const-string/jumbo v3, "De matchar inte. F\u00f6rs\u00f6k igen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter prompt alias name:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange {0}-aliasnamn:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter new alias name\t(RETURN to cancel import for this entry):  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange ett nytt aliasnamn\t(skriv RETURN f\u00f6r att avbryta importen av denna post):  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter alias name:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange aliasnamn:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t(RETURN if same as for <otherAlias>)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t(RETURN om det \u00e4r det samma som f\u00f6r <{0}>)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "*PATTERN* printX509Cert"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00c4gare: {0}\nUtf\u00e4rdare: {1}\nSerienummer: {2}\nGiltigt fr\u00e5n: {3} till: {4}\nCertifikatfingeravtryck:\n\t MD5: {5}\n\t SHA1: {6}\n\t Signaturalgoritm: {7}\n\t Version: {8}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is your first and last name?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vad heter du i f\u00f6r- och efternamn?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your organizational unit?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vad heter din avdelning inom organisationen?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your organization?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vad heter din organisation?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your City or Locality?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vad heter din ort eller plats?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your State or Province?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vad heter ditt land eller din provins?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the two-letter country code for this unit?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vilken \u00e4r den tv\u00e5st\u00e4lliga landskoden?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Is <name> correct?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00c4r {0} korrekt?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "no"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nej"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "yes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ja"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "y"

    aput-object v3, v2, v4

    const-string/jumbo v3, "j"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  [defaultValue]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "  [{0}]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> has no key"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aliaset <{0}> saknar nyckel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> references an entry type that is not a private key entry.  The -keyclone command only supports cloning of private key entries"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aliaset <{0}> h\u00e4nvisar till en posttyp som inte \u00e4r n\u00e5gon privat nyckelpost. Kommandot -keyclone har endast st\u00f6d f\u00f6r kloning av privata nyckelposter"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "*****************  WARNING WARNING WARNING  *****************"

    aput-object v3, v2, v4

    const-string/jumbo v3, "*****************  VARNING VARNING VARNING  *****************"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* The integrity of the information stored in your keystore  *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* Integriteten betr\u00e4ffande den information som lagras i keystore-filen  *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* The integrity of the information stored in the srckeystore*"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* Integriteten f\u00f6r informationen som lagras i srckeystore*"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* has NOT been verified!  In order to verify its integrity, *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* har INTE verifierats!  Om du vill verifiera dess integritet, *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* you must provide your keystore password.                  *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* m\u00e5ste du tillhandah\u00e5lla ditt keystore-l\u00f6senord.                  *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* you must provide the srckeystore password.                *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* du m\u00e5ste ange l\u00f6senordet f\u00f6r srckeystore.                *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply does not contain public key for <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatsvaret inneh\u00e5ller inte n\u00e5gon offentlig nyckel f\u00f6r <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Incomplete certificate chain in reply"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ofullst\u00e4ndig certifikatskedja i svaret"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate chain in reply does not verify: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatskedjan i svaret g\u00e5r inte att verifiera: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Top-level certificate in reply:\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Toppniv\u00e5certifikatet i svaret:\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "... is not trusted. "

    aput-object v3, v2, v4

    const-string/jumbo v3, "... \u00e4r inte betrott. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Install reply anyway? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vill du installera svaret \u00e4nd\u00e5? [nej]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "NO"

    aput-object v3, v2, v4

    const-string/jumbo v3, "NEJ"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Public keys in reply and keystore don\'t match"

    aput-object v3, v2, v4

    const-string/jumbo v3, "De offentliga nycklarna i svaret och keystore-filen matchar inte varandra"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply and certificate in keystore are identical"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certifikatssvaret och certifikatet i keystore-filen \u00e4r identiska"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to establish chain from reply"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det gick inte att uppr\u00e4tta n\u00e5gon kedja ur svaret"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Wrong answer, try again"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Fel svar. F\u00f6rs\u00f6k p\u00e5 nytt."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Secret key not generated, alias <alias> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Den hemliga nyckeln har inte genererats eftersom aliaset <{0}> redan finns"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Please provide -keysize for secret key generation"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ange -keysize f\u00f6r skapande av hemlig nyckel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "keytool usage:\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nyckelverktyg:\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Extensions: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Filtill\u00e4gg: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-certreq     [-v] [-protected]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-certreq     [-v] [-protected]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-alias <alias>] [-sigalg <sigalg>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-alias <alias>] [-sigalg <signaturalgoritm>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-file <csr_file>] [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-file <csr_fil>] [-keypass <nyckell\u00f6senord>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-keystore <keystore>] [-storepass <storepass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-keystore <keystore>] [-storepass <lagringsl\u00f6senord>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-storetype <storetype>] [-providername <name>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-storetype <storetype>] [-providername <name>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-providerclass <provider_class_name> [-providerarg <arg>]] ..."

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-providerclass <provider_class_name> [-providerarg <arg>]] ..."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-providerpath <pathlist>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-providerpath <pathlist>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-delete      [-v] [-protected] -alias <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-delete      [-v] [-protected] -alias <alias>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-exportcert  [-v] [-rfc] [-protected]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-exportcert  [-v] [-rfc] [-protected]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-alias <alias>] [-file <cert_file>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-alias <alias>] [-file <certifikatsfil>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-genkeypair  [-v] [-protected]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-genkeypair  [-v] [-protected]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-alias <alias>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-alias <alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-keyalg <keyalg>] [-keysize <keysize>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-keyalg <nyckelalgoritm>] [-keysize <nyckelstorlek>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-sigalg <sigalg>] [-dname <dname>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-sigalg <signaturalgoritm>] [-dname <dnamn>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-validity <valDays>] [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-validity <dagar>] [-keypass <nyckell\u00f6senord>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-genseckey   [-v] [-protected]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-genseckey   [-v] [-protected]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-help"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-help"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-importcert  [-v] [-noprompt] [-trustcacerts] [-protected]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-importcert  [-v] [-noprompt] [-trustcacerts] [-protected]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-alias <alias>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-alias <alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-alias <alias>] [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-alias <alias>] [-keypass <keypass>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-file <cert_file>] [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-file <certifikatsfil>] [-keypass <nyckell\u00f6senord>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-importkeystore [-v] "

    aput-object v3, v2, v4

    const-string/jumbo v3, "-importkeystore [-v] "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-srckeystore <srckeystore>] [-destkeystore <destkeystore>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-srckeystore <srckeystore>] [-destkeystore <destkeystore>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-srcstoretype <srcstoretype>] [-deststoretype <deststoretype>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-srcstoretype <srcstoretype>] [-deststoretype <deststoretype>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-srcprotected] [-destprotected]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-srcprotected] [-destprotected]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-srcstorepass <srcstorepass>] [-deststorepass <deststorepass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-srcstorepass <srcstorepass>] [-deststorepass <deststorepass>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-srcprovidername <srcprovidername>]\n\t     [-destprovidername <destprovidername>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-srcprovidername <srcprovidername>]\n\t     [-destprovidername <destprovidername>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-srcalias <srcalias> [-destalias <destalias>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-srcalias <srcalias> [-destalias <destalias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t       [-srckeypass <srckeypass>] [-destkeypass <destkeypass>]]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t       [-srckeypass <srckeypass>] [-destkeypass <destkeypass>]]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-noprompt]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-noprompt]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-changealias [-v] [-protected] -alias <alias> -destalias <destalias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-changealias [-v] [-protected] -alias <alias> -destalias <destalias>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-keypass <keypass>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keypasswd   [-v] [-alias <alias>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-keypasswd   [-v] [-alias <alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-keypass <old_keypass>] [-new <new_keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-keypass <gammalt_nyckell\u00f6senord>] [-new <nytt_nyckell\u00f6senord>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-list        [-v | -rfc] [-protected]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-list        [-v | -rfc] [-protected]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-alias <alias>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-alias <alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-printcert   [-v] [-file <cert_file>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-printcert   [-v] [-file <certifikatsfil>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-alias <alias>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-alias <alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-storepasswd [-v] [-new <new_storepass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-storepasswd [-v] [-new <nytt_lagringsl\u00f6senord>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: A public key for alias \'signers[i]\' does not exist.  Make sure a KeyStore is properly configured."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Varning! Det finns ingen offentlig nyckel f\u00f6r aliaset {0}. Kontrollera att det aktuella nyckellagret \u00e4r korrekt konfigurerat."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: Class not found: class"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Varning! Klassen hittades inte: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: Invalid argument(s) for constructor: arg"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Varning! Ogiltigt/Ogiltiga argument f\u00f6r konstrukt\u00f6r: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Illegal Principal Type: type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ogiltig huvudtyp: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Illegal option: option"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ogiltigt alternativ: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Usage: policytool [options]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "G\u00f6r s\u00e5 h\u00e4r: policytool [alternativ]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  [-file <file>]    policy file location"

    aput-object v3, v2, v4

    const-string/jumbo v3, "  [-file <fil>]    policyfilens plats"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nytt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Open"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00d6ppna"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Spara"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save As"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Spara som"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "View Warning Log"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Visa varningslogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Exit"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Avsluta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Add Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\u00e4gg till policypost"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Edit Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Redigera policypost"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ta bort policypost"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Edit"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Redigera"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Retain"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Beh\u00e5ll"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: File name may include escaped backslash characters. It is not necessary to escape backslash characters (the tool escapes characters as necessary when writing the policy contents to the persistent store).\n\nClick on Retain to retain the entered name, or click on Edit to edit the name."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Warning: File name may include escaped backslash characters. It is not necessary to escape backslash characters (the tool escapes characters as necessary when writing the policy contents to the persistent store).\n\nClick on Retain to retain the entered name, or click on Edit to edit the name."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Add Public Key Alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\u00e4gg till offentligt nyckelalias"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Public Key Alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ta bort offentligt nyckelalias"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "File"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Arkiv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nyckellager"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy File:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Policyfil:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Could not open policy file: policyFile: e.toString()"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det g\u00e5r inte att \u00f6ppna policyfilen: {0}: {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy Tool"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Policyverktyg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Errors have occurred while opening the policy configuration.  View the Warning Log for more information."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det uppstod ett fel n\u00e4r policykonfigurationen skulle \u00f6ppnas.  Visa varningsloggen med ytterligare information."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Error"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Fel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "OK"

    aput-object v3, v2, v4

    const-string/jumbo v3, "OK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Status"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Status"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Varning"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permission:                                                       "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Beh\u00f6righet:                                                       "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Type:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principaltyp:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Name:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principalnamn:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Target Name:                                                    "

    aput-object v3, v2, v4

    const-string/jumbo v3, "M\u00e5lets namn:                                                    "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Actions:                                                             "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Funktioner:                                                             "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "OK to overwrite existing file filename?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ska den befintliga filen {0} skrivas \u00f6ver?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cancel"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Avbryt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "CodeBase:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "CodeBase:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SignedBy:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "SignedBy:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Add Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\u00e4gg till principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Edit Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Redigera principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ta bort principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principals:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principaler:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Add Permission"

    aput-object v3, v2, v4

    const-string/jumbo v3, "  L\u00e4gg till beh\u00f6righet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Edit Permission"

    aput-object v3, v2, v4

    const-string/jumbo v3, "  Redigera beh\u00f6righet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Permission"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ta bort beh\u00f6righet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Done"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Klar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore URL:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Webbadress f\u00f6r nyckellager:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Type:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nyckellagertyp:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Provider:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nyckellagerleverant\u00f6r:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Password URL:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Webbadress f\u00f6r l\u00f6senord till nyckellager:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principals"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principaler"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Edit Principal:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "  Redigera principal:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Add New Principal:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "  L\u00e4gg till ny principal:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permissions"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Beh\u00f6righet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Edit Permission:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "  Redigera beh\u00f6righet:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Add New Permission:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "  L\u00e4gg till ny beh\u00f6righet:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Signed By:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Signerad av:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot Specify Principal with a Wildcard Class without a Wildcard Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det g\u00e5r inte att specificera principal med wildcard-klass utan wildcard-namn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot Specify Principal without a Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det g\u00e5r inte att specificera principal utan namn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permission and Target Name must have a value"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Beh\u00f6righet och m\u00e5lnamn m\u00e5ste ha ett v\u00e4rde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove this Policy Entry?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vill du ta bort den h\u00e4r policyposten?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Overwrite File"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Skriva \u00f6ver fil"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy successfully written to filename"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Policy har skrivits till {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "null filename"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nullfilnamn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save changes?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vill du spara \u00e4ndringarna?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Yes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ja"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nej"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Policyfel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save Changes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vill du spara \u00e4ndringarna?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No Policy Entry selected"

    aput-object v3, v2, v4

    const-string/jumbo v3, "N\u00e5gon policypost har inte markerats"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Unable to open KeyStore: ex.toString()"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det g\u00e5r inte att \u00f6ppna nyckellagret: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No principal selected"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ingen principal har markerats"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No permission selected"

    aput-object v3, v2, v4

    const-string/jumbo v3, "N\u00e5gon beh\u00f6righet har inte markerats"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "namn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "configuration type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "konfigurationstyp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "environment variable name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "variabelnamn f\u00f6r milj\u00f6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "library name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "biblioteksnamn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "package name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "paketnamn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "policy type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "policytyp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "property name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "egenskapsnamn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provider name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "leverant\u00f6rsnamn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal List"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Huvudlista"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permission List"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Beh\u00f6righetslista"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Code Base"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kodbas"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore U R L:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Webbadress f\u00f6r nyckellager:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Password U R L:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Webbadress f\u00f6r l\u00f6senord till nyckellager:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null input(s)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ogiltiga null-indata"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "actions can only be \'read\'"

    aput-object v3, v2, v4

    const-string/jumbo v3, "funktioner kan endast \'l\u00e4sas\'"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "permission name [name] syntax invalid: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "syntaxen f\u00f6r beh\u00f6righetsnamnet [{0}] \u00e4r ogiltig: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Credential Class not followed by a Principal Class and Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kreditivklassen f\u00f6ljs inte av principalklass eller principalnamn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Class not followed by a Principal Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principalklassen f\u00f6ljs inte av n\u00e5got principalnamn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Name must be surrounded by quotes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principalnamnet m\u00e5ste anges inom citattecken"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Name missing end quote"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principalnamnet saknar avslutande citattecken"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "PrivateCredentialPermission Principal Class can not be a wildcard (*) value if Principal Name is not a wildcard (*) value"

    aput-object v3, v2, v4

    const-string/jumbo v3, "V\u00e4rdet f\u00f6r principalklassen PrivateCredentialPermission kan inte ha n\u00e5got jokertecken (*) om principalnamnet inte anges med jokertecken (*)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "CredOwner:\n\tPrincipal Class = class\n\tPrincipal Name = name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "CredOwner:\n\tPrincipalklass = {0}\n\tPrincipalnamn = {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provided null name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "gav null-namn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provided null keyword map"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nullnyckelordsmappning tillhandah\u00f6lls"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provided null OID map"

    aput-object v3, v2, v4

    const-string/jumbo v3, "null-OID-mappning tillhandah\u00f6lls"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null AccessControlContext provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ogiltigt null-AccessControlContext"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null action provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ogiltig null-funktion"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null Class provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ogiltig null-klass"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Subject:\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00c4rende:\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPrincipal: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tPrincipal: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPublic Credential: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tOffentligt kreditiv: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPrivate Credentials inaccessible\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tPrivata kreditiv \u00e4r otillg\u00e4ngliga\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPrivate Credential: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tPrivata kreditiv: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPrivate Credential inaccessible\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tPrivata kreditiv \u00e4r otillg\u00e4ngliga\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Subject is read-only"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00c4mnet \u00e4r skrivskyddat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "attempting to add an object which is not an instance of java.security.Principal to a Subject\'s Principal Set"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f\u00f6rs\u00f6k att l\u00e4gga till ett objekt som inte \u00e4r en f\u00f6rekomst av java.security.Principal till en principalupps\u00e4ttning"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "attempting to add an object which is not an instance of class"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f\u00f6rs\u00f6ker l\u00e4gga till ett objekt som inte \u00e4r en f\u00f6rekomst av {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "LoginModuleControlFlag: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "LoginModuleControlFlag: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Invalid null input: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ogiltiga null-indata: namn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No LoginModules configured for name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Inga inloggningsmoduler har konfigurerats f\u00f6r {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null Subject provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ogiltigt null-Subject"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null CallbackHandler provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ogiltig null-CallbackHandler"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "null subject - logout called before login"

    aput-object v3, v2, v4

    const-string/jumbo v3, "null-subject - utloggning anropades f\u00f6re inloggning"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate LoginModule, module, because it does not provide a no-argument constructor"

    aput-object v3, v2, v4

    const-string/jumbo v3, "det g\u00e5r inta att representera LoginModule, {0}, eftersom den inte tillhandah\u00e5ller n\u00e5gon argumentfri konstruktion"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate LoginModule"

    aput-object v3, v2, v4

    const-string/jumbo v3, "det g\u00e5r inte att representera LoginModule"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate LoginModule: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "inloggningsmodulen kan inte skapas: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to find LoginModule class: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "det g\u00e5r inte att hitta LoginModule-klassen: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to access LoginModule: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "det g\u00e5r inte att komma \u00e5t LoginModule: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Login Failure: all modules ignored"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Inloggningsfel: alla moduler ignoreras"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "java.security.policy: error parsing policy:\n\tmessage"

    aput-object v3, v2, v4

    const-string/jumbo v3, "java.security.policy: fel vid analys av {0}:\n\t{1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "java.security.policy: error adding Permission, perm:\n\tmessage"

    aput-object v3, v2, v4

    const-string/jumbo v3, "java.security.policy: fel vid till\u00e4gg av beh\u00f6righet, {0}:\n\t{1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "java.security.policy: error adding Entry:\n\tmessage"

    aput-object v3, v2, v4

    const-string/jumbo v3, "java.security.policy: fel vid till\u00e4gg av post:\n\t{0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias name not provided (pe.name)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "aliasnamn ej angivet ({0})"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to perform substitution on alias, suffix"

    aput-object v3, v2, v4

    const-string/jumbo v3, "kan ej ers\u00e4tta aliasnamn, {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "substitution value, prefix, unsupported"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ers\u00e4ttningsv\u00e4rde, {0}, st\u00f6ds ej"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "("

    aput-object v3, v2, v4

    const-string/jumbo v3, "("

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, ")"

    aput-object v3, v2, v4

    const-string/jumbo v3, ")"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "type can\'t be null"

    aput-object v3, v2, v4

    const-string/jumbo v3, "typen kan inte vara null"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "keystorePasswordURL can not be specified without also specifying keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "det g\u00e5r inte att ange keystorePasswordURL utan att ange keystore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected keystore type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f\u00f6rv\u00e4ntad keystore-typ"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected keystore provider"

    aput-object v3, v2, v4

    const-string/jumbo v3, "keystore-leverant\u00f6r f\u00f6rv\u00e4ntades"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "multiple Codebase expressions"

    aput-object v3, v2, v4

    const-string/jumbo v3, "flera Codebase-uttryck"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "multiple SignedBy expressions"

    aput-object v3, v2, v4

    const-string/jumbo v3, "flera SignedBy-uttryck"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SignedBy has empty alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "SignedBy har ett tomt alias"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "can not specify Principal with a wildcard class without a wildcard name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Det g\u00e5r inte att specificera principal genom att ange jokertecken f\u00f6r klass utan att samtidigt ange jokertecken f\u00f6r namn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected codeBase or SignedBy or Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f\u00f6rv\u00e4ntad codeBase eller SignedBy eller Principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected permission entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f\u00f6rv\u00e4ntade beh\u00f6righetspost"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "number "

    aput-object v3, v2, v4

    const-string/jumbo v3, "antal "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected [expect], read [end of file]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f\u00f6rv\u00e4ntade [{0}], l\u00e4ste [end of file]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected [;], read [end of file]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f\u00f6rv\u00e4ntade [;], l\u00e4ste [end of file]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "line number: msg"

    aput-object v3, v2, v4

    const-string/jumbo v3, "rad {0}: {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "line number: expected [expect], found [actual]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "rad {0}: f\u00f6rv\u00e4ntade [{1}], hittade [{2}]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "null principalClass or principalName"

    aput-object v3, v2, v4

    const-string/jumbo v3, "null-principalClass eller -principalName"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "PKCS11 Token [providerName] Password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "PKCS11-pollett [{0}] L\u00f6senord: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate Subject-based policy"

    aput-object v3, v2, v4

    const-string/jumbo v3, "den Subject-baserade policyn kan inte skapas"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/util/Resources_sv;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 648
    sget-object v0, Lsun/security/util/Resources_sv;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
