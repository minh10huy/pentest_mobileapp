.class public final Lcom/google/android/gms/common/api/internal/zzag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzbc;


# instance fields
.field private final zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

.field private zzhg:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzbd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhg:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzag;)Lcom/google/android/gms/common/api/internal/zzbd;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    return-object p0
.end method


# virtual methods
.method public final begin()V
    .registers 1

    return-void
.end method

.method public final connect()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhg:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhg:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzai;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/zzai;-><init>(Lcom/google/android/gms/common/api/internal/zzag;Lcom/google/android/gms/common/api/internal/zzbc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzbd;->zza(Lcom/google/android/gms/common/api/internal/zzbe;)V

    :cond_11
    return-void
.end method

.method public final disconnect()Z
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhg:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbd;->zzfq:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzav;->zzba()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhg:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbd;->zzfq:Lcom/google/android/gms/common/api/internal/zzav;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzav;->zziq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zzch;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zzch;->zzcc()V

    goto :goto_1d

    :cond_2d
    return v1

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzbd;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zzag;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbd;->zzfq:Lcom/google/android/gms/common/api/internal/zzav;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzav;->zzir:Lcom/google/android/gms/common/api/internal/zzck;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzck;->zzb(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbd;->zzfq:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzav;->zzil:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$Client;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzbd;->zzjb:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_3d
    instance-of v1, v0, Lcom/google/android/gms/common/internal/SimpleClientAdapter;

    if-eqz v1, :cond_47

    check-cast v0, Lcom/google/android/gms/common/internal/SimpleClientAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/SimpleClientAdapter;->getClient()Lcom/google/android/gms/common/api/Api$SimpleClient;

    move-result-object v0

    :cond_47
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->run(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    :try_end_4a
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_4a} :catch_4b

    return-object p1

    :catch_4b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzah;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/zzah;-><init>(Lcom/google/android/gms/common/api/internal/zzag;Lcom/google/android/gms/common/api/internal/zzbc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzbd;->zza(Lcom/google/android/gms/common/api/internal/zzbe;)V

    return-object p1
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzbd;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbd;->zzjf:Lcom/google/android/gms/common/api/internal/zzbq;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhg:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zzbq;->zzb(IZ)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    return-void
.end method

.method final zzap()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhg:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhg:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzag;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbd;->zzfq:Lcom/google/android/gms/common/api/internal/zzav;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzav;->zzir:Lcom/google/android/gms/common/api/internal/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzck;->release()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzag;->disconnect()Z

    :cond_13
    return-void
.end method
