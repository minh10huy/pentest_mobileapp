.class final Lcom/google/android/gms/common/api/internal/zzba;
.super Landroid/os/Handler;


# instance fields
.field private final synthetic zzit:Lcom/google/android/gms/common/api/internal/zzav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzav;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzba;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    const-string v0, "GoogleApiClientImpl"

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_20
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzba;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzav;->zza(Lcom/google/android/gms/common/api/internal/zzav;)V

    return-void

    :pswitch_26
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzba;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzav;->zzb(Lcom/google/android/gms/common/api/internal/zzav;)V

    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_20
    .end packed-switch
.end method
