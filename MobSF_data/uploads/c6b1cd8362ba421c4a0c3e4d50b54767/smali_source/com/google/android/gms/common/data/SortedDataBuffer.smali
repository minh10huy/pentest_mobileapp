.class public final Lcom/google/android/gms/common/data/SortedDataBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/DataBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzok:Lcom/google/android/gms/common/data/DataBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final zzol:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzok:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzol:[Ljava/lang/Integer;

    const/4 p1, 0x0

    :goto_e
    iget-object v0, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzol:[Ljava/lang/Integer;

    array-length v0, v0

    if-ge p1, v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzol:[Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzol:[Ljava/lang/Integer;

    new-instance v0, Lcom/google/android/gms/common/data/zzb;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/data/zzb;-><init>(Lcom/google/android/gms/common/data/SortedDataBuffer;Ljava/util/Comparator;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/data/SortedDataBuffer;)Lcom/google/android/gms/common/data/DataBuffer;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzok:Lcom/google/android/gms/common/data/DataBuffer;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzok:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzok:Lcom/google/android/gms/common/data/DataBuffer;

    iget-object v1, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzol:[Ljava/lang/Integer;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzol:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public final getMetadata()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzok:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final isClosed()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzok:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/common/data/DataBuffer;->isClosed()Z

    move-result v0

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
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/SortedDataBuffer;->zzok:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

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

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/SortedDataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
