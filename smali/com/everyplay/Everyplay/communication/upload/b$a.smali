.class public final enum Lcom/everyplay/Everyplay/communication/upload/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/upload/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/everyplay/Everyplay/communication/upload/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/everyplay/Everyplay/communication/upload/b$a;

.field public static final enum b:Lcom/everyplay/Everyplay/communication/upload/b$a;

.field public static final enum c:Lcom/everyplay/Everyplay/communication/upload/b$a;

.field public static final enum d:Lcom/everyplay/Everyplay/communication/upload/b$a;

.field public static final enum e:Lcom/everyplay/Everyplay/communication/upload/b$a;

.field public static final enum f:Lcom/everyplay/Everyplay/communication/upload/b$a;

.field private static final synthetic g:[Lcom/everyplay/Everyplay/communication/upload/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/everyplay/Everyplay/communication/upload/b$a;

    const-string v1, "INTIAL"

    invoke-direct {v0, v1, v3}, Lcom/everyplay/Everyplay/communication/upload/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/communication/upload/b$a;->a:Lcom/everyplay/Everyplay/communication/upload/b$a;

    new-instance v0, Lcom/everyplay/Everyplay/communication/upload/b$a;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/everyplay/Everyplay/communication/upload/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/communication/upload/b$a;->b:Lcom/everyplay/Everyplay/communication/upload/b$a;

    new-instance v0, Lcom/everyplay/Everyplay/communication/upload/b$a;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v5}, Lcom/everyplay/Everyplay/communication/upload/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/communication/upload/b$a;->c:Lcom/everyplay/Everyplay/communication/upload/b$a;

    new-instance v0, Lcom/everyplay/Everyplay/communication/upload/b$a;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v6}, Lcom/everyplay/Everyplay/communication/upload/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/communication/upload/b$a;->d:Lcom/everyplay/Everyplay/communication/upload/b$a;

    new-instance v0, Lcom/everyplay/Everyplay/communication/upload/b$a;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v7}, Lcom/everyplay/Everyplay/communication/upload/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/communication/upload/b$a;->e:Lcom/everyplay/Everyplay/communication/upload/b$a;

    new-instance v0, Lcom/everyplay/Everyplay/communication/upload/b$a;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/everyplay/Everyplay/communication/upload/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/communication/upload/b$a;->f:Lcom/everyplay/Everyplay/communication/upload/b$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/everyplay/Everyplay/communication/upload/b$a;

    sget-object v1, Lcom/everyplay/Everyplay/communication/upload/b$a;->a:Lcom/everyplay/Everyplay/communication/upload/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/everyplay/Everyplay/communication/upload/b$a;->b:Lcom/everyplay/Everyplay/communication/upload/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/everyplay/Everyplay/communication/upload/b$a;->c:Lcom/everyplay/Everyplay/communication/upload/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/everyplay/Everyplay/communication/upload/b$a;->d:Lcom/everyplay/Everyplay/communication/upload/b$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/everyplay/Everyplay/communication/upload/b$a;->e:Lcom/everyplay/Everyplay/communication/upload/b$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/everyplay/Everyplay/communication/upload/b$a;->f:Lcom/everyplay/Everyplay/communication/upload/b$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/everyplay/Everyplay/communication/upload/b$a;->g:[Lcom/everyplay/Everyplay/communication/upload/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/everyplay/Everyplay/communication/upload/b$a;
    .locals 1

    const-class v0, Lcom/everyplay/Everyplay/communication/upload/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/b$a;

    return-object v0
.end method

.method public static values()[Lcom/everyplay/Everyplay/communication/upload/b$a;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/upload/b$a;->g:[Lcom/everyplay/Everyplay/communication/upload/b$a;

    invoke-virtual {v0}, [Lcom/everyplay/Everyplay/communication/upload/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/everyplay/Everyplay/communication/upload/b$a;

    return-object v0
.end method
