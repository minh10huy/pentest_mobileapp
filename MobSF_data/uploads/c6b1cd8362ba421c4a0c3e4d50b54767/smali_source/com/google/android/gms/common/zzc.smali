.class abstract Lcom/google/android/gms/common/zzc;
.super Lcom/google/android/gms/common/GoogleCertificates$CertData;


# static fields
.field private static final zzbf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private zzbe:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/common/zzc;->zzbf:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GoogleCertificates$CertData;-><init>([B)V

    sget-object p1, Lcom/google/android/gms/common/zzc;->zzbf:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/gms/common/zzc;->zzbe:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method final getBytes()[B
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/zzc;->zzbe:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzc;->zzf()[B

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/common/zzc;->zzbe:Ljava/lang/ref/WeakReference;

    :cond_16
    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected abstract zzf()[B
.end method
