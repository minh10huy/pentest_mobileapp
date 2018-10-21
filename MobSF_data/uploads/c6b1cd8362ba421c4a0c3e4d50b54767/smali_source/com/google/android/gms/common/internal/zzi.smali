.class final Lcom/google/android/gms/common/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mState:I

.field private zzry:Landroid/os/IBinder;

.field private final zztv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private zztw:Z

.field private final zztx:Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;

.field private final synthetic zzty:Lcom/google/android/gms/common/internal/zzh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzh;Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzi;->zztx:Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->zztv:Ljava/util/Set;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzi;->mState:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzi;)Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzi;->zztx:Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;

    return-object p0
.end method


# virtual methods
.method public final getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzry:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final getState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/zzi;->mState:I

    return v0
.end method

.method public final isBound()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzi;->zztw:Z

    return v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzh;->zza(Lcom/google/android/gms/common/internal/zzh;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzh;->zzb(Lcom/google/android/gms/common/internal/zzh;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzi;->zztx:Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzi;->zzry:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzi;->zztv:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_1d

    :cond_2d
    iput v3, p0, Lcom/google/android/gms/common/internal/zzi;->mState:I

    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzh;->zza(Lcom/google/android/gms/common/internal/zzh;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzh;->zzb(Lcom/google/android/gms/common/internal/zzh;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzi;->zztx:Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzi;->zzry:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzi;->zztv:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_1e

    :cond_2e
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzi;->mState:I

    monitor-exit v0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public final zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzh;->zzd(Lcom/google/android/gms/common/internal/zzh;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzh;->zzc(Lcom/google/android/gms/common/internal/zzh;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzi;->zztx:Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzh;->zzc(Lcom/google/android/gms/common/internal/zzh;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;->getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->logConnectService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzi;->zztv:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Landroid/content/ServiceConnection;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zztv:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 4

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzh;->zzd(Lcom/google/android/gms/common/internal/zzh;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzh;->zzc(Lcom/google/android/gms/common/internal/zzh;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/stats/ConnectionTracker;->logDisconnectService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzi;->zztv:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzcv()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zztv:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zzj(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzi;->mState:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzh;->zzd(Lcom/google/android/gms/common/internal/zzh;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzh;->zzc(Lcom/google/android/gms/common/internal/zzh;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zztx:Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzh;->zzc(Lcom/google/android/gms/common/internal/zzh;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;->getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zztx:Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;->getBindFlags()I

    move-result v6

    move-object v3, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzi;->zztw:Z

    iget-boolean p1, p0, Lcom/google/android/gms/common/internal/zzi;->zztw:Z

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzh;->zzb(Lcom/google/android/gms/common/internal/zzh;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzi;->zztx:Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzh;->zzb(Lcom/google/android/gms/common/internal/zzh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzh;->zze(Lcom/google/android/gms/common/internal/zzh;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4a
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzi;->mState:I

    :try_start_4d
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzh;->zzd(Lcom/google/android/gms/common/internal/zzh;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzh;->zzc(Lcom/google/android/gms/common/internal/zzh;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_5c} :catch_5c

    :catch_5c
    return-void
.end method

.method public final zzk(Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzh;->zzb(Lcom/google/android/gms/common/internal/zzh;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zztx:Lcom/google/android/gms/common/internal/GmsClientSupervisor$ConnectionStatusConfig;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzh;->zzd(Lcom/google/android/gms/common/internal/zzh;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzty:Lcom/google/android/gms/common/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzh;->zzc(Lcom/google/android/gms/common/internal/zzh;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzi;->zztw:Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzi;->mState:I

    return-void
.end method
