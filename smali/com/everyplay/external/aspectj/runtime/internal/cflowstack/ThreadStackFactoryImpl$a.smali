.class final Lcom/everyplay/external/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$a;
.super Ljava/lang/ThreadLocal;

# interfaces
.implements Lcom/everyplay/external/aspectj/runtime/internal/cflowstack/ThreadCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/external/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/external/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/external/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/everyplay/external/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$a$a;

    invoke-direct {v0}, Lcom/everyplay/external/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$a$a;-><init>()V

    return-object v0
.end method
