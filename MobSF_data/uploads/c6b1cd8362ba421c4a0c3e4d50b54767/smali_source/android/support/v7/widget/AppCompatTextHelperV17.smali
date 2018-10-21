.class Landroid/support/v7/widget/AppCompatTextHelperV17;
.super Landroid/support/v7/widget/AppCompatTextHelper;
.source "AppCompatTextHelperV17.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation


# instance fields
.field private mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableStartTint:Landroid/support/v7/widget/TintInfo;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .registers 4

    .line 0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_21

    .line 61
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelperV17;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelperV17;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    const/4 v1, 0x2

    .line 63
    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/AppCompatTextHelperV17;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    :cond_21
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 7

    .line 0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 40
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelperV17;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v1

    .line 43
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 46
    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 47
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 46
    invoke-static {v0, v1, p2}, Landroid/support/v7/widget/AppCompatTextHelperV17;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    .line 49
    :cond_28
    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 50
    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 51
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 50
    invoke-static {v0, v1, p2}, Landroid/support/v7/widget/AppCompatTextHelperV17;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    .line 53
    :cond_3c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
