.class final Lcom/google/android/gms/common/api/internal/zzam;
.super Lcom/google/android/gms/common/api/internal/zzat;


# instance fields
.field final synthetic zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

.field private final zzhx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Lcom/google/android/gms/common/api/internal/zzal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzaj;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Lcom/google/android/gms/common/api/internal/zzal;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zzat;-><init>(Lcom/google/android/gms/common/api/internal/zzaj;Lcom/google/android/gms/common/api/internal/zzak;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhx:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzaq()V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzb(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhx:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v5

    if-eqz v5, :cond_43

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhx:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/zzal;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zzal;->zza(Lcom/google/android/gms/common/api/internal/zzal;)Z

    move-result v5

    if-nez v5, :cond_43

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_43
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_47
    const/4 v3, -0x1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6c

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_55
    if-ge v5, v1, :cond_88

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zzaj;->zza(Lcom/google/android/gms/common/api/internal/zzaj;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->getClientAvailability(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v3

    if-nez v3, :cond_55

    goto :goto_88

    :cond_6c
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_72
    if-ge v5, v2, :cond_88

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zzaj;->zza(Lcom/google/android/gms/common/api/internal/zzaj;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->getClientAvailability(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v3

    if-eqz v3, :cond_72

    :cond_88
    :goto_88
    if-eqz v3, :cond_a1

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzd(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/common/api/internal/zzbd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzan;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/gms/common/api/internal/zzan;-><init>(Lcom/google/android/gms/common/api/internal/zzam;Lcom/google/android/gms/common/api/internal/zzbc;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zzbd;->zza(Lcom/google/android/gms/common/api/internal/zzbe;)V

    return-void

    :cond_a1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzaj;->zze(Lcom/google/android/gms/common/api/internal/zzaj;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzf(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/signin/SignInClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/signin/SignInClient;->connect()V

    :cond_b2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhx:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v4

    if-eqz v4, :cond_f3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zzaj;->zza(Lcom/google/android/gms/common/api/internal/zzaj;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->getClientAvailability(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v4

    if-eqz v4, :cond_f3

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzaj;->zzd(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/common/api/internal/zzbd;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/common/api/internal/zzao;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzam;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-direct {v4, p0, v5, v3}, Lcom/google/android/gms/common/api/internal/zzao;-><init>(Lcom/google/android/gms/common/api/internal/zzam;Lcom/google/android/gms/common/api/internal/zzbc;Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zzbd;->zza(Lcom/google/android/gms/common/api/internal/zzbe;)V

    goto :goto_bc

    :cond_f3
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    goto :goto_bc

    :cond_f7
    return-void
.end method
