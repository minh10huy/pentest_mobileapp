.class Lcom/google/android/gms/common/zzg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static final zzbk:Lcom/google/android/gms/common/zzg;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field final zzbl:Z

.field private final zzbm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/zzg;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/common/zzg;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/common/zzg;->zzbk:Lcom/google/android/gms/common/zzg;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/zzg;->zzbl:Z

    iput-object p2, p0, Lcom/google/android/gms/common/zzg;->zzbm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/zzg;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;ZZ)Lcom/google/android/gms/common/zzg;
    .registers 11

    new-instance v6, Lcom/google/android/gms/common/zzi;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/zzi;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;ZZLcom/google/android/gms/common/zzh;)V

    return-object v6
.end method

.method static zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzg;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/common/zzg;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/zzg;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static zze(Ljava/lang/String;)Lcom/google/android/gms/common/zzg;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/common/zzg;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/zzg;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static zzg()Lcom/google/android/gms/common/zzg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/zzg;->zzbk:Lcom/google/android/gms/common/zzg;

    return-object v0
.end method


# virtual methods
.method getErrorMessage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/zzg;->zzbm:Ljava/lang/String;

    return-object v0
.end method

.method final zzh()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzg;->zzbl:Z

    if-nez v0, :cond_35

    const-string v0, "GoogleCertificatesRslt: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzg;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_23
    iget-object v1, p0, Lcom/google/android/gms/common/zzg;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/SecurityException;

    iget-object v2, p0, Lcom/google/android/gms/common/zzg;->cause:Ljava/lang/Throwable;

    invoke-direct {v1, v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    return-void
.end method

.method final zzi()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzg;->zzbl:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/common/zzg;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_14

    const-string v0, "GoogleCertificatesRslt"

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzg;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/zzg;->cause:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_14
    const-string v0, "GoogleCertificatesRslt"

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzg;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method
