.class public final Lcom/everyplay/Everyplay/communication/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/everyplay/Everyplay/communication/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field public static final enum f:I

.field public static final enum g:I

.field public static final enum h:I

.field public static final enum i:I

.field public static final enum j:I

.field public static final enum k:I

.field public static final enum l:I

.field public static final enum m:I

.field private static final synthetic n:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/everyplay/Everyplay/communication/c$a;->a:I

    sput v4, Lcom/everyplay/Everyplay/communication/c$a;->b:I

    sput v5, Lcom/everyplay/Everyplay/communication/c$a;->c:I

    sput v6, Lcom/everyplay/Everyplay/communication/c$a;->d:I

    sput v7, Lcom/everyplay/Everyplay/communication/c$a;->e:I

    const/4 v0, 0x6

    sput v0, Lcom/everyplay/Everyplay/communication/c$a;->f:I

    const/4 v0, 0x7

    sput v0, Lcom/everyplay/Everyplay/communication/c$a;->g:I

    const/16 v0, 0x8

    sput v0, Lcom/everyplay/Everyplay/communication/c$a;->h:I

    const/16 v0, 0x9

    sput v0, Lcom/everyplay/Everyplay/communication/c$a;->i:I

    const/16 v0, 0xa

    sput v0, Lcom/everyplay/Everyplay/communication/c$a;->j:I

    const/16 v0, 0xb

    sput v0, Lcom/everyplay/Everyplay/communication/c$a;->k:I

    const/16 v0, 0xc

    sput v0, Lcom/everyplay/Everyplay/communication/c$a;->l:I

    const/16 v0, 0xd

    sput v0, Lcom/everyplay/Everyplay/communication/c$a;->m:I

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/everyplay/Everyplay/communication/c$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/everyplay/Everyplay/communication/c$a;->b:I

    aput v1, v0, v3

    sget v1, Lcom/everyplay/Everyplay/communication/c$a;->c:I

    aput v1, v0, v4

    sget v1, Lcom/everyplay/Everyplay/communication/c$a;->d:I

    aput v1, v0, v5

    sget v1, Lcom/everyplay/Everyplay/communication/c$a;->e:I

    aput v1, v0, v6

    sget v1, Lcom/everyplay/Everyplay/communication/c$a;->f:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Lcom/everyplay/Everyplay/communication/c$a;->g:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/everyplay/Everyplay/communication/c$a;->h:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/everyplay/Everyplay/communication/c$a;->i:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/everyplay/Everyplay/communication/c$a;->j:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/everyplay/Everyplay/communication/c$a;->k:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/everyplay/Everyplay/communication/c$a;->l:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/everyplay/Everyplay/communication/c$a;->m:I

    aput v2, v0, v1

    sput-object v0, Lcom/everyplay/Everyplay/communication/c$a;->n:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/c$a;->n:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
