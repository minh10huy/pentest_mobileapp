.class abstract Lcom/google/android/gms/common/internal/BaseGmsClient$zza;
.super Lcom/google/android/gms/common/internal/BaseGmsClient$CallbackProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/BaseGmsClient<",
        "TT;>.CallbackProxy<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final resolution:Landroid/os/Bundle;

.field public final statusCode:I

.field private final synthetic zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient$CallbackProxy;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->resolution:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected deliverCallback(Ljava/lang/Boolean;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    return-void

    :cond_a
    iget p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->statusCode:I

    if-eqz p1, :cond_3e

    const/16 v2, 0xa

    if-eq p1, v2, :cond_31

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->resolution:Landroid/os/Bundle;

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->resolution:Landroid/os/Bundle;

    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    :cond_26
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    iget v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->statusCode:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->handleServiceFailure(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_31
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->handleServiceSuccess()Z

    move-result p1

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->handleServiceFailure(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_53
    return-void
.end method

.method protected bridge synthetic deliverCallback(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->deliverCallback(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected abstract handleServiceFailure(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method protected abstract handleServiceSuccess()Z
.end method

.method protected onDeliverCallbackFailed()V
    .registers 1

    return-void
.end method
