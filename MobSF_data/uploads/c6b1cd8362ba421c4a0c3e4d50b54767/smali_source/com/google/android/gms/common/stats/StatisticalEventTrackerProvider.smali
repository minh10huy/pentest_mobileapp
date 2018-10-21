.class public Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;
    }
.end annotation


# static fields
.field private static zzyp:Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImpl()Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider;->zzyp:Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;

    return-object v0
.end method

.method public static setImpl(Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;)V
    .registers 1

    sput-object p0, Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider;->zzyp:Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;

    return-void
.end method
