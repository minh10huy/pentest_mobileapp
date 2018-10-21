.class public final Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;
.super Landroid/support/v4/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache$PostProcessedResource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache<",
        "Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache$PostProcessedResource;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method
