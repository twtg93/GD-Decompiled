.class public interface abstract Lcom/everyplay/external/mp4parser/authoring/Track;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everyplay/external/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()[J
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everyplay/external/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/everyplay/external/iso/boxes/SubSampleInformationBox;
.end method

.method public abstract e()J
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everyplay/external/mp4parser/authoring/Edit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/everyplay/external/mp4parser/boxes/mp4/samplegrouping/GroupEntry;",
            "[J>;"
        }
    .end annotation
.end method

.method public abstract k()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everyplay/external/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end method

.method public abstract l()[J
.end method

.method public abstract m()Lcom/everyplay/external/iso/boxes/SampleDescriptionBox;
.end method

.method public abstract n()Lcom/everyplay/external/mp4parser/authoring/TrackMetaData;
.end method

.method public abstract o()Ljava/lang/String;
.end method
