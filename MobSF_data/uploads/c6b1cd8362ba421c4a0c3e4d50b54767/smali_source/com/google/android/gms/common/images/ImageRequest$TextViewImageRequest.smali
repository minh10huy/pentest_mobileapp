.class public final Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;
.super Lcom/google/android/gms/common/images/ImageRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextViewImageRequest"
.end annotation


# static fields
.field public static final POSITION_BOTTOM:I = 0x3

.field public static final POSITION_END:I = 0x2

.field public static final POSITION_START:I = 0x0

.field public static final POSITION_TOP:I = 0x1


# instance fields
.field private zzpq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private zzpr:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;II)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/common/images/ImageRequest;-><init>(Landroid/net/Uri;I)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpr:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    const/4 p3, 0x1

    if-eqz p2, :cond_16

    if-eq p2, p3, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_16

    const/4 v0, 0x3

    if-eq p2, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 p3, 0x0

    :goto_17
    const/16 v0, 0x1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid position: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Asserts;->checkState(ZLjava/lang/Object;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpq:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpr:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;ILandroid/net/Uri;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/common/images/ImageRequest;-><init>(Landroid/net/Uri;I)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpr:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    const/4 p3, 0x1

    if-eqz p2, :cond_16

    if-eq p2, p3, :cond_16

    const/4 v1, 0x2

    if-eq p2, v1, :cond_16

    const/4 v1, 0x3

    if-eq p2, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 p3, 0x0

    :goto_17
    const/16 v0, 0x1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid position: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Asserts;->checkState(ZLjava/lang/Object;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpq:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpr:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_39

    if-eqz v2, :cond_39

    invoke-static {v3, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget p1, p1, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpr:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    return v0

    :cond_39
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final loadImage(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 10

    iget-object p4, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpq:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    if-eqz p4, :cond_59

    iget v0, p0, Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;->zzpr:I

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/images/ImageRequest;->shouldCrossFade(ZZ)Z

    move-result p2

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-virtual {p4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1f

    :cond_1b
    invoke-virtual {p4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_1f
    aget-object v1, p3, v0

    if-eqz p2, :cond_27

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/common/images/ImageRequest;->createTransitionDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;

    move-result-object p1

    :cond_27
    if-nez v0, :cond_2b

    move-object v1, p1

    goto :goto_2e

    :cond_2b
    const/4 v1, 0x0

    aget-object v1, p3, v1

    :goto_2e
    const/4 v2, 0x1

    if-ne v0, v2, :cond_33

    move-object v2, p1

    goto :goto_35

    :cond_33
    aget-object v2, p3, v2

    :goto_35
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3a

    move-object v3, p1

    goto :goto_3c

    :cond_3a
    aget-object v3, p3, v3

    :goto_3c
    const/4 v4, 0x3

    if-ne v0, v4, :cond_41

    move-object p3, p1

    goto :goto_43

    :cond_41
    aget-object p3, p3, v4

    :goto_43
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p4, v1, v2, v3, p3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_50

    :cond_4d
    invoke-virtual {p4, v1, v2, v3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_50
    if-eqz p2, :cond_59

    check-cast p1, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->startTransition(I)V

    :cond_59
    return-void
.end method
