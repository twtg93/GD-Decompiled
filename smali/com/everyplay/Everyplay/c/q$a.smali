.class public final enum Lcom/everyplay/Everyplay/c/q$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/everyplay/Everyplay/c/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/everyplay/Everyplay/c/q$a;

.field public static final enum b:Lcom/everyplay/Everyplay/c/q$a;

.field public static final enum c:Lcom/everyplay/Everyplay/c/q$a;

.field private static final synthetic d:[Lcom/everyplay/Everyplay/c/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/everyplay/Everyplay/c/q$a;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/everyplay/Everyplay/c/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/c/q$a;->a:Lcom/everyplay/Everyplay/c/q$a;

    new-instance v0, Lcom/everyplay/Everyplay/c/q$a;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/everyplay/Everyplay/c/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/c/q$a;->b:Lcom/everyplay/Everyplay/c/q$a;

    new-instance v0, Lcom/everyplay/Everyplay/c/q$a;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/everyplay/Everyplay/c/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/c/q$a;->c:Lcom/everyplay/Everyplay/c/q$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/everyplay/Everyplay/c/q$a;

    sget-object v1, Lcom/everyplay/Everyplay/c/q$a;->a:Lcom/everyplay/Everyplay/c/q$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/everyplay/Everyplay/c/q$a;->b:Lcom/everyplay/Everyplay/c/q$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/everyplay/Everyplay/c/q$a;->c:Lcom/everyplay/Everyplay/c/q$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/everyplay/Everyplay/c/q$a;->d:[Lcom/everyplay/Everyplay/c/q$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/q$a;
    .locals 1

    const-class v0, Lcom/everyplay/Everyplay/c/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/q$a;

    return-object v0
.end method

.method public static values()[Lcom/everyplay/Everyplay/c/q$a;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/c/q$a;->d:[Lcom/everyplay/Everyplay/c/q$a;

    invoke-virtual {v0}, [Lcom/everyplay/Everyplay/c/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/everyplay/Everyplay/c/q$a;

    return-object v0
.end method
