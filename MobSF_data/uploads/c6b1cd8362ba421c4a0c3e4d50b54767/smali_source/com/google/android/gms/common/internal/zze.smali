.class final Lcom/google/android/gms/common/internal/zze;
.super Landroid/support/v4/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/ExpirableLruCache;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zza(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    if-nez p4, :cond_22

    :try_start_e
    iget-object p3, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzb(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Z

    move-result p3

    if-eqz p3, :cond_22

    iget-object p3, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzc(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :catchall_20
    move-exception p2

    goto :goto_37

    :cond_22
    :goto_22
    if-nez p4, :cond_35

    iget-object p3, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzd(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Z

    move-result p3

    if-eqz p3, :cond_35

    iget-object p3, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zze(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    monitor-exit p1

    return-void

    :goto_37
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_20

    throw p2
.end method

.method protected final sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
