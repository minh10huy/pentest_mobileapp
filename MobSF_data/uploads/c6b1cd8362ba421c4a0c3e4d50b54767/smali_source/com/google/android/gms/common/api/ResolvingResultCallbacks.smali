.class public abstract Lcom/google/android/gms/common/api/ResolvingResultCallbacks;
.super Lcom/google/android/gms/common/api/ResultCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/ResultCallbacks<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final zzdn:I


# direct methods
.method protected constructor <init>(Landroid/app/Activity;I)V
    .registers 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ResultCallbacks;-><init>()V

    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->mActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->zzdn:I

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/common/api/Status;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->zzdn:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_6 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    const-string v0, "ResolvingResultCallback"

    const-string v1, "Failed to start resolution"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->onUnresolvableFailure(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->onUnresolvableFailure(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public abstract onSuccess(Lcom/google/android/gms/common/api/Result;)V
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public abstract onUnresolvableFailure(Lcom/google/android/gms/common/api/Status;)V
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
