.class public Lcom/google/android/gms/common/internal/service/BaseCommonServiceCallbacks;
.super Lcom/google/android/gms/common/internal/service/ICommonCallbacks$Stub;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/service/ICommonCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDefaultAccountCleared(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
