.class final Lcom/google/android/gms/common/api/internal/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzgc:Lcom/google/android/gms/common/api/internal/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzr;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzs;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzs;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzs;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zzb(Lcom/google/android/gms/common/api/internal/zzr;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_18

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzs;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzs;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
