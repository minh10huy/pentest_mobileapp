.class final Lcom/google/android/gms/common/api/internal/zzbb;
.super Lcom/google/android/gms/common/api/internal/GooglePlayServicesUpdatedReceiver$Callback;


# instance fields
.field private zziy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zzav;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzav;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/GooglePlayServicesUpdatedReceiver$Callback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbb;->zziy:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zzv()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbb;->zziy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzav;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzav;->zza(Lcom/google/android/gms/common/api/internal/zzav;)V

    return-void
.end method
