.class public final Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;
.super Lcom/google/android/gms/common/data/FilteredDataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/FilteredDataBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzoh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzoi:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/FilteredDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    iput p2, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->zzoi:I

    iget p1, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->zzoi:I

    iget-object p2, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {p2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result p2

    if-le p1, p2, :cond_17

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "numIndexes must be smaller or equal to max"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, p2, :cond_2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2a
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->zzoh:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final computeRealPosition(I)I
    .registers 5

    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_16

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->zzoh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

.method public final getCount()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->zzoi:I

    iget-object v1, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v1}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
