.class public Lsun/security/util/Resources_it;
.super Ljava/util/ListResourceBundle;
.source "Resources_it.java"


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

    const-string/jumbo v3, "Errore keytool: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Illegal option:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Opzione non valida:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Try keytool -help"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Provare keytool -help"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Command option <flag> needs an argument."

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00c8 necessario specificare un argomento per l\'opzione di comando {0}."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning:  Different store and key passwords not supported for PKCS12 KeyStores. Ignoring user-specified <command> value."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Avviso: non sono supportate password diverse di chiave e di archivio per i KeyStore PKCS12. Il valore {0} specificato dall\'utente verr\u00e0 ignorato."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keystore must be NONE if -storetype is {0}"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Se -storetype \u00e8 impostato su {0}, -keystore deve essere impostato su NONE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too may retries, program terminated"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il numero dei tentativi consentiti \u00e8 stato superato. Il programma verr\u00e0 chiuso."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-storepasswd and -keypasswd commands not supported if -storetype is {0}"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Se -storetype \u00e8 impostato su {0}, i comandi -storepasswd e -keypasswd non sono supportati"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keypasswd commands not supported if -storetype is PKCS12"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Se -storetype \u00e8 impostato su PKCS12 i comandi -keypasswd non vengono supportati"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keypass and -new can not be specified if -storetype is {0}"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Se -storetype \u00e8 impostato su {0}, non \u00e8 possibile specificare un valore per -keypass e -new"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if -protected is specified, then -storepass, -keypass, and -new must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Se \u00e8 specificata l\'opzione -protected, le opzioni -storepass, -keypass e -new non possono essere specificate"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if -srcprotected is specified, then -srcstorepass and -srckeypass must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Se viene specificato -srcprotected, -srcstorepass e -srckeypass non dovranno essere specificati"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if keystore is not password protected, then -storepass, -keypass, and -new must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Se il file keystore non \u00e8 protetto da password, non deve essere specificato alcun valore per -storepass, -keypass e -new"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if source keystore is not password protected, then -srcstorepass and -srckeypass must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Se il file keystore non \u00e8 protetto da password, non deve essere specificato alcun valore per -srcstorepass e -srckeypass"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Validity must be greater than zero"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La validit\u00e0 deve essere maggiore di zero"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provName not a provider"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} non \u00e8 un provider"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Usage error: no command provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Errore di utilizzo: nessun comando specificato"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Usage error, <arg> is not a legal command"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Errore di utilizzo. {0} non \u00e8 un comando valido."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Source keystore file exists, but is empty: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il file keystore di origine esiste, ma \u00e8 vuoto: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Please specify -srckeystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Specificare -srckeystore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Must not specify both -v and -rfc with \'list\' command"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile specificare sia -v sia -rfc con il comando \'list\'"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Key password must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La password della chiave deve contenere almeno 6 caratteri"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New password must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La nuova password deve contenere almeno 6 caratteri"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore file exists, but is empty: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il file keystore esiste ma \u00e8 vuoto: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore file does not exist: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il file keystore non esiste: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Must specify destination alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00c8 necessario specificare l\'alias di destinazione"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Must specify alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00c8 necessario specificare l\'alias"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore password must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La password del keystore deve contenere almeno 6 caratteri"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter keystore password:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Immettere la password del keystore:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter source keystore password:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Immettere la password del keystore di origine:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter destination keystore password:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Immettere la password del keystore di destinazione:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore password is too short - must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La password del keystore \u00e8 troppo corta - deve contenere almeno 6 caratteri"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Unknown Entry Type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Tipo di voce sconosciuto"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures. Alias not changed"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Si sono verificati troppi errori. L\'alias non \u00e8 stato modificato."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Entry for alias <alias> successfully imported."

    aput-object v3, v2, v4

    const-string/jumbo v3, "La voce dell\'alias {0} \u00e8 stata importata."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Entry for alias <alias> not imported."

    aput-object v3, v2, v4

    const-string/jumbo v3, "La voce dell\'alias {0} non \u00e8 stata importata."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Problem importing entry for alias <alias>: <exception>.\nEntry for alias <alias> not imported."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Si \u00e8 verificato un problema durante l\'importazione della voce dell\'alias {0}: {1}.\nLa voce dell\'alias {0} non \u00e8 stata importata."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Import command completed:  <ok> entries successfully imported, <fail> entries failed or cancelled"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Importazione completata:  {0} voci importate, {1} voci non importate o annullate"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: Overwriting existing alias <alias> in destination keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Avviso: sovrascrittura in corso dell\'alias {0} nel file keystore di destinazione"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Existing entry alias <alias> exists, overwrite? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "La voce dell\'alias {0} esiste gi\u00e0. Sovrascrivere? [no]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures - try later"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Troppi errori - riprovare"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certification request stored in file <filename>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La richiesta di certificazione \u00e8 memorizzata nel file <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Submit this to your CA"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Inviarla alla propria CA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if alias not specified, destalias, srckeypass, and destkeypass must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Se l\'alias non \u00e8 specificato, destalias, srckeypass e destkeypass non dovranno essere specificati"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate stored in file <filename>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il certificato \u00e8 memorizzato nel file <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply was installed in keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La risposta del certificato \u00e8 stata installata nel keystore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply was not installed in keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La risposta del certificato non \u00e8 stata installata nel keystore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate was added to keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il certificato \u00e8 stato aggiunto al keystore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate was not added to keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il certificato non \u00e8 stato aggiunto al keystore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "[Storing ksfname]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "[Memorizzazione di {0}] in corso"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias has no public key (certificate)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} non dispone di chiave pubblica (certificato)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot derive signature algorithm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile derivare l\'algoritmo di firma"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> does not exist"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\'\'alias <{0}> non esiste"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> has no certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\'\'alias <{0}> non dispone di certificato"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Key pair not generated, alias <alias> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Non \u00e8 stata generata la coppia di chiavi, l\'\'alias <{0}> \u00e8 gi\u00e0 esistente"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot derive signature algorithm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile derivare l\'algoritmo di firma"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Generating keysize bit keyAlgName key pair and self-signed certificate (sigAlgName) with a validity of validality days\n\tfor: x500Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Generazione in corso di una coppia di chiavi {1} da {0} bit e di un certificato autofirmato ({2}) con una validit\u00e0 di {3} giorni\n\tper: {4}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter key password for <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Immettere la password della chiave per <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t(RETURN if same as keystore password):  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t(INVIO se corrisponde alla password del keystore):  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Key password is too short - must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La password della chiave \u00e8 troppo corta - deve contenere almeno 6 caratteri"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures - key not added to keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Troppi errori - la chiave non \u00e8 stata aggiunta al keystore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Destination alias <dest> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\'\'alias di destinazione <{0}> \u00e8 gi\u00e0 esistente"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Password is too short - must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La password \u00e8 troppo corta - deve contenere almeno 6 caratteri"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures. Key entry not cloned"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Troppi errori. Il valore della chiave non \u00e8 stato clonato"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "key password for <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "password della chiave per <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore entry for <id.getName()> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\'\'entry nel keystore per <{0}> \u00e8 gi\u00e0 esistente"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Creating keystore entry for <id.getName()> ..."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Creazione dell\'\'entry nel keystore per <{0}> in corso..."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No entries from identity database added"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nessuna entry aggiunta dal database di identit\u00e0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias name: alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nome alias: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Creation date: keyStore.getCreationDate(alias)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Data di creazione: {0,date}"

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

    const-string/jumbo v3, "Tipo di voce: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate chain length: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Lunghezza catena certificati: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate[(i + 1)]:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certificato[{0,number,integer}]:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate fingerprint (MD5): "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impronta digitale certificato (MD5): "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Entry type: trustedCertEntry\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Tipo entry: trustedCertEntry\n"

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

    const-string/jumbo v3, "Tipo keystore: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore provider: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Provider keystore: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Your keystore contains keyStore.size() entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il keystore contiene {0,number,integer} entry"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Your keystore contains keyStore.size() entries"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il keystore contiene {0,number,integer} entry"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to parse input"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile analizzare l\'input"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Empty input"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Input vuoto"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Not X.509 certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il certificato non \u00e8 X.509"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot derive signature algorithm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile derivare l\'algoritmo di firma"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias has no public key"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} non dispone di chiave pubblica"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias has no X.509 certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} non dispone di certificato X.509"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New certificate (self-signed):"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nuovo certificato (autofirmato):"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Reply has no certificates"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La risposta non dispone di certificati"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate not imported, alias <alias> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile importare il certificato, l\'\'alias <{0}> \u00e8 gi\u00e0 esistente"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Input not an X.509 certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\'input non \u00e8 un certificato X.509"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate already exists in keystore under alias <trustalias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il certificato esiste gi\u00e0 nel keystore con alias <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Do you still want to add it? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aggiungerlo ugualmente? [no]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate already exists in system-wide CA keystore under alias <trustalias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il certificato esiste gi\u00e0 nel keystore CA con alias <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Do you still want to add it to your own keystore? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aggiungerlo al proprio keystore? [no]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Trust this certificate? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Considerare attendibile questo certificato? [no]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "YES"

    aput-object v3, v2, v4

    const-string/jumbo v3, "S\u00ec"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New prompt: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nuova {0}: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Passwords must differ"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Le password non devono coincidere"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Re-enter new prompt: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Reimmettere nuova {0}: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Re-enter new password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Immettere nuovamente la nuova password: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "They don\'t match. Try again"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Non corrispondono. Riprovare."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter prompt alias name:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Immettere nome alias {0}:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter new alias name\t(RETURN to cancel import for this entry):  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Immettere un nuovo nome alias\t(premere INVIO per annullare l\'importazione della voce):  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter alias name:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Immettere nome alias:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t(RETURN if same as for <otherAlias>)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t(INVIO se corrisponde al nome di <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "*PATTERN* printX509Cert"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Proprietario: {0}\nAutorit\u00e0 emittente: {1}\nNumero di serie: {2}\nValido da: {3} a: {4}\nImpronte digitali certificato:\n\t MD5:  {5}\n\t SHA1: {6}\n\t Nome algoritmo firma: {7}\n\t Versione: {8}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is your first and last name?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Specificare nome e cognome"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your organizational unit?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Specificare il nome dell\'unit\u00e0 aziendale"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your organization?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Specificare il nome dell\'azienda"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your City or Locality?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Specificare la localit\u00e0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your State or Province?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Specificare la provincia"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the two-letter country code for this unit?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Specificare il codice a due lettere del paese in cui si trova l\'unit\u00e0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Is <name> correct?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il dato {0} \u00e8 corretto?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "no"

    aput-object v3, v2, v4

    const-string/jumbo v3, "no"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "yes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "s\u00ec"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "y"

    aput-object v3, v2, v4

    const-string/jumbo v3, "s"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  [defaultValue]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, " [{0}]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> has no key"

    aput-object v3, v2, v4

    const-string/jumbo v3, "All\'alias <{0}> non \u00e8 associata alcuna chiave"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> references an entry type that is not a private key entry.  The -keyclone command only supports cloning of private key entries"

    aput-object v3, v2, v4

    const-string/jumbo v3, "L\'alias <{0}> fa riferimento a un tipo di voce che non \u00e8 una voce di chiave privata. Il comando -keyclone supporta solo la duplicazione delle voci di chiave private."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "*****************  WARNING WARNING WARNING  *****************"

    aput-object v3, v2, v4

    const-string/jumbo v3, "*****************  AVVISO  AVVISO  AVVISO  *****************"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* The integrity of the information stored in your keystore  *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* L\'integrit\u00e0 delle informazioni memorizzate nel keystore    *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* The integrity of the information stored in the srckeystore*"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* L\'integrit\u00e0 delle informazioni salvate nel srckeystore*"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* has NOT been verified!  In order to verify its integrity, *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* NON \u00e8 stata verificata! A tale scopo \u00e8 necessario fornire *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* you must provide your keystore password.                  *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* la password del keystore.                                 *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* you must provide the srckeystore password.                *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* \u00c8 necessario fornire la password per il srckeystore.                *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply does not contain public key for <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La risposta del certificato non contiene la chiave pubblica per <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Incomplete certificate chain in reply"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Catena dei certificati incompleta nella risposta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate chain in reply does not verify: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "La catena dei certificati nella risposta non verifica: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Top-level certificate in reply:\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Certificato di primo livello nella risposta:\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "... is not trusted. "

    aput-object v3, v2, v4

    const-string/jumbo v3, "... non \u00e8 considerato attendibile. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Install reply anyway? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Installare la risposta? [no]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "NO"

    aput-object v3, v2, v4

    const-string/jumbo v3, "NO"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Public keys in reply and keystore don\'t match"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Le chiavi pubbliche nella risposta e nel keystore non corrispondono"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply and certificate in keystore are identical"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La risposta del certificato e il certificato nel keystore sono identici"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to establish chain from reply"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile stabilire la catena dalla risposta"

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

    const-string/jumbo v3, "Risposta errata, riprovare"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Secret key not generated, alias <alias> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La chiave segreta non \u00e8 stata generata; l\'alias <{0}> esiste gi\u00e0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Please provide -keysize for secret key generation"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Specificare il valore -keysize per la generazione della chiave segreta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "keytool usage:\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "utilizzo keytool:\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Extensions: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Estensioni: "

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

    const-string/jumbo v3, "\t     [-alias <alias>] [-sigalg <algfirma>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-file <csr_file>] [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-file <file_csr>] [-keypass <keypass>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-keystore <keystore>] [-storepass <storepass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-keystore <keystore>] [-storepass <storepass>]"

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

    const-string/jumbo v3, "\t     [-alias <alias>] [-file <file_cert>]"

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

    const-string/jumbo v3, "\t     [-keyalg <algchiave>] [-keysize <dimchiave>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-sigalg <sigalg>] [-dname <dname>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-sigalg <algfirma>] [-dname <nomed>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-validity <valDays>] [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-validity <Giornival>] [-keypass <keypass>]"

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

    const-string/jumbo v3, "\t     [-file <file_cert>] [-keypass <keypass>]"

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

    const-string/jumbo v3, "\t     [-keypass <keypass_vecchio>] [-new <keypass_nuovo>]"

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

    const-string/jumbo v3, "-printcert   [-v] [-file <file_cert>]"

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

    const-string/jumbo v3, "-storepasswd [-v] [-new <storepass_nuovo>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: A public key for alias \'signers[i]\' does not exist.  Make sure a KeyStore is properly configured."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Avviso: non esiste una chiave pubblica per l\'alias {0}. Verificare che il KeyStore sia configurato correttamente."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: Class not found: class"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Avviso: Classe non trovata: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: Invalid argument(s) for constructor: arg"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Avviso: argomento o argomenti non validi per il costruttore {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Illegal Principal Type: type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Tipo principale non valido: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Illegal option: option"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Opzione non valida: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Usage: policytool [options]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Utilizzo: policytool [opzioni]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  [-file <file>]    policy file location"

    aput-object v3, v2, v4

    const-string/jumbo v3, " [-file <file>]    posizione del policy file"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nuovo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Open"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Apri"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Salva"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save As"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Salva con nome"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "View Warning Log"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Visualizza registro avvisi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Exit"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Esci"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Add Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aggiungi policy entry"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Edit Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Modifica policy entry"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Elimina policy entry"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Edit"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Modifica"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Retain"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Mantieni"

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

    const-string/jumbo v3, "Aggiungi alias chiave pubblica"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Public Key Alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Elimina alias chiave pubblica"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "File"

    aput-object v3, v2, v4

    const-string/jumbo v3, "File"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "KeyStore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy File:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Policy file:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Could not open policy file: policyFile: e.toString()"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile aprire il file di criteri {0}: {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy Tool"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Policy Tool"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Errors have occurred while opening the policy configuration.  View the Warning Log for more information."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Si sono verificati errori durante l\'apertura della configurazione della policy. Consultare il registro degli avvisi per ulteriori informazioni."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Error"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Errore"

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

    const-string/jumbo v3, "Stato"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Avviso"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permission:                                                       "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Permesso:                                                       "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Type:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Tipo Principal:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Name:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nome Principal:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Target Name:                                                    "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nome obiettivo:                                                    "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Actions:                                                             "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Azioni:                                                             "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "OK to overwrite existing file filename?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "OK per sovrascrivere il file {0}?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cancel"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Annulla"

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

    const-string/jumbo v3, "Aggiungi Principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Edit Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Modifica Principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Elimina Principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principals:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Add Permission"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Aggiungi permesso"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Edit Permission"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Modifica permesso"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Permission"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Elimina permesso"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Done"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Fine"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore URL:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "URL KeyStore:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Type:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Tipo KeyStore:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Provider:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Fornitore KeyStore:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Password URL:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "URL password KeyStore:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principals"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Edit Principal:"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Modifica Principal:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Add New Principal:"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Aggiungi nuova Principal:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permissions"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Permessi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Edit Permission:"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Modifica permesso:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Add New Permission:"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Aggiungi nuovo permesso:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Signed By:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Firmato da:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot Specify Principal with a Wildcard Class without a Wildcard Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile specificare Principal con una classe wildcard senza un nome wildcard"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot Specify Principal without a Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile specificare Principal senza un nome"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permission and Target Name must have a value"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Il permesso e il nome di obiettivo non possono essere nulli"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove this Policy Entry?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Eliminare questa policy entry?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Overwrite File"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Sovrascrivi file"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy successfully written to filename"

    aput-object v3, v2, v4

    const-string/jumbo v3, "La policy \u00e8 stata scritta correttamente in {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "null filename"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nome file nullo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save changes?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Salvare le modifiche?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Yes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "S\u00ec"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No"

    aput-object v3, v2, v4

    const-string/jumbo v3, "No"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Policy entry"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save Changes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Salva le modifiche"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No Policy Entry selected"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nessuna policy entry selezionata"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Unable to open KeyStore: ex.toString()"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile aprire il KeyStore: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No principal selected"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nessuna Principal selezionata"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No permission selected"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nessun permesso selezionato"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nome"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "configuration type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "tipo di configurazione"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "environment variable name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nome variabile ambiente"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "library name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nome libreria"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "package name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nome package"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "policy type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "tipo di criteri"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "property name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nome propriet\u00e0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provider name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nome provider"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal List"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Elenco principale"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permission List"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Elenco autorizzazioni"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Code Base"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Codebase"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore U R L:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "URL KeyStore:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Password U R L:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "URL password KeyStore:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null input(s)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "input nullo/i non valido/i"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "actions can only be \'read\'"

    aput-object v3, v2, v4

    const-string/jumbo v3, "le azioni possono essere solamente \'lette\'"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "permission name [name] syntax invalid: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "sintassi non valida per il nome di permesso [{0}]: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Credential Class not followed by a Principal Class and Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "la classe Credential non \u00e8 seguita da un nome e una classe Principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Class not followed by a Principal Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "la classe Principal non \u00e8 seguita da un nome Principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Name must be surrounded by quotes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "il nome Principal deve essere compreso tra virgolette"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Name missing end quote"

    aput-object v3, v2, v4

    const-string/jumbo v3, "virgolette di chiusura del nome Principal mancanti"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "PrivateCredentialPermission Principal Class can not be a wildcard (*) value if Principal Name is not a wildcard (*) value"

    aput-object v3, v2, v4

    const-string/jumbo v3, "la classe Principal PrivateCredentialPermission non pu\u00f2 essere un valore wildcard (*) se il nome Principal a sua volta non \u00e8 un valore wildcard (*)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "CredOwner:\n\tPrincipal Class = class\n\tPrincipal Name = name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ProprCred:\n\tclasse Principal = {0}\n\tNome Principal = {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provided null name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "il nome fornito \u00e8 nullo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provided null keyword map"

    aput-object v3, v2, v4

    const-string/jumbo v3, "specificata mappa parole chiave null"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provided null OID map"

    aput-object v3, v2, v4

    const-string/jumbo v3, "specificata mappa OID null"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null AccessControlContext provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "fornito un valore nullo non valido per AccessControlContext"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null action provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "fornita un\'azione nulla non valida"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null Class provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "fornita una classe nulla non valida"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Subject:\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Subject:\n"

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

    const-string/jumbo v3, "\tCredenziale pubblica: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPrivate Credentials inaccessible\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tImpossibile accedere alle credenziali private\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPrivate Credential: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tCredenziale privata: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPrivate Credential inaccessible\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tImpossibile accedere alla credenziale privata\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Subject is read-only"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Subject \u00e8 di sola lettura"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "attempting to add an object which is not an instance of java.security.Principal to a Subject\'s Principal Set"

    aput-object v3, v2, v4

    const-string/jumbo v3, "si \u00e8 tentato di aggiungere un oggetto che non \u00e8 un\'istanza di java.security.Principal a un set Principal di Subject"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "attempting to add an object which is not an instance of class"

    aput-object v3, v2, v4

    const-string/jumbo v3, "si \u00e8 tentato di aggiungere un oggetto che non \u00e8 un\'\'istanza di {0}"

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

    const-string/jumbo v3, "Input nullo non valido: nome"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No LoginModules configured for name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nessun LoginModule configurato per {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null Subject provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "fornito un valore nullo non valido per Subject"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null CallbackHandler provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "fornito un valore nullo non valido per CallbackHandler"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "null subject - logout called before login"

    aput-object v3, v2, v4

    const-string/jumbo v3, "subject nullo - il logout \u00e8 stato chiamato prima del login"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate LoginModule, module, because it does not provide a no-argument constructor"

    aput-object v3, v2, v4

    const-string/jumbo v3, "impossibile istanziare il LoginModule {0} in quando non restituisce un valore vuoto per il costruttore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate LoginModule"

    aput-object v3, v2, v4

    const-string/jumbo v3, "impossibile istanziare LoginModule"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate LoginModule: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile creare un\'istanza di LoginModule: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to find LoginModule class: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "impossibile trovare la classe LoginModule: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to access LoginModule: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "impossibile accedere a LoginModule "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Login Failure: all modules ignored"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Errore di login: tutti i moduli sono stati ignorati"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "java.security.policy: error parsing policy:\n\tmessage"

    aput-object v3, v2, v4

    const-string/jumbo v3, "java.security.policy: errore nell\'\'analisi di {0}:\n\t{1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "java.security.policy: error adding Permission, perm:\n\tmessage"

    aput-object v3, v2, v4

    const-string/jumbo v3, "java.security.policy: errore nell\'\'aggiunta del permesso {0}:\n\t{1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "java.security.policy: error adding Entry:\n\tmessage"

    aput-object v3, v2, v4

    const-string/jumbo v3, "java.security.policy: errore nell\'\'aggiunta dell\'\'entry:\n\t{0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias name not provided (pe.name)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "impossibile fornire nome alias ({0})"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to perform substitution on alias, suffix"

    aput-object v3, v2, v4

    const-string/jumbo v3, "impossibile eseguire una sostituzione sull\'\'alias, {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "substitution value, prefix, unsupported"

    aput-object v3, v2, v4

    const-string/jumbo v3, "valore sostituzione, {0}, non supportato"

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

    const-string/jumbo v3, "il tipo non pu\u00f2 essere nullo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "keystorePasswordURL can not be specified without also specifying keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Impossibile specificare keystorePasswordURL senza specificare anche il keystore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected keystore type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "tipo di keystore previsto"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected keystore provider"

    aput-object v3, v2, v4

    const-string/jumbo v3, "provider di keystore previsto"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "multiple Codebase expressions"

    aput-object v3, v2, v4

    const-string/jumbo v3, "espressioni Codebase multiple"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "multiple SignedBy expressions"

    aput-object v3, v2, v4

    const-string/jumbo v3, "espressioni SignedBy multiple"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SignedBy has empty alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "SignedBy presenta un alias vuoto"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "can not specify Principal with a wildcard class without a wildcard name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "impossibile specificare Principal con una classe wildcard senza un nome wildcard"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected codeBase or SignedBy or Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "previsto codeBase o SignedBy o Principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected permission entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "prevista entry di permesso"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "number "

    aput-object v3, v2, v4

    const-string/jumbo v3, "numero "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected [expect], read [end of file]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "previsto [{0}], letto [end of file]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected [;], read [end of file]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "previsto [;], letto [end of file]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "line number: msg"

    aput-object v3, v2, v4

    const-string/jumbo v3, "riga {0}: {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "line number: expected [expect], found [actual]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "riga {0}: previsto [{1}], trovato [{2}]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "null principalClass or principalName"

    aput-object v3, v2, v4

    const-string/jumbo v3, "principalClass o principalName nullo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "PKCS11 Token [providerName] Password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Password per token PKCS11 [{0}]: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate Subject-based policy"

    aput-object v3, v2, v4

    const-string/jumbo v3, "impossibile creare un\'istanza dei criteri basati su Subject"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/util/Resources_it;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/security/util/Resources_it;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
