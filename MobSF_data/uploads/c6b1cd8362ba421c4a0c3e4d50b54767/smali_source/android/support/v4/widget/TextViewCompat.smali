.class public final Landroid/support/v4/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi27Impl;,
        Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;,
        Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi23Impl;,
        Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi18Impl;,
        Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi17Impl;,
        Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;,
        Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;,
        Landroid/support/v4/widget/TextViewCompat$AutoSizeTextType;
    }
.end annotation


# static fields
.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field static final IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastOMR1()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 541
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi27Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi27Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    goto :goto_5b

    .line 542
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1c

    .line 543
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    goto :goto_5b

    .line 544
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2a

    .line 545
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi23Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi23Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    goto :goto_5b

    .line 546
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_38

    .line 547
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi18Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi18Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    goto :goto_5b

    .line 548
    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_46

    .line 549
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi17Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi17Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    goto :goto_5b

    .line 550
    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_54

    .line 551
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    goto :goto_5b

    .line 553
    :cond_54
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    :goto_5b
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .registers 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->getAutoSizeMaxTextSize(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method public static getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .registers 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->getAutoSizeMinTextSize(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method public static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .registers 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->getAutoSizeStepGranularity(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method public static getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .registers 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I

    move-result-object p0

    return-object p0
.end method

.method public static getAutoSizeTextType(Landroid/widget/TextView;)I
    .registers 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->getAutoSizeTextType(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxLines(Landroid/widget/TextView;)I
    .registers 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->getMaxLines(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method public static getMinLines(Landroid/widget/TextView;)I
    .registers 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->getMinLines(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method public static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .registers 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    return-void
.end method

.method public static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .registers 4
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V

    return-void
.end method

.method public static setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .registers 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V

    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
    .registers 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .registers 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->setTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method
