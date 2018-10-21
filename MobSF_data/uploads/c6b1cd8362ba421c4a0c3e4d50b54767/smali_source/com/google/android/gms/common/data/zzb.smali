.class final Lcom/google/android/gms/common/data/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzom:Ljava/util/Comparator;

.field private final synthetic zzon:Lcom/google/android/gms/common/data/SortedDataBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/SortedDataBuffer;Ljava/util/Comparator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/data/zzb;->zzon:Lcom/google/android/gms/common/data/SortedDataBuffer;

    iput-object p2, p0, Lcom/google/android/gms/common/data/zzb;->zzom:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzb;->zzom:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/android/gms/common/data/zzb;->zzon:Lcom/google/android/gms/common/data/SortedDataBuffer;

    invoke-static {v1}, Lcom/google/android/gms/common/data/SortedDataBuffer;->zza(Lcom/google/android/gms/common/data/SortedDataBuffer;)Lcom/google/android/gms/common/data/DataBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/data/zzb;->zzon:Lcom/google/android/gms/common/data/SortedDataBuffer;

    invoke-static {v1}, Lcom/google/android/gms/common/data/SortedDataBuffer;->zza(Lcom/google/android/gms/common/data/SortedDataBuffer;)Lcom/google/android/gms/common/data/DataBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
