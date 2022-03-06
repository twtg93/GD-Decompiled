.class public Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:I

.field e:J

.field f:J

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:Z

.field v:I

.field w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x3f

    const/16 v1, 0x1f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->h:I

    iput v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->j:I

    iput v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->l:I

    iput v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->n:I

    iput v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->p:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->r:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->r:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->q:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->q:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->o:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->o:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->m:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->m:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->a:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->a:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->s:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->s:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-wide v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->f:J

    iget-wide v4, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->g:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->g:I

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-wide v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->e:J

    iget-wide v4, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->d:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->d:I

    if-eq v2, v3, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->b:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->b:I

    if-eq v2, v3, :cond_e

    move v0, v1

    goto :goto_0

    :cond_e
    iget-boolean v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->c:Z

    iget-boolean v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->c:Z

    if-eq v2, v3, :cond_f

    move v0, v1

    goto :goto_0

    :cond_f
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->v:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->v:I

    if-eq v2, v3, :cond_10

    move v0, v1

    goto :goto_0

    :cond_10
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->i:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->i:I

    if-eq v2, v3, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->t:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->t:I

    if-eq v2, v3, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->k:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->k:I

    if-eq v2, v3, :cond_13

    move v0, v1

    goto/16 :goto_0

    :cond_13
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->h:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->h:I

    if-eq v2, v3, :cond_14

    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->j:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->j:I

    if-eq v2, v3, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->l:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->l:I

    if-eq v2, v3, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_16
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->n:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->n:I

    if-eq v2, v3, :cond_17

    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->p:I

    iget v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->p:I

    if-eq v2, v3, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-boolean v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->u:Z

    iget-boolean v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->u:Z

    if-eq v2, v3, :cond_19

    move v0, v1

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    iget-object v3, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 9

    const/16 v8, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->b:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->c:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->d:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->e:J

    iget-wide v6, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->e:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->f:J

    iget-wide v6, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->f:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->g:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->h:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->i:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->j:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->k:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->l:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->m:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->n:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->o:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->p:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->q:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->r:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->s:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->t:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->u:Z

    if-eqz v3, :cond_2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->v:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3f

    const/16 v4, 0x1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HEVCDecoderConfigurationRecord{configurationVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", general_profile_space="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", general_tier_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", general_profile_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", general_profile_compatibility_flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", general_constraint_indicator_flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", general_level_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->h:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", reserved1="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", min_spatial_segmentation_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->j:I

    if-eq v0, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", reserved2="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parallelismType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->l:I

    if-eq v0, v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", reserved3="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chromaFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->n:I

    if-eq v0, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", reserved4="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitDepthLumaMinus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->p:I

    if-eq v0, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", reserved5="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitDepthChromaMinus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", constantFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numTemporalLayers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temporalIdNested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lengthSizeMinusOne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arrays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    goto/16 :goto_2

    :cond_3
    const-string v0, ""

    goto/16 :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4
.end method
