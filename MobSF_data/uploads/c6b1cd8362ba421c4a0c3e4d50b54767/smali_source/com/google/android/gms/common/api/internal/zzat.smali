.class abstract Lcom/google/android/gms/common/api/internal/zzat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzhv:Lcom/google/android/gms/common/api/internal/zzaj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzaj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzat;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzaj;Lcom/google/android/gms/common/api/internal/zzak;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzat;-><init>(Lcom/google/android/gms/common/api/internal/zzaj;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzat;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzaj;->zzc(Lcom/google/android/gms/common/api/internal/zzaj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_d} :catch_1f
    .catchall {:try_start_9 .. :try_end_d} :catchall_1d

    if-eqz v0, :cond_19

    :goto_f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzat;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzaj;->zzc(Lcom/google/android/gms/common/api/internal/zzaj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzat;->zzaq()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_1f
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_f

    :catchall_1d
    move-exception v0

    goto :goto_2a

    :catch_1f
    move-exception v0

    :try_start_20
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzat;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzd(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/common/api/internal/zzbd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zzbd;->zzb(Ljava/lang/RuntimeException;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_1d

    goto :goto_f

    :goto_2a
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzat;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzc(Lcom/google/android/gms/common/api/internal/zzaj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract zzaq()V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method
