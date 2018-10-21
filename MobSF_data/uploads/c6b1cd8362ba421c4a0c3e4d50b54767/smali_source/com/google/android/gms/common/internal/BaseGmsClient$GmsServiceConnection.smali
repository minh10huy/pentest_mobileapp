.class public final Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GmsServiceConnection"
.end annotation


# instance fields
.field private final synthetic zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzrx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzrx:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    if-nez p2, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_25

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzrx:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostServiceBindingHandler(ILandroid/os/Bundle;I)V

    return-void

    :catchall_25
    move-exception p2

    :try_start_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_22

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzru:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsServiceConnection;->zzrx:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method
