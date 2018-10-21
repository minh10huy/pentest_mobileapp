.class public final Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/DataBuffer;
.implements Lcom/google/android/gms/common/data/ExclusionFilterable;
.implements Lcom/google/android/gms/common/data/TextFilterable;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/DataBuffer<",
        "TT;>;",
        "Lcom/google/android/gms/common/data/ExclusionFilterable;",
        "Lcom/google/android/gms/common/data/TextFilterable;"
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private final zznf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final zzng:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zznh:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zzng:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zzng:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->append(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-void
.end method

.method public static extend(Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;Lcom/google/android/gms/common/data/DataBuffer;)Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/data/ConcatenatedDataBuffer<",
            "TT;>;",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;)",
            "Lcom/google/android/gms/common/data/ConcatenatedDataBuffer<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/data/DataBuffer;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->append(Lcom/google/android/gms/common/data/DataBuffer;)V

    goto :goto_e

    :cond_1c
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->append(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-object v0
.end method


# virtual methods
.method public final append(Lcom/google/android/gms/common/data/DataBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/DataBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->mBundle:Landroid/os/Bundle;

    const-string v2, "prev_page_token"

    const-string v3, "prev_page_token"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->computeCounts()V

    invoke-interface {p1}, Lcom/google/android/gms/common/data/DataBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->mBundle:Landroid/os/Bundle;

    const-string v1, "next_page_token"

    const-string v2, "next_page_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_42
    iget-object p1, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->mBundle:Landroid/os/Bundle;

    const-string v0, "next_page_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_49
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception p1

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public final clearFilters()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataBuffer;

    instance-of v3, v2, Lcom/google/android/gms/common/data/ExclusionFilterable;

    if-eqz v3, :cond_1a

    check-cast v2, Lcom/google/android/gms/common/data/ExclusionFilterable;

    invoke-interface {v2}, Lcom/google/android/gms/common/data/ExclusionFilterable;->clearFilters()V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->computeCounts()V

    return-void
.end method

.method public final close()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->release()V

    return-void
.end method

.method public final computeCounts()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zzng:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v1, v0, :cond_2a

    iget-object v3, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/data/DataBuffer;

    if-eqz v3, :cond_1e

    invoke-interface {v3}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    :cond_1e
    iget-object v3, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zzng:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2a
    iput v2, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznh:I

    return-void
.end method

.method public final filterOut(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataBuffer;

    instance-of v3, v2, Lcom/google/android/gms/common/data/ExclusionFilterable;

    if-eqz v3, :cond_1a

    check-cast v2, Lcom/google/android/gms/common/data/ExclusionFilterable;

    invoke-interface {v2, p1}, Lcom/google/android/gms/common/data/ExclusionFilterable;->filterOut(Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->computeCounts()V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_31

    iget-object v2, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zzng:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_2e

    iget-object v3, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/data/DataBuffer;

    if-eqz v3, :cond_2e

    sub-int/2addr p1, v2

    invoke-interface {v3}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-interface {v3, p1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_31
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public final getCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznh:I

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final getMetadata()Landroid/os/Bundle;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->mBundle:Landroid/os/Bundle;

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final isClosed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/data/DataBufferIterator;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/DataBufferIterator;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-object v0
.end method

.method public final release()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataBuffer;

    if-eqz v2, :cond_17

    invoke-interface {v2}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zzng:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->mBundle:Landroid/os/Bundle;

    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public final setFilterTerm(Landroid/content/Context;Lcom/google/android/gms/common/data/TextFilterable$StringFilter;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataBuffer;

    instance-of v3, v2, Lcom/google/android/gms/common/data/TextFilterable;

    if-eqz v3, :cond_1a

    check-cast v2, Lcom/google/android/gms/common/data/TextFilterable;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/gms/common/data/TextFilterable;->setFilterTerm(Landroid/content/Context;Lcom/google/android/gms/common/data/TextFilterable$StringFilter;Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->computeCounts()V

    return-void
.end method

.method public final setFilterTerm(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataBuffer;

    instance-of v3, v2, Lcom/google/android/gms/common/data/TextFilterable;

    if-eqz v3, :cond_1a

    check-cast v2, Lcom/google/android/gms/common/data/TextFilterable;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/common/data/TextFilterable;->setFilterTerm(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->computeCounts()V

    return-void
.end method

.method public final singleRefIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final unfilter(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->zznf:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataBuffer;

    instance-of v3, v2, Lcom/google/android/gms/common/data/ExclusionFilterable;

    if-eqz v3, :cond_1a

    check-cast v2, Lcom/google/android/gms/common/data/ExclusionFilterable;

    invoke-interface {v2, p1}, Lcom/google/android/gms/common/data/ExclusionFilterable;->unfilter(Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/ConcatenatedDataBuffer;->computeCounts()V

    return-void
.end method
