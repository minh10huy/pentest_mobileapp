.class public final Landroid/support/v4/app/ServiceCompat;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# static fields
.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .registers 4
    .param p0    # Landroid/app/Service;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    goto :goto_13

    :cond_a
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 100
    :goto_10
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    :goto_13
    return-void
.end method
