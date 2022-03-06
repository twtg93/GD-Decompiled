.class final Lcom/everyplay/external/aspectj/runtime/reflect/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/external/aspectj/runtime/reflect/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/everyplay/external/aspectj/lang/Signature;

.field c:Lcom/everyplay/external/aspectj/lang/reflect/SourceLocation;

.field private d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;Lcom/everyplay/external/aspectj/lang/reflect/SourceLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/everyplay/external/aspectj/runtime/reflect/b$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/everyplay/external/aspectj/runtime/reflect/b$a;->b:Lcom/everyplay/external/aspectj/lang/Signature;

    iput-object p4, p0, Lcom/everyplay/external/aspectj/runtime/reflect/b$a;->c:Lcom/everyplay/external/aspectj/lang/reflect/SourceLocation;

    iput p1, p0, Lcom/everyplay/external/aspectj/runtime/reflect/b$a;->d:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/everyplay/external/aspectj/runtime/reflect/g;->k:Lcom/everyplay/external/aspectj/runtime/reflect/g;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/everyplay/external/aspectj/runtime/reflect/b$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/everyplay/external/aspectj/runtime/reflect/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/everyplay/external/aspectj/runtime/reflect/b$a;->b:Lcom/everyplay/external/aspectj/lang/Signature;

    check-cast v0, Lcom/everyplay/external/aspectj/runtime/reflect/e;

    invoke-virtual {v0, v1}, Lcom/everyplay/external/aspectj/runtime/reflect/e;->b(Lcom/everyplay/external/aspectj/runtime/reflect/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
