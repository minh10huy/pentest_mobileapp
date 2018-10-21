.class abstract Lcom/google/android/gms/common/api/internal/zzbe;
.super Ljava/lang/Object;


# instance fields
.field private final zzjg:Lcom/google/android/gms/common/api/internal/zzbc;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/zzbc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzjg:Lcom/google/android/gms/common/api/internal/zzbc;

    return-void
.end method


# virtual methods
.method protected abstract zzaq()V
.end method

.method public final zzc(Lcom/google/android/gms/common/api/internal/zzbd;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzbd;->zza(Lcom/google/android/gms/common/api/internal/zzbd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzbd;->zzb(Lcom/google/android/gms/common/api/internal/zzbd;)Lcom/google/android/gms/common/api/internal/zzbc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzjg:Lcom/google/android/gms/common/api/internal/zzbc;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1b

    if-eq v0, v1, :cond_17

    :goto_f
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzbd;->zza(Lcom/google/android/gms/common/api/internal/zzbd;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzbe;->zzaq()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_f

    :catchall_1b
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzbd;->zza(Lcom/google/android/gms/common/api/internal/zzbd;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
