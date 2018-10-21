.class final Lcom/google/android/gms/common/api/internal/zzaw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;


# instance fields
.field private final synthetic zzit:Lcom/google/android/gms/common/api/internal/zzav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzav;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzaw;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConnectionHint()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzaw;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    return v0
.end method
