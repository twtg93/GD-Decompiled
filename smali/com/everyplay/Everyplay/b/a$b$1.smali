.class final Lcom/everyplay/Everyplay/b/a$b$1;
.super Ljava/net/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/b/a$b;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/everyplay/Everyplay/b/a$b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/b/a$b;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/b/a$b$1;->b:Lcom/everyplay/Everyplay/b/a$b;

    iput-object p2, p0, Lcom/everyplay/Everyplay/b/a$b$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 4

    new-instance v2, Ljava/net/PasswordAuthentication;

    iget-object v0, p0, Lcom/everyplay/Everyplay/b/a$b$1;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/everyplay/Everyplay/b/a$b$1;->a:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    return-object v2
.end method
