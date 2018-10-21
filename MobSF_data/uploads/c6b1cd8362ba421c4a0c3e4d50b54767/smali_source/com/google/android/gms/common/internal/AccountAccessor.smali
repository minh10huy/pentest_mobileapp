.class public Lcom/google/android/gms/common/internal/AccountAccessor;
.super Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzqu:I

.field private zzs:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/AccountAccessor;->zzqu:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/AccountAccessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/AccountAccessor;->zzs:Landroid/accounts/Account;

    return-void
.end method

.method public static fromGoogleAccountName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/internal/AccountAccessor;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    goto :goto_10

    :cond_8
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_10
    new-instance v0, Lcom/google/android/gms/common/internal/AccountAccessor;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/AccountAccessor;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    return-object v0
.end method

.method public static getAccountBinderSafe(Lcom/google/android/gms/common/internal/IAccountAccessor;)Landroid/accounts/Account;
    .registers 4

    if-eqz p0, :cond_1f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/IAccountAccessor;->getAccount()Landroid/accounts/Account;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_10
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    goto :goto_1b

    :catch_10
    :try_start_10
    const-string p0, "AccountAccessor"

    const-string v2, "Remote account accessor probably died"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/common/internal/AccountAccessor;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/AccountAccessor;->zzs:Landroid/accounts/Account;

    check-cast p1, Lcom/google/android/gms/common/internal/AccountAccessor;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/AccountAccessor;->zzs:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/AccountAccessor;->zzqu:I

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/internal/AccountAccessor;->zzs:Landroid/accounts/Account;

    return-object v0

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/common/internal/AccountAccessor;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_18

    iput v0, p0, Lcom/google/android/gms/common/internal/AccountAccessor;->zzqu:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/AccountAccessor;->zzs:Landroid/accounts/Account;

    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
