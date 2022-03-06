.class public final enum Lcom/everyplay/Everyplay/c/a/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/everyplay/Everyplay/c/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/everyplay/Everyplay/c/a/c$a;

.field public static final enum b:Lcom/everyplay/Everyplay/c/a/c$a;

.field public static final enum c:Lcom/everyplay/Everyplay/c/a/c$a;

.field public static final enum d:Lcom/everyplay/Everyplay/c/a/c$a;

.field public static final enum e:Lcom/everyplay/Everyplay/c/a/c$a;

.field public static final enum f:Lcom/everyplay/Everyplay/c/a/c$a;

.field public static final enum g:Lcom/everyplay/Everyplay/c/a/c$a;

.field private static final synthetic h:[Lcom/everyplay/Everyplay/c/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/everyplay/Everyplay/c/a/c$a;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/everyplay/Everyplay/c/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->a:Lcom/everyplay/Everyplay/c/a/c$a;

    new-instance v0, Lcom/everyplay/Everyplay/c/a/c$a;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v4}, Lcom/everyplay/Everyplay/c/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->b:Lcom/everyplay/Everyplay/c/a/c$a;

    new-instance v0, Lcom/everyplay/Everyplay/c/a/c$a;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/everyplay/Everyplay/c/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->c:Lcom/everyplay/Everyplay/c/a/c$a;

    new-instance v0, Lcom/everyplay/Everyplay/c/a/c$a;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v6}, Lcom/everyplay/Everyplay/c/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->d:Lcom/everyplay/Everyplay/c/a/c$a;

    new-instance v0, Lcom/everyplay/Everyplay/c/a/c$a;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v7}, Lcom/everyplay/Everyplay/c/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    new-instance v0, Lcom/everyplay/Everyplay/c/a/c$a;

    const-string v1, "UPLOADED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/everyplay/Everyplay/c/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->f:Lcom/everyplay/Everyplay/c/a/c$a;

    new-instance v0, Lcom/everyplay/Everyplay/c/a/c$a;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/everyplay/Everyplay/c/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->g:Lcom/everyplay/Everyplay/c/a/c$a;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->a:Lcom/everyplay/Everyplay/c/a/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->b:Lcom/everyplay/Everyplay/c/a/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->c:Lcom/everyplay/Everyplay/c/a/c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->d:Lcom/everyplay/Everyplay/c/a/c$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/everyplay/Everyplay/c/a/c$a;->f:Lcom/everyplay/Everyplay/c/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/everyplay/Everyplay/c/a/c$a;->g:Lcom/everyplay/Everyplay/c/a/c$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->h:[Lcom/everyplay/Everyplay/c/a/c$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/a/c$a;
    .locals 1

    const-class v0, Lcom/everyplay/Everyplay/c/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/a/c$a;

    return-object v0
.end method

.method public static values()[Lcom/everyplay/Everyplay/c/a/c$a;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->h:[Lcom/everyplay/Everyplay/c/a/c$a;

    invoke-virtual {v0}, [Lcom/everyplay/Everyplay/c/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/everyplay/Everyplay/c/a/c$a;

    return-object v0
.end method
