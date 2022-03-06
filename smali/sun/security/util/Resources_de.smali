.class public Lsun/security/util/Resources_de;
.super Ljava/util/ListResourceBundle;
.source "Resources_de.java"


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

    const-string/jumbo v3, "Keytool-Fehler: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Illegal option:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Unzul\u00e4ssige Option:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Try keytool -help"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Verwenden Sie den Befehl keytool -help"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Command option <flag> needs an argument."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Befehlsoption {0} ben\u00f6tigt ein Argument."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning:  Different store and key passwords not supported for PKCS12 KeyStores. Ignoring user-specified <command> value."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Warnung: Keine Unterst\u00fctzung f\u00fcr unterschiedliche Speicher- und Schl\u00fcsselpassw\u00f6rter bei PKCS12 KeyStores. Der benutzerdefinierte Wert {0} wird ignoriert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keystore must be NONE if -storetype is {0}"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-keystore muss NONE sein, wenn -storetype gleich {0} ist"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too may retries, program terminated"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zu viele erneute Versuche, das Programm wird beendet."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-storepasswd and -keypasswd commands not supported if -storetype is {0}"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Die Befehle -storepasswd und -keypasswd werden nicht unterst\u00fctzt, wenn -storetype gleich {0} ist"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keypasswd commands not supported if -storetype is PKCS12"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Befehle des Typs -keypasswd werden nicht unterst\u00fctzt, wenn -storetype gleich PKCS12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keypass and -new can not be specified if -storetype is {0}"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Die Befehle -keypass und -new k\u00f6nnen nicht spezifiziert werden, wenn -storetype gleich {0} ist"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if -protected is specified, then -storepass, -keypass, and -new must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Wenn -protected angegeben ist, d\u00fcrfen -storepass, -keypass und -new nicht angegeben werden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if -srcprotected is specified, then -srcstorepass and -srckeypass must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "wenn -srcprotected angegeben ist, d\u00fcrfen -srcstorepass und -srckeypass nicht angegeben sein"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if keystore is not password protected, then -storepass, -keypass, and -new must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Wenn der Keystore nicht passwortgesch\u00fctzt ist, d\u00fcrfen -storepass, -keypass und -new nicht spezifiziert werden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if source keystore is not password protected, then -srcstorepass and -srckeypass must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Wenn der Quell-Keystore nicht passwortgesch\u00fctzt ist, d\u00fcrfen -srcstorepass und -srckeypass nicht spezifiziert werden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Validity must be greater than zero"

    aput-object v3, v2, v4

    const-string/jumbo v3, "G\u00fcltigkeit muss gr\u00f6\u00dfer als Null sein"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provName not a provider"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} kein Provider"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Usage error: no command provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Verwendungsfehler: kein Befehl angegeben"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Usage error, <arg> is not a legal command"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Verwendungsfehler: {0} ist kein g\u00fcltiger Befehl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Source keystore file exists, but is empty: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Datei f\u00fcr Quell-Keystore ist zwar vorhanden, aber leer: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Please specify -srckeystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geben Sie \u0096srckeystore an"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Must not specify both -v and -rfc with \'list\' command"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-v und -rfc d\u00fcrfen bei Befehl \'list\' nicht beide angegeben werden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Key password must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Schl\u00fcsselpasswort muss mindestens 6 Zeichen lang sein"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New password must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Neues Passwort muss mindest 6 Zeichen lang sein"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore file exists, but is empty: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-Datei vorhanden, aber leer: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore file does not exist: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-Datei nicht vorhanden: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Must specify destination alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zielalias muss angegeben werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Must specify alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Alias muss angegeben werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore password must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-Passwort muss mindestens 6 Zeichen lang sein."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter keystore password:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geben Sie das Keystore-Passwort ein:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter source keystore password:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geben Sie das Passwort f\u00fcr den Quell-Keystore ein:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter destination keystore password:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geben Sie das Passwort f\u00fcr den Ziel-Keystore ein:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore password is too short - must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-Passwort zu kurz - muss mindestens 6 Zeichen lang sein."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Unknown Entry Type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Unbekannter Eintragstyp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures. Alias not changed"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zu viele Fehler. Alias nicht ge\u00e4ndert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Entry for alias <alias> successfully imported."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Eintrag f\u00fcr Alias {0} erfolgreich importiert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Entry for alias <alias> not imported."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Eintrag f\u00fcr Alias {0} nicht importiert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Problem importing entry for alias <alias>: <exception>.\nEntry for alias <alias> not imported."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Fehler beim Importieren des Eintrags f\u00fcr Alias {0}: {1}.\nEintrag f\u00fcr Alias {0} nicht importiert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Import command completed:  <ok> entries successfully imported, <fail> entries failed or cancelled"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Importbefehl abgeschlossen:  {0} Eintr\u00e4ge erfolgreich importiert, Fehler oder Abbruch bei {1} Eintr\u00e4gen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: Overwriting existing alias <alias> in destination keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Warnung: \u00dcberschreiben von vorhandenem Alias {0} in Ziel-Keystore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Existing entry alias <alias> exists, overwrite? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Eintrags-Alias {0} bereits vorhanden. \u00dcberschreiben? [Nein]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures - try later"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zu viele Fehler - versuchen Sie es sp\u00e4ter noch einmal."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certification request stored in file <filename>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifizierungsanforderung in Datei <{0}> gespeichert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Submit this to your CA"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Reichen Sie dies bei Ihrem CA ein."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "if alias not specified, destalias, srckeypass, and destkeypass must not be specified"

    aput-object v3, v2, v4

    const-string/jumbo v3, "wenn kein Alias angegeben ist, m\u00fcssen destalias, srckeypass und destkeypass nicht angegeben werden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate stored in file <filename>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikat in Datei <{0}> gespeichert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply was installed in keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikatantwort wurde in Keystore installiert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply was not installed in keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikatantwort wurde nicht in Keystore installiert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate was added to keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikat wurde zu Keystore hinzugef\u00fcgt."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate was not added to keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikat wurde nicht zu Keystore hinzugef\u00fcgt."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "[Storing ksfname]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "[{0} wird gesichert.]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias has no public key (certificate)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} hat keinen \u00f6ffentlichen Schl\u00fcssel (Zertifikat)."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot derive signature algorithm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Signaturalgorithmus kann nicht abgeleitet werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> does not exist"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Alias <{0}> existiert nicht."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> has no certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Alias <{0}> hat kein Zertifikat."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Key pair not generated, alias <alias> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Schl\u00fcsselpaar wurde nicht erzeugt, Alias <{0}> ist bereits vorhanden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot derive signature algorithm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Signaturalgorithmus kann nicht abgeleitet werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Generating keysize bit keyAlgName key pair and self-signed certificate (sigAlgName) with a validity of validality days\n\tfor: x500Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Erstellen von Schl\u00fcsselpaar (Typ {1}, {0} Bit) und selbstunterzeichnetem Zertifikat ({2}) mit einer G\u00fcltigkeit von {3} Tagen\n\tf\u00fcr: {4}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter key password for <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geben Sie das Passwort f\u00fcr <{0}> ein."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t(RETURN if same as keystore password):  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t(EINGABETASTE, wenn Passwort dasselbe wie f\u00fcr Keystore):  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Key password is too short - must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Schl\u00fcsselpasswort zu kurz - muss mindestens 6 Zeichen lang sein."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures - key not added to keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zu viele Fehler - Schl\u00fcssel wurde nicht zu Keystore hinzugef\u00fcgt."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Destination alias <dest> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zielalias <{0}> bereits vorhanden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Password is too short - must be at least 6 characters"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Passwort zu kurz - muss mindestens 6 Zeichen lang sein"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Too many failures. Key entry not cloned"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zu viele Fehler. Schl\u00fcsseleingabe wurde nicht dupliziert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "key password for <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Schl\u00fcsselpasswort f\u00fcr <{0}>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore entry for <id.getName()> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-Eintrag f\u00fcr <{0}> bereits vorhanden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Creating keystore entry for <id.getName()> ..."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-Eintrag f\u00fcr <{0}> wird erstellt ..."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No entries from identity database added"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keine Eintr\u00e4ge von Identit\u00e4tsdatenbank hinzugef\u00fcgt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias name: alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aliasname: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Creation date: keyStore.getCreationDate(alias)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Erstellungsdatum: {0,date}"

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

    const-string/jumbo v3, "Eintragstyp: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate chain length: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikatskettenl\u00e4nge: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate[(i + 1)]:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikat[{0,number,integer}]:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate fingerprint (MD5): "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikatsfingerabdruck (MD5): "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Entry type: trustedCertEntry\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Eintragstyp: trustedCertEntry\n"

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

    const-string/jumbo v3, "Keystore-Typ: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Keystore provider: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keystore-Provider: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Your keystore contains keyStore.size() entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ihr Keystore enth\u00e4lt {0,number,integer} Eintrag/-\u00e4ge."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Your keystore contains keyStore.size() entries"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ihr Keystore enth\u00e4lt {0,number,integer} Eintr\u00e4ge."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to parse input"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Eingabe konnte nicht analysiert werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Empty input"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Leere Eingabe"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Not X.509 certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kein X.509-Zertifikat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot derive signature algorithm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Signaturalgorithmus kann nicht abgeleitet werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias has no public key"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} hat keinen \u00f6ffentlichen Schl\u00fcssel."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias has no X.509 certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0} hat kein X.509-Zertifikat."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New certificate (self-signed):"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Neues Zertifikat (selbstsigniert):"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Reply has no certificates"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Antwort hat keine Zertifikate."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate not imported, alias <alias> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikat nicht importiert, Alias <{0}> bereits vorhanden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Input not an X.509 certificate"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Eingabe kein X.509-Zertifikat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate already exists in keystore under alias <trustalias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikat in Keystore bereits unter Alias <{0}> vorhanden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Do you still want to add it? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "M\u00f6chten Sie es trotzdem hinzuf\u00fcgen? [Nein]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate already exists in system-wide CA keystore under alias <trustalias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikat in systemweiten CA-Keystore bereits unter Alias <{0}> vorhanden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Do you still want to add it to your own keystore? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "M\u00f6chten Sie es trotzdem zu Ihrem eigenen Keystore hinzuf\u00fcgen? [Nein]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Trust this certificate? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Diesem Zertifikat vertrauen? [Nein]:  "

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

    const-string/jumbo v3, "Neues {0}: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Passwords must differ"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Passw\u00f6rter m\u00fcssen sich unterscheiden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Re-enter new prompt: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Neues {0} nochmals eingeben: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Re-enter new password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geben Sie das Passwort erneut ein: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "They don\'t match. Try again"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keine \u00dcbereinstimmung. Versuchen Sie es erneut."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter prompt alias name:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geben Sie den Aliasnamen von {0} ein:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter new alias name\t(RETURN to cancel import for this entry):  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geben Sie einen neuen Alias-Namen ein.\t(Dr\u00fccken Sie die Eingabetaste, um das Importieren dieses Eintrags abzubrechen.):  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Enter alias name:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geben Sie den Aliasnamen ein:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t(RETURN if same as for <otherAlias>)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t(EINGABETASTE, wenn selber Name wie f\u00fcr <{0}>)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "*PATTERN* printX509Cert"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Eigner: {0}\nAussteller: {1}\nSeriennummer: {2}\nG\u00fcltig von: {3} bis: {4}\nDigitaler Fingerabdruck des Zertifikats:\n\t MD5:  {5}\n\t SHA1: {6}\n\t Unterschrift-Algorithmusname: {7}\n\t Version: {8}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is your first and last name?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Wie lautet Ihr Vor- und Nachname?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your organizational unit?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Wie lautet der Name Ihrer organisatorischen Einheit?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your organization?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Wie lautet der Name Ihrer Organisation?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your City or Locality?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Wie lautet der Name Ihrer Stadt oder Gemeinde?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the name of your State or Province?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Wie lautet der Name Ihres Bundeslandes oder Ihrer Provinz?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "What is the two-letter country code for this unit?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Wie lautet der Landescode (zwei Buchstaben) f\u00fcr diese Einheit?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Is <name> correct?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ist {0} richtig?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "no"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nein"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "yes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ja"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "y"

    aput-object v3, v2, v4

    const-string/jumbo v3, "J"

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

    const-string/jumbo v3, "Alias <{0}> verf\u00fcgt \u00fcber keinen Schl\u00fcssel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Alias <alias> references an entry type that is not a private key entry.  The -keyclone command only supports cloning of private key entries"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Alias <{0}> verweist auf einen Eintragstyp, der nicht einem Eintrag f\u00fcr einen privaten Schl\u00fcssel entspricht.  Der Befehl -keyclone unterst\u00fctzt nur das Klonen von privaten Schl\u00fcsseleintr\u00e4gen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "*****************  WARNING WARNING WARNING  *****************"

    aput-object v3, v2, v4

    const-string/jumbo v3, "*****************  WARNUNG WARNUNG WARNUNG  *****************"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* The integrity of the information stored in your keystore  *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* Die Integrit\u00e4t der in Ihrem Keystore gespeicherten Informationen  *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* The integrity of the information stored in the srckeystore*"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* Die Integrit\u00e4t der in srckeystore gespeicherten Informationen*"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* has NOT been verified!  In order to verify its integrity, *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* ist NICHT verifiziert worden! Damit die Integrit\u00e4t verifiziert werden kann, *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* you must provide your keystore password.                  *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* m\u00fcssen Sie Ihr Keystore-Passwort eingeben. *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "* you must provide the srckeystore password.                *"

    aput-object v3, v2, v4

    const-string/jumbo v3, "* Sie m\u00fcssen das Passwort f\u00fcr srckeystore angeben.                *"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply does not contain public key for <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikatantwort enth\u00e4lt keinen \u00f6ffentlichen Schl\u00fcssel f\u00fcr <{0}>."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Incomplete certificate chain in reply"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Unvollst\u00e4ndige Zertifikatskette in Antwort"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate chain in reply does not verify: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikatskette in Antwort verifiziert nicht: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Top-level certificate in reply:\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Toplevel-Zertifikat in Antwort:\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "... is not trusted. "

    aput-object v3, v2, v4

    const-string/jumbo v3, "... wird nicht vertraut. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Install reply anyway? [no]:  "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Antwort trotzdem installieren? [Nein]:  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "NO"

    aput-object v3, v2, v4

    const-string/jumbo v3, "NEIN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Public keys in reply and keystore don\'t match"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00d6ffentliche Schl\u00fcssel in Antwort und Keystore stimmen nicht \u00fcberein."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Certificate reply and certificate in keystore are identical"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zertifikatantwort und Zertifikat in Keystore sind identisch."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to establish chain from reply"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kette konnte nicht aus Antwort entnommen werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "N"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Wrong answer, try again"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Falsche Antwort, versuchen Sie es noch einmal."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Secret key not generated, alias <alias> already exists"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geheimschl\u00fcssel wurde nicht erstellt, Alias <{0}> bereits vorhanden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Please provide -keysize for secret key generation"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Geben Sie -keysize zum Erstellen eines Geheimschl\u00fcssels an"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "keytool usage:\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keytool-Syntax:\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Extensions: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Erweiterungen: "

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

    const-string/jumbo v3, "\t     [-alias <Alias>] [-sigalg <Sigalg>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-file <csr_file>] [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-file <csr_Datei>] [-keypass <Keypass>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-keystore <keystore>] [-storepass <storepass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-keystore <Keystore>] [-storepass <Storepass>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-storetype <storetype>] [-providername <name>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-storetype <Speichertyp>] [-providername <Name>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-providerclass <provider_class_name> [-providerarg <arg>]] ..."

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-providerclass <Name der Providerklasse> [-providerarg <Argument>]] ..."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-providerpath <pathlist>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-providerpath <Pfadliste>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-delete      [-v] [-protected] -alias <alias>"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-delete      [-v] [-protected] -alias <Alias>"

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

    const-string/jumbo v3, "\t     [-alias <Alias>] [-file <Zert_datei>]"

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

    const-string/jumbo v3, "\t     [-alias <Alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-keyalg <keyalg>] [-keysize <keysize>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-keyalg <Schl\u00fcssel-Alg>] [-keysize <Schl\u00fcsselgr\u00f6\u00dfe>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-sigalg <sigalg>] [-dname <dname>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-sigalg <Signal-Alg>] [-dname <Dname>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-validity <valDays>] [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-validity <G\u00fcltigkeitTage>] [-keypass <Schl\u00fcsselpass>]"

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

    const-string/jumbo v3, "\t     [-alias <Alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-alias <alias>] [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-alias <Alias>] [-keypass <Keypass>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-file <cert_file>] [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-file <Zert_Datei>] [-keypass <Schl\u00fcsselpass>]"

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

    const-string/jumbo v3, "\t     [-srckeystore <Quell-Keystore>] [-destkeystore <Ziel-Keystore>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-srcstoretype <srcstoretype>] [-deststoretype <deststoretype>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-srcstoretype <Typ des Quell-Keystore>] [-deststoretype <Typ des Ziel-Keystore>]"

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

    const-string/jumbo v3, "\t     [-srcstorepass <Passwort f\u00fcr Quell-Keystore>] [-deststorepass <Passwort f\u00fcr Ziel-Keystore>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-srcprovidername <srcprovidername>]\n\t     [-destprovidername <destprovidername>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-srcprovidername <Name des Quell-Providers>]\n\t     [-destprovidername <Name des Ziel-Providers>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-srcalias <srcalias> [-destalias <destalias>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-srcalias <Quell-Alias> [-destalias <Ziel-Alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t       [-srckeypass <srckeypass>] [-destkeypass <destkeypass>]]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t       [-srckeypass <Passwort f\u00fcr Quell-Keystore>] [-destkeypass <Passwort f\u00fcr Ziel-Keystore>]]"

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

    const-string/jumbo v3, "-changealias [-v] [-protected] -alias <Alias> -destalias <Ziel-Alias>"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-keypass <keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-keypass <Keypass>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-keypasswd   [-v] [-alias <alias>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-keypasswd   [-v] [-alias <Alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-keypass <old_keypass>] [-new <new_keypass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-keypass <alt_Schl\u00fcsselpass>] [-new <neu_Schl\u00fcsselpass>]"

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

    const-string/jumbo v3, "\t     [-alias <Alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-printcert   [-v] [-file <cert_file>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-printcert   [-v] [-file <Zert_Datei>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\t     [-alias <alias>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\t     [-alias <Alias>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "-storepasswd [-v] [-new <new_storepass>]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "-storepasswd [-v] [-new <neu_Storepass>]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: A public key for alias \'signers[i]\' does not exist.  Make sure a KeyStore is properly configured."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Warnung: Kein \u00f6ffentlicher Schl\u00fcssel f\u00fcr Alias {0} vorhanden.  Vergewissern Sie sich, dass der KeyStore ordnungsgem\u00e4\u00df konfiguriert ist."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: Class not found: class"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Warnung: Klasse nicht gefunden: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Warning: Invalid argument(s) for constructor: arg"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Warnung: Ung\u00fcltige(s) Argument(e) f\u00fcr Konstruktor: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Illegal Principal Type: type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Unzul\u00e4ssiger Principal-Typ: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Illegal option: option"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Unzul\u00e4ssige Option: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Usage: policytool [options]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Syntax: policytool [Optionen]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  [-file <file>]    policy file location"

    aput-object v3, v2, v4

    const-string/jumbo v3, " [-file <Datei>]    Verzeichnis der Richtliniendatei"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "New"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Neu"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Open"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00d6ffnen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Speichern"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save As"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Speichern unter"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "View Warning Log"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Warnungsprotokoll anzeigen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Exit"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Beenden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Add Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Richtlinieneintrag hinzuf\u00fcgen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Edit Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Richtlinieneintrag bearbeiten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Richtlinieneintrag l\u00f6schen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Edit"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Bearbeiten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Retain"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Beibehalten"

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

    const-string/jumbo v3, "Alias f\u00fcr \u00f6ffentlichen Schl\u00fcssel hinzuf\u00fcgen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Public Key Alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Alias f\u00fcr \u00f6ffentlichen Schl\u00fcssel l\u00f6schen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "File"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Datei"

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

    const-string/jumbo v3, "Richtliniendatei:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Could not open policy file: policyFile: e.toString()"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Richtliniendatei konnte nicht ge\u00f6ffnet werden: {0}: {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy Tool"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Richtlinientool"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Errors have occurred while opening the policy configuration.  View the Warning Log for more information."

    aput-object v3, v2, v4

    const-string/jumbo v3, "Beim \u00d6ffnen der Richtlinienkonfiguration sind Fehler aufgetreten. Weitere Informationen finden Sie im Warnungsprotokoll."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Error"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Fehler"

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

    const-string/jumbo v3, "Warnung"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permission:                                                       "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Berechtigung:                                                       "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Type:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal-Typ:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Name:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal-Name:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Target Name:                                                    "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zielname:                                                    "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Actions:                                                             "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aktionen:                                                             "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "OK to overwrite existing file filename?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Vorhandene Datei {0} \u00fcberschreiben?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cancel"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Abbrechen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "CodeBase:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Code-Basis:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SignedBy:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Signiert von:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Add Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal hinzuf\u00fcgen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Edit Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal bearbeiten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal l\u00f6schen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principals:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principals:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Add Permission"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Berechtigung hinzuf\u00fcgen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Edit Permission"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Berechtigung \u00e4ndern"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove Permission"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Berechtigung l\u00f6schen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Done"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Fertig"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore URL:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "KeyStore-URL:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Type:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "KeyStore-Typ:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Provider:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "KeyStore-Anbieter:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Password URL:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "KeyStore-Passwort-URL:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principals"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principals"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Edit Principal:"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Principal bearbeiten:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Add New Principal:"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Neuen Principal hinzuf\u00fcgen:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permissions"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Berechtigungen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Edit Permission:"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Berechtigung \u00e4ndern:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "  Add New Permission:"

    aput-object v3, v2, v4

    const-string/jumbo v3, " Neue Berechtigung hinzuf\u00fcgen:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Signed By:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Signiert von:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot Specify Principal with a Wildcard Class without a Wildcard Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal kann nicht mit einer Wildcard-Klasse ohne Wildcard-Namen angegeben werden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot Specify Principal without a Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal kann nicht ohne einen Namen angegeben werden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permission and Target Name must have a value"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Berechtigung und Zielname m\u00fcssen einen Wert haben"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove this Policy Entry?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Diesen Richtlinieneintrag l\u00f6schen?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Overwrite File"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Datei \u00fcberschreiben"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy successfully written to filename"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Richtlinien erfolgreich in {0} geschrieben"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "null filename"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Null als Dateiname"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save changes?"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00c4nderungen speichern?"

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

    const-string/jumbo v3, "Nein"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Policy Entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Richtlinieneintrag"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Save Changes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u00c4nderungen speichern"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No Policy Entry selected"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kein Richtlinieneintrag ausgew\u00e4hlt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Unable to open KeyStore: ex.toString()"

    aput-object v3, v2, v4

    const-string/jumbo v3, "KeyStore konnte nicht ge\u00f6ffnet werden: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No principal selected"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kein Principal ausgew\u00e4hlt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No permission selected"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keine Berechtigung ausgew\u00e4hlt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Name"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "configuration type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Konfigurationstyp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "environment variable name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Name der Umgebungsvariable"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "library name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Bibliotheksname"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "package name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Paketname"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "policy type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Richtlinientyp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "property name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Eigenschaftsname"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provider name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Providername"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal List"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal-Liste"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Permission List"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Berechtigungsliste"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Code Base"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Code-Basis"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore U R L:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "KeyStore-URL:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "KeyStore Password U R L:"

    aput-object v3, v2, v4

    const-string/jumbo v3, "KeyStore-Passwort-URL:"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null input(s)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ung\u00fcltige Null-Eingabe(n)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "actions can only be \'read\'"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aktionen k\u00f6nnen nur \'gelesen\' werden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "permission name [name] syntax invalid: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Syntax f\u00fcr Berechtigungsnamen [{0}] ung\u00fcltig: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Credential Class not followed by a Principal Class and Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nach Authentisierungsklasse folgt keine Principal-Klasse und kein Name."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Class not followed by a Principal Name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nach Principal-Klasse folgt kein Principal-Name"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Name must be surrounded by quotes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal-Name muss vorn und hinten mit Anf\u00fchrungsstrichen versehen sein"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Principal Name missing end quote"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Abschlie\u00dfendes Anf\u00fchrungszeichen f\u00fcr Principal-Name fehlt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "PrivateCredentialPermission Principal Class can not be a wildcard (*) value if Principal Name is not a wildcard (*) value"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Private Authentisierungsberechtigung Principal-Klasse kann kein Wildcardwert (*) sein, wenn der Principal-Name kein Wildcardwert (*) ist."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "CredOwner:\n\tPrincipal Class = class\n\tPrincipal Name = name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Authentisierungsbesitzer:\n\tPrincipal-Klasse = {0}\n\tPrincipal-Name = {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provided null name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "hat Null als Namen geliefert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provided null keyword map"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Leere Schl\u00fcsselwort-Map"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "provided null OID map"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Leere OID-Map"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null AccessControlContext provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ung\u00fcltige Null als Zugangskontrollkontext geliefert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null action provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ung\u00fcltige Null als Aktion geliefert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null Class provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ung\u00fcltige Null als Klasse geliefert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Subject:\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Betreff:\n"

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

    const-string/jumbo v3, "\t\u00d6ffentliche Authentisierung: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPrivate Credentials inaccessible\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tKein Zugriff auf private Authentisierungen m\u00f6glich\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPrivate Credential: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tPrivate Authentisierung: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "\tPrivate Credential inaccessible\n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "\tKein Zugriff auf private Authentisierung m\u00f6glich\n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Subject is read-only"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Betreff ist schreibgesch\u00fctzt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "attempting to add an object which is not an instance of java.security.Principal to a Subject\'s Principal Set"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Es wird versucht, ein Objekt hinzuzuf\u00fcgen, das keine Instanz von java.security.Principal f\u00fcr eine Principal-Gruppe eines Betreffs ist."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "attempting to add an object which is not an instance of class"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Es wird versucht, ein Objekt hinzuzuf\u00fcgen, das keine Instanz von {0} ist."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "LoginModuleControlFlag: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Anmeldemodul-Steuerflag: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Invalid null input: name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ung\u00fcltige Nulleingabe: Name"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No LoginModules configured for name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "F\u00fcr {0} sind keine Anmeldemodule konfiguriert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null Subject provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ung\u00fcltige Null als Betreff geliefert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "invalid null CallbackHandler provided"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Ung\u00fcltige Null als Callback-Handler geliefert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "null subject - logout called before login"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Null-Betreff - Abmeldung vor Anmeldung aufgerufen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate LoginModule, module, because it does not provide a no-argument constructor"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Es kann keine Instanz des Anmeldemoduls {0} erstellt werden, weil es keinen argumentlosen Konstruktor liefert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate LoginModule"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Es kann keine Instanz des Anmeldemoduls erstellt werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate LoginModule: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "LoginModule konnte nicht instanziiert werden: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to find LoginModule class: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Die Anmeldemodulklasse kann nicht gefunden werden: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to access LoginModule: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kein Zugriff auf Anmeldemodul m\u00f6glich: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Login Failure: all modules ignored"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Anmeldefehler: Alle Module werden ignoriert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "java.security.policy: error parsing policy:\n\tmessage"

    aput-object v3, v2, v4

    const-string/jumbo v3, "java.security.policy: Fehler bei Analyse {0}:\n\t{1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "java.security.policy: error adding Permission, perm:\n\tmessage"

    aput-object v3, v2, v4

    const-string/jumbo v3, "java.security.policy: Fehler beim Hinzuf\u00fcgen der Genehmigung, {0}:\n\t{1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "java.security.policy: error adding Entry:\n\tmessage"

    aput-object v3, v2, v4

    const-string/jumbo v3, "java.security.policy: Fehler beim Hinzuf\u00fcgen des Eintrags:\n\t{0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "alias name not provided (pe.name)"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Aliasname nicht bereitgestellt ({0})"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to perform substitution on alias, suffix"

    aput-object v3, v2, v4

    const-string/jumbo v3, "kann Substition von Alias nicht durchf\u00fchren, {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "substitution value, prefix, unsupported"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Substitutionswert, {0}, nicht unterst\u00fctzt"

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

    const-string/jumbo v3, "Typ kann nicht Null sein"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "keystorePasswordURL can not be specified without also specifying keystore"

    aput-object v3, v2, v4

    const-string/jumbo v3, "keystorePasswordURL kann nicht ohne Keystore angegeben werden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected keystore type"

    aput-object v3, v2, v4

    const-string/jumbo v3, "erwarteter Keystore-Typ"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected keystore provider"

    aput-object v3, v2, v4

    const-string/jumbo v3, "erwarteter Keystore-Provider"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "multiple Codebase expressions"

    aput-object v3, v2, v4

    const-string/jumbo v3, "mehrere Codebase-Ausdr\u00fccke"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "multiple SignedBy expressions"

    aput-object v3, v2, v4

    const-string/jumbo v3, "mehrere SignedBy-Ausdr\u00fccke"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SignedBy has empty alias"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Leerer Alias in SignedBy"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "can not specify Principal with a wildcard class without a wildcard name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Kann Principal nicht mit einer Wildcard-Klasse ohne Wildcard-Namen angeben."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected codeBase or SignedBy or Principal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "CodeBase oder SignedBy oder Principal erwartet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected permission entry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Berechtigungseintrag erwartet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "number "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Nummer "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected [expect], read [end of file]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "erwartet [{0}], gelesen [Dateiende]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "expected [;], read [end of file]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "erwartet [;], gelesen [Dateiende]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "line number: msg"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zeile {0}: {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "line number: expected [expect], found [actual]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Zeile {0}: erwartet [{1}], gefunden [{2}]"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "null principalClass or principalName"

    aput-object v3, v2, v4

    const-string/jumbo v3, "Principal-Klasse oder Principal-Name Null"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "PKCS11 Token [providerName] Password: "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Passwort f\u00fcr PKCS11-Token [{0}]: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "unable to instantiate Subject-based policy"

    aput-object v3, v2, v4

    const-string/jumbo v3, "auf Subject basierende Richtlinie konnte nicht instanziiert werden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/util/Resources_de;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/security/util/Resources_de;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
