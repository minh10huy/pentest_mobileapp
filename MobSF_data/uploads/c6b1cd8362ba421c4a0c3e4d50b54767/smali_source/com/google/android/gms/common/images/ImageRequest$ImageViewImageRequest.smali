.class public final Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;
.super Lcom/google/android/gms/common/images/ImageRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageViewImageRequest"
.end annotation


# instance fields
.field private zzpo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/ImageRequest;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;->zzpo:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/ImageRequest;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;->zzpo:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;->zzpo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;->zzpo:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_27

    if-eqz v2, :cond_27

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    :cond_27
    return v1
.end method

.method public final hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final loadImage(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;->zzpo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_67

    const/4 v1, 0x0

    if-nez p3, :cond_11

    if-nez p4, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_27

    instance-of v3, v0, Lcom/google/android/gms/common/images/internal/LoadingImageView;

    if-eqz v3, :cond_27

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/common/images/internal/LoadingImageView;

    invoke-virtual {v3}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->getLoadedNoDataPlaceholderResId()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;->mNoDataPlaceholderResId:I

    if-eqz v4, :cond_27

    iget v4, p0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;->mNoDataPlaceholderResId:I

    if-eq v3, v4, :cond_67

    :cond_27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/images/ImageRequest;->shouldCrossFade(ZZ)Z

    move-result p2

    iget-boolean p3, p0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;->mUseNewDrawable:Z

    if-eqz p3, :cond_39

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_39
    if-eqz p2, :cond_43

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/common/images/ImageRequest;->createTransitionDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;

    move-result-object p1

    :cond_43
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p3, v0, Lcom/google/android/gms/common/images/internal/LoadingImageView;

    if-eqz p3, :cond_5e

    check-cast v0, Lcom/google/android/gms/common/images/internal/LoadingImageView;

    if-eqz p4, :cond_53

    iget-object p3, p0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;->zzpk:Lcom/google/android/gms/common/images/ImageRequest$zza;

    iget-object p3, p3, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    goto :goto_54

    :cond_53
    const/4 p3, 0x0

    :goto_54
    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->setLoadedUri(Landroid/net/Uri;)V

    if-eqz v2, :cond_5b

    iget v1, p0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;->mNoDataPlaceholderResId:I

    :cond_5b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->setLoadedNoDataPlaceholderResId(I)V

    :cond_5e
    if-eqz p2, :cond_67

    check-cast p1, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->startTransition(I)V

    :cond_67
    return-void
.end method
