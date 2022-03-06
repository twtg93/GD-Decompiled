.class public final Lcom/everyplay/Everyplay/encoding/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/encoding/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/everyplay/Everyplay/encoding/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/everyplay/Everyplay/encoding/b$b;->a:I

    sput v4, Lcom/everyplay/Everyplay/encoding/b$b;->b:I

    sput v0, Lcom/everyplay/Everyplay/encoding/b$b;->c:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/everyplay/Everyplay/encoding/b$b;->a:I

    aput v2, v0, v1

    sget v1, Lcom/everyplay/Everyplay/encoding/b$b;->b:I

    aput v1, v0, v3

    sget v1, Lcom/everyplay/Everyplay/encoding/b$b;->c:I

    aput v1, v0, v4

    sput-object v0, Lcom/everyplay/Everyplay/encoding/b$b;->d:[I

    return-void
.end method
