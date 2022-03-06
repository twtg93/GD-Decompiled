.class public final enum Lcom/everyplay/Everyplay/c/q$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/everyplay/Everyplay/c/q$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/everyplay/Everyplay/c/q$b;

.field public static final enum b:Lcom/everyplay/Everyplay/c/q$b;

.field public static final enum c:Lcom/everyplay/Everyplay/c/q$b;

.field public static final enum d:Lcom/everyplay/Everyplay/c/q$b;

.field private static final synthetic f:[Lcom/everyplay/Everyplay/c/q$b;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/everyplay/Everyplay/c/q$b;

    const-string v1, "BOTTOM_RIGHT"

    const-string v2, "BottomRight"

    invoke-direct {v0, v1, v3, v2}, Lcom/everyplay/Everyplay/c/q$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/everyplay/Everyplay/c/q$b;->a:Lcom/everyplay/Everyplay/c/q$b;

    new-instance v0, Lcom/everyplay/Everyplay/c/q$b;

    const-string v1, "BOTTOM_LEFT"

    const-string v2, "BottomLeft"

    invoke-direct {v0, v1, v4, v2}, Lcom/everyplay/Everyplay/c/q$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/everyplay/Everyplay/c/q$b;->b:Lcom/everyplay/Everyplay/c/q$b;

    new-instance v0, Lcom/everyplay/Everyplay/c/q$b;

    const-string v1, "TOP_RIGHT"

    const-string v2, "TopRight"

    invoke-direct {v0, v1, v5, v2}, Lcom/everyplay/Everyplay/c/q$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/everyplay/Everyplay/c/q$b;->c:Lcom/everyplay/Everyplay/c/q$b;

    new-instance v0, Lcom/everyplay/Everyplay/c/q$b;

    const-string v1, "TOP_LEFT"

    const-string v2, "TopLeft"

    invoke-direct {v0, v1, v6, v2}, Lcom/everyplay/Everyplay/c/q$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/everyplay/Everyplay/c/q$b;->d:Lcom/everyplay/Everyplay/c/q$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/everyplay/Everyplay/c/q$b;

    sget-object v1, Lcom/everyplay/Everyplay/c/q$b;->a:Lcom/everyplay/Everyplay/c/q$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/everyplay/Everyplay/c/q$b;->b:Lcom/everyplay/Everyplay/c/q$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/everyplay/Everyplay/c/q$b;->c:Lcom/everyplay/Everyplay/c/q$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/everyplay/Everyplay/c/q$b;->d:Lcom/everyplay/Everyplay/c/q$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/everyplay/Everyplay/c/q$b;->f:[Lcom/everyplay/Everyplay/c/q$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/everyplay/Everyplay/c/q$b;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/q$b;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/everyplay/Everyplay/c/q$b;->values()[Lcom/everyplay/Everyplay/c/q$b;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    iget-object v5, v1, Lcom/everyplay/Everyplay/c/q$b;->e:Ljava/lang/String;

    if-ne p0, v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/q$b;
    .locals 1

    const-class v0, Lcom/everyplay/Everyplay/c/q$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/q$b;

    return-object v0
.end method

.method public static values()[Lcom/everyplay/Everyplay/c/q$b;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/c/q$b;->f:[Lcom/everyplay/Everyplay/c/q$b;

    invoke-virtual {v0}, [Lcom/everyplay/Everyplay/c/q$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/everyplay/Everyplay/c/q$b;

    return-object v0
.end method
