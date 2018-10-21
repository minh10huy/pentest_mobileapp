.class public final Lcom/google/android/gms/common/internal/DowngradeableSafeParcel$DowngradeableSafeParcelHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DowngradeableSafeParcelHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtras(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Bundle;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzcs()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->getExtras(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Bundle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static getParcelable(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Parcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzcs()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->getParcelable(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Parcelable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static getParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Parcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzcs()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Parcelable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static putParcelable(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;Landroid/content/Context;Ljava/lang/Integer;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;Landroid/content/Context;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
