.class public final Lcom/everyplay/external/mp4parser/util/IntHashMap$Entry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/external/mp4parser/util/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public a:I

.field b:I

.field public c:Ljava/lang/Object;

.field public d:Lcom/everyplay/external/mp4parser/util/IntHashMap$Entry;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lcom/everyplay/external/mp4parser/util/IntHashMap$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/everyplay/external/mp4parser/util/IntHashMap$Entry;->a:I

    iput p2, p0, Lcom/everyplay/external/mp4parser/util/IntHashMap$Entry;->b:I

    iput-object p3, p0, Lcom/everyplay/external/mp4parser/util/IntHashMap$Entry;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/everyplay/external/mp4parser/util/IntHashMap$Entry;->d:Lcom/everyplay/external/mp4parser/util/IntHashMap$Entry;

    return-void
.end method
