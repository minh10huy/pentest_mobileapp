.class public interface abstract Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatisticalEventTracker"
.end annotation


# virtual methods
.method public abstract getLogLevel(I)I
.end method

.method public abstract getOptions()Landroid/os/Bundle;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract registerEvent(Lcom/google/android/gms/common/stats/ConnectionEvent;)V
.end method

.method public abstract registerEvent(Lcom/google/android/gms/common/stats/StatsEvent;)V
.end method

.method public abstract registerEvent(Lcom/google/android/gms/common/stats/WakeLockEvent;)V
.end method
