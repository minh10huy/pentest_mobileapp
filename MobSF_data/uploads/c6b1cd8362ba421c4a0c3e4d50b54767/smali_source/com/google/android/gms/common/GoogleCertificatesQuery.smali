.class public Lcom/google/android/gms/common/GoogleCertificatesQuery;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GoogleCertificatesQueryCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/GoogleCertificatesQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbh:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallingPackage"
        id = 0x1
    .end annotation
.end field

.field private final zzbi:Lcom/google/android/gms/common/GoogleCertificates$CertData;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallingCertificateBinder"
        id = 0x2
        type = "android.os.IBinder"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzbj:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAllowTestKeys"
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/GoogleCertificatesQueryCreator;

    invoke-direct {v0}, Lcom/google/android/gms/common/GoogleCertificatesQueryCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation

        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbh:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/common/GoogleCertificates$CertData;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbi:Lcom/google/android/gms/common/GoogleCertificates$CertData;

    iput-boolean p3, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbj:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;Z)V
    .registers 4
    .param p2    # Lcom/google/android/gms/common/GoogleCertificates$CertData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbh:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbi:Lcom/google/android/gms/common/GoogleCertificates$CertData;

    iput-boolean p3, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbj:Z

    return-void
.end method

.method private static zza(Landroid/os/IBinder;)Lcom/google/android/gms/common/GoogleCertificates$CertData;
    .registers 4
    .param p0    # Landroid/os/IBinder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ICertData$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/ICertData;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/common/internal/ICertData;->getBytesWrapped()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_26

    if-nez p0, :cond_10

    move-object p0, v0

    goto :goto_16

    :cond_10
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_16
    if-eqz p0, :cond_1e

    new-instance v0, Lcom/google/android/gms/common/zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzb;-><init>([B)V

    return-object v0

    :cond_1e
    const-string p0, "GoogleCertificatesQuery"

    const-string v1, "Could not unwrap certificate"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_26
    move-exception p0

    const-string v1, "GoogleCertificatesQuery"

    const-string v2, "Could not unwrap certificate"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public getAllowTestKeys()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbj:Z

    return v0
.end method

.method public getCallingCertificateBinder()Landroid/os/IBinder;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbi:Lcom/google/android/gms/common/GoogleCertificates$CertData;

    if-nez v0, :cond_d

    const-string v0, "GoogleCertificatesQuery"

    const-string v1, "certificate binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbi:Lcom/google/android/gms/common/GoogleCertificates$CertData;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/stable/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbh:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificate()Lcom/google/android/gms/common/GoogleCertificates$CertData;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/GoogleCertificatesQuery;->zzbi:Lcom/google/android/gms/common/GoogleCertificates$CertData;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/common/GoogleCertificatesQuery;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/GoogleCertificatesQuery;->getCallingCertificateBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/GoogleCertificatesQuery;->getAllowTestKeys()Z

    move-result v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
