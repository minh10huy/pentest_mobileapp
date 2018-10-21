.class final Lcom/google/android/gms/common/api/internal/zzab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field private final synthetic zzgy:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field private final synthetic zzgz:Lcom/google/android/gms/common/api/internal/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzaa;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzab;->zzgz:Lcom/google/android/gms/common/api/internal/zzaa;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzab;->zzgy:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzab;->zzgz:Lcom/google/android/gms/common/api/internal/zzaa;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzaa;->zza(Lcom/google/android/gms/common/api/internal/zzaa;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzab;->zzgy:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
