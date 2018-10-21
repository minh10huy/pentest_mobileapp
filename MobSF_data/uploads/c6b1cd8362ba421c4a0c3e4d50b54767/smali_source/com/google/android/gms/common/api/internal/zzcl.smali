.class final Lcom/google/android/gms/common/api/internal/zzcl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcn;


# instance fields
.field private final synthetic zzmq:Lcom/google/android/gms/common/api/internal/zzck;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzck;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcl;->zzmq:Lcom/google/android/gms/common/api/internal/zzck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcl;->zzmq:Lcom/google/android/gms/common/api/internal/zzck;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzck;->zzmo:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
