.class public final enum Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/socialnetworks/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

.field public static final enum b:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

.field public static final enum c:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

.field private static final synthetic d:[Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v2}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    new-instance v0, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    const-string v1, "TWITTER"

    invoke-direct {v0, v1, v3}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->b:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    new-instance v0, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    const-string v1, "GOOGLE"

    invoke-direct {v0, v1, v4}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->c:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    sget-object v1, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->b:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->c:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->d:[Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->valueOf(Ljava/lang/String;)Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;
    .locals 1

    const-class v0, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    return-object v0
.end method

.method public static values()[Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->d:[Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    invoke-virtual {v0}, [Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    return-object v0
.end method
