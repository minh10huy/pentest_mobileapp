.class public final Lcom/google/android/gms/common/util/DeviceProperties;
.super Ljava/lang/Object;


# static fields
.field public static final FEATURE_AUTO:Ljava/lang/String; = "android.hardware.type.automotive"

.field public static final FEATURE_CHROME_OS:Ljava/lang/String; = "org.chromium.arc"

.field public static final FEATURE_EMBEDDED:Ljava/lang/String; = "android.hardware.type.embedded"

.field public static final FEATURE_IOT:Ljava/lang/String; = "android.hardware.type.iot"

.field public static final FEATURE_LATCHSKY:Ljava/lang/String; = "cn.google.services"

.field public static final FEATURE_PIXEL:Ljava/lang/String; = "com.google.android.feature.PIXEL_EXPERIENCE"

.field public static final FEATURE_SIDEWINDER:Ljava/lang/String; = "cn.google"

.field public static final FEATURE_TV_1:Ljava/lang/String; = "com.google.android.tv"

.field public static final FEATURE_TV_2:Ljava/lang/String; = "android.hardware.type.television"

.field public static final FEATURE_TV_3:Ljava/lang/String; = "android.software.leanback"

.field private static zzzl:Ljava/lang/Boolean;

.field private static zzzm:Ljava/lang/Boolean;

.field private static zzzn:Ljava/lang/Boolean;

.field private static zzzo:Ljava/lang/Boolean;

.field private static zzzp:Ljava/lang/Boolean;

.field private static zzzq:Ljava/lang/Boolean;

.field private static zzzr:Ljava/lang/Boolean;

.field private static zzzs:Ljava/lang/Boolean;

.field private static zzzt:Ljava/lang/Boolean;

.field private static zzzu:Ljava/lang/Boolean;

.field private static zzzv:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAuto(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzt:Ljava/lang/Boolean;

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzt:Ljava/lang/Boolean;

    :cond_1f
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzt:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isChromeOsDevice(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzs:Ljava/lang/Boolean;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "org.chromium.arc"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzs:Ljava/lang/Boolean;

    :cond_14
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzs:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isIoT(Landroid/content/Context;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzr:Ljava/lang/Boolean;

    if-nez v0, :cond_26

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.iot"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzr:Ljava/lang/Boolean;

    :cond_26
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzr:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isLatchsky(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzp:Ljava/lang/Boolean;

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google.services"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzp:Ljava/lang/Boolean;

    :cond_1f
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzp:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isLowRamOrPreKitKat(Landroid/content/Context;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzq:Ljava/lang/Boolean;

    if-nez v0, :cond_20

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzq:Ljava/lang/Boolean;

    :cond_20
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzq:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPixelDevice(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzv:Ljava/lang/Boolean;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.feature.PIXEL_EXPERIENCE"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzv:Ljava/lang/Boolean;

    :cond_14
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzv:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSidewinder(Landroid/content/Context;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzo:Ljava/lang/Boolean;

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzo:Ljava/lang/Boolean;

    :cond_1f
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzo:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isTablet(Landroid/content/res/Resources;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzzl:Ljava/lang/Boolean;

    if-nez v1, :cond_45

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-nez v1, :cond_3e

    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzzm:Ljava/lang/Boolean;

    if-nez v1, :cond_36

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-gt v1, v2, :cond_2f

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt p0, v1, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzm:Ljava/lang/Boolean;

    :cond_36
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzm:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3f

    :cond_3e
    const/4 v0, 0x1

    :cond_3f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzl:Ljava/lang/Boolean;

    :cond_45
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzl:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isTv(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzu:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.tv"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "android.hardware.type.television"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzu:Ljava/lang/Boolean;

    :cond_2a
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzu:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isUserBuild()Z
    .registers 2

    sget-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->sIsTestMode:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->sTestIsUserBuild:Z

    return v0

    :cond_7
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWearable(Landroid/content/Context;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzn:Ljava/lang/Boolean;

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzn:Ljava/lang/Boolean;

    :cond_1f
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzn:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isWearableWithoutPlayStore(Landroid/content/Context;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static resetForTest()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzm:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzl:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzn:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzo:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzp:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzq:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzr:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzs:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzt:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzu:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzv:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsAutoForTest(Z)V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzt:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsIoTForTest(Z)V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzr:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsLatchskyForTest(Z)V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzp:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsLowRamForTest(Z)V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzq:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsPixelForTest(Z)V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzv:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsSideWinderForTest(Z)V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzo:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsTvForTest(Z)V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzu:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsWearableForTest(Z)V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzzn:Ljava/lang/Boolean;

    return-void
.end method
