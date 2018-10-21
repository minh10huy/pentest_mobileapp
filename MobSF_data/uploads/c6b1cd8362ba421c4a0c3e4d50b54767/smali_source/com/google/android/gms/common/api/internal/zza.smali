.class public final Lcom/google/android/gms/common/api/internal/zza;
.super Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/zza$zza;
    }
.end annotation


# instance fields
.field private final zzds:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zza$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zza$zza;->zzb(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zza;-><init>(Lcom/google/android/gms/common/api/internal/zza$zza;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zza$zza;)V
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zza;->zzds:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onStopCallOnce(Ljava/lang/Runnable;)Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zza;->zzds:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zza$zza;

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The target activity has already been GC\'d"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zza$zza;->zza(Lcom/google/android/gms/common/api/internal/zza$zza;Ljava/lang/Runnable;)V

    return-object p0
.end method
