.class final Lcom/google/android/gms/common/images/ImageManager$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzc"
.end annotation


# instance fields
.field private final synthetic zzpg:Lcom/google/android/gms/common/images/ImageManager;

.field private final zzpi:Lcom/google/android/gms/common/images/ImageRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/ImageRequest;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    const-string v0, "LoadImageRunnable must be executed on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzb(Lcom/google/android/gms/common/images/ImageRequest;)V

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    iget-object v0, v0, Lcom/google/android/gms/common/images/ImageRequest;->zzpk:Lcom/google/android/gms/common/images/ImageRequest$zza;

    iget-object v1, v0, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez v1, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/common/images/ImageRequest;->zza(Landroid/content/Context;Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;Z)V

    return-void

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/ImageRequest$zza;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/common/images/ImageRequest;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_54
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zzd(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_92

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v7, v3, v5

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v7, v3

    if-gez v1, :cond_87

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/common/images/ImageRequest;->zza(Landroid/content/Context;Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;Z)V

    return-void

    :cond_87
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zzd(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_92
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/images/ImageRequest;->zza(Landroid/content/Context;Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zze(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v1, :cond_c7

    new-instance v1, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v3, v0, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zze(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c7
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zza(Lcom/google/android/gms/common/images/ImageRequest;)V

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    instance-of v2, v2, Lcom/google/android/gms/common/images/ImageRequest$ListenerImageRequest;

    if-nez v2, :cond_dd

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpg:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zzc;->zzpi:Lcom/google/android/gms/common/images/ImageRequest;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_dd
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zzcm()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_e2
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zzcn()Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fa

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zzcn()Ljava/util/HashSet;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzco()V

    :cond_fa
    monitor-exit v2

    return-void

    :catchall_fc
    move-exception v0

    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_e2 .. :try_end_fe} :catchall_fc

    throw v0
.end method
