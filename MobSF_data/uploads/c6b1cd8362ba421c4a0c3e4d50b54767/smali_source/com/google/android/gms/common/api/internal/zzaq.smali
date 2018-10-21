.class final Lcom/google/android/gms/common/api/internal/zzaq;
.super Lcom/google/android/gms/signin/internal/BaseSignInCallbacks;


# instance fields
.field private final zzhw:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zzaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzaj;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/BaseSignInCallbacks;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzaq;->zzhw:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onSignInComplete(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 5
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzaq;->zzhw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzaj;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzaj;->zzd(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/common/api/internal/zzbd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzar;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/zzar;-><init>(Lcom/google/android/gms/common/api/internal/zzaq;Lcom/google/android/gms/common/api/internal/zzbc;Lcom/google/android/gms/common/api/internal/zzaj;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zzbd;->zza(Lcom/google/android/gms/common/api/internal/zzbe;)V

    return-void
.end method
