.class public Lcom/google/android/gms/common/api/internal/zzad;
.super Lcom/google/android/gms/common/api/internal/zzk;


# instance fields
.field private zzcq:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field private final zzhb:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet<",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzk;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    new-instance p1, Landroid/support/v4/util/ArraySet;

    invoke-direct {p1}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzad;->zzhb:Landroid/support/v4/util/ArraySet;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzad;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v0, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zza(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/internal/zzh;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager;",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zzad;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object p0

    const-string v0, "ConnectionlessLifecycleHelper"

    const-class v1, Lcom/google/android/gms/common/api/internal/zzad;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzad;

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzad;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    :cond_15
    iput-object p1, v0, Lcom/google/android/gms/common/api/internal/zzad;->zzcq:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    const-string p0, "ApiKey cannot be null"

    invoke-static {p2, p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zzad;->zzhb:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zza(Lcom/google/android/gms/common/api/internal/zzad;)V

    return-void
.end method

.method private final zzan()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzad;->zzhb:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzad;->zzcq:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zza(Lcom/google/android/gms/common/api/internal/zzad;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public final onResume()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zzk;->onResume()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzad;->zzan()V

    return-void
.end method

.method public final onStart()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zzk;->onStart()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzad;->zzan()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zzk;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzad;->zzcq:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzb(Lcom/google/android/gms/common/api/internal/zzad;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzad;->zzcq:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method final zzam()Landroid/support/v4/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArraySet<",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzad;->zzhb:Landroid/support/v4/util/ArraySet;

    return-object v0
.end method

.method protected final zzr()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzad;->zzcq:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzr()V

    return-void
.end method
