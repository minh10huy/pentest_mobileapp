.class Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;
.super Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;
.source "WrappedDrawableApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WrappedDrawableApi21"

.field private static sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->findAndCacheIsProjectedDrawableMethod()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;-><init>(Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 49
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->findAndCacheIsProjectedDrawableMethod()V

    return-void
.end method

.method private findAndCacheIsProjectedDrawableMethod()V
    .registers 4

    .line 0
    sget-object v0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1a

    .line 161
    :try_start_4
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "isProjected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    const-string v1, "WrappedDrawableApi21"

    const-string v2, "Failed to retrieve Drawable#isProjected() method"

    .line 163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method protected isCompatTintEnabled()Z
    .registers 4

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_1b

    .line 114
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_19

    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_19

    instance-of v2, v0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_19

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1a

    :cond_19
    const/4 v1, 0x1

    :cond_1a
    return v1

    :cond_1b
    return v1
.end method

.method public isProjected()Z
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    sget-object v0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 130
    :try_start_9
    sget-object v0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    const-string v2, "WrappedDrawableApi21"

    const-string v3, "Error calling Drawable#isProjected() method"

    .line 132
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    return v1
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    new-instance v0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mState:Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;-><init>(Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public setHotspot(FF)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public setState([I)Z
    .registers 2
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 105
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public setTint(I)V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;->setTint(I)V

    goto :goto_f

    .line 87
    :cond_a
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_f
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_f

    .line 78
    :cond_a
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_f
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi19;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_f

    .line 96
    :cond_a
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_f
    return-void
.end method
