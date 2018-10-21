.class public final Lcom/google/android/gms/common/data/ObjectDataBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;

# interfaces
.implements Lcom/google/android/gms/common/data/DataBufferObserver$Observable;
.implements Lcom/google/android/gms/common/data/ObjectExclusionFilterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
        "TT;>;",
        "Lcom/google/android/gms/common/data/DataBufferObserver$Observable;",
        "Lcom/google/android/gms/common/data/ObjectExclusionFilterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzob:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzoe:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

.field private final zzog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/DataBufferObserverSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct {p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct {p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    return-void
.end method

.method private final zzcl()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_26

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_26
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    if-lez p1, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget-object v3, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_44

    const/4 v2, 0x1

    :cond_44
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    :cond_4c
    return-void
.end method

.method public final addObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->addObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V

    return-void
.end method

.method public final filterOut(Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_d
    if-ge v3, v0, :cond_56

    iget-object v8, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_53

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v4

    if-eqz v4, :cond_43

    if-gez v6, :cond_41

    move v6, v5

    const/4 v4, 0x1

    const/4 v7, 0x1

    goto :goto_53

    :cond_41
    add-int/lit8 v7, v7, 0x1

    :cond_43
    const/4 v4, 0x1

    goto :goto_53

    :cond_45
    if-ltz v6, :cond_53

    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    sub-int/2addr v5, v7

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    :cond_53
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_56
    if-eqz v4, :cond_5b

    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    :cond_5b
    if-ltz v6, :cond_62

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    :cond_62
    return-void
.end method

.method public final filterOutRaw(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_2f

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1b
    if-ge v0, v1, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2c

    goto :goto_30

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    const/4 v0, -0x1

    :goto_30
    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    if-ltz v0, :cond_3b

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    :cond_3b
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->getRawPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCount()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMetadata()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPositionFromRawPosition(I)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_2
    if-gt v1, p1, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return v0
.end method

.method public final getRaw(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRawCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getRawPosition(I)I
    .registers 5

    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_16

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_16
    :goto_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds for this buffer"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final insertRaw(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p1

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p1, :cond_2d

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    :cond_3d
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_53
    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    :cond_63
    return-void
.end method

.method public final isRawPositionFiltered(I)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final notifyChanged(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_10
    if-ge v0, v1, :cond_33

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeChanged(II)V

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_33
    return-void
.end method

.method public final release()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->clear()V

    return-void
.end method

.method public final removeObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->removeObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V

    return-void
.end method

.method public final removeRaw(I)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, p1

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, p1, :cond_37

    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_47
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_5d
    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    if-nez v0, :cond_6f

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result p1

    if-eqz p1, :cond_6f

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p1, v3, v5}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    :cond_6f
    return-void
.end method

.method public final setRaw(ILjava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_3b

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_22
    if-ge v1, v2, :cond_3b

    iget-object v3, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_38

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeChanged(II)V

    return p2

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_3b
    return p2
.end method

.method public final unfilter(Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_d
    if-ge v3, v0, :cond_62

    iget-object v8, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_2d

    add-int/lit8 v5, v5, 0x1

    if-ltz v6, :cond_5f

    :goto_20
    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    add-int/2addr v5, v7

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    goto :goto_5f

    :cond_2d
    iget-object v8, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v4

    if-eqz v4, :cond_52

    if-gez v6, :cond_50

    move v6, v5

    const/4 v4, 0x1

    const/4 v7, 0x1

    goto :goto_5f

    :cond_50
    add-int/lit8 v7, v7, 0x1

    :cond_52
    const/4 v4, 0x1

    goto :goto_5f

    :cond_54
    iget-object v8, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v8}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v8

    if-eqz v8, :cond_5f

    if-ltz v6, :cond_5f

    goto :goto_20

    :cond_5f
    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_62
    if-eqz v4, :cond_67

    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    :cond_67
    if-ltz v6, :cond_6e

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    :cond_6e
    return-void
.end method

.method public final unfilterRaw(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_3d

    if-nez v0, :cond_18

    return-void

    :cond_18
    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_20
    if-ge v1, v2, :cond_35

    iget-object v3, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_32

    move v0, v1

    goto :goto_35

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_35
    :goto_35
    if-ltz v0, :cond_3d

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    :cond_3d
    return-void
.end method
