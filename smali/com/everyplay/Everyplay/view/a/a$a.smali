.class public final Lcom/everyplay/Everyplay/view/a/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/everyplay/Everyplay/view/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/everyplay/Everyplay/view/a/a$a;->a:I

    sput v4, Lcom/everyplay/Everyplay/view/a/a$a;->b:I

    sput v5, Lcom/everyplay/Everyplay/view/a/a$a;->c:I

    sput v0, Lcom/everyplay/Everyplay/view/a/a$a;->d:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/everyplay/Everyplay/view/a/a$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/everyplay/Everyplay/view/a/a$a;->b:I

    aput v1, v0, v3

    sget v1, Lcom/everyplay/Everyplay/view/a/a$a;->c:I

    aput v1, v0, v4

    sget v1, Lcom/everyplay/Everyplay/view/a/a$a;->d:I

    aput v1, v0, v5

    sput-object v0, Lcom/everyplay/Everyplay/view/a/a$a;->e:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/view/a/a$a;->e:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
