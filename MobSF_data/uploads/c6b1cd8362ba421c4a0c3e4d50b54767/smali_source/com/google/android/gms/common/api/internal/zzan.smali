.class final Lcom/google/android/gms/common/api/internal/zzan;
.super Lcom/google/android/gms/common/api/internal/zzbe;


# instance fields
.field private final synthetic zzhy:Lcom/google/android/gms/common/ConnectionResult;

.field private final synthetic zzhz:Lcom/google/android/gms/common/api/internal/zzam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzam;Lcom/google/android/gms/common/api/internal/zzbc;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzan;->zzhz:Lcom/google/android/gms/common/api/internal/zzam;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzan;->zzhy:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzbe;-><init>(Lcom/google/android/gms/common/api/internal/zzbc;)V

    return-void
.end method


# virtual methods
.method public final zzaq()V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzan;->zzhz:Lcom/google/android/gms/common/api/internal/zzam;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzan;->zzhy:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzaj;->zza(Lcom/google/android/gms/common/api/internal/zzaj;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
