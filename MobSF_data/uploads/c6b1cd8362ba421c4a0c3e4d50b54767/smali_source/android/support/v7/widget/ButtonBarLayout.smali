.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 50
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getNextVisibleChildIndex(I)I
    .registers 4

    .line 0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    :goto_4
    if-ge p1, v0, :cond_14

    .line 140
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    return p1

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method private isStacked()Z
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private setStacked(Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    if-eqz p1, :cond_7

    const/4 v0, 0x5

    goto :goto_9

    :cond_7
    const/16 v0, 0x50

    .line 154
    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 156
    sget v0, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_19

    const/16 p1, 0x8

    goto :goto_1a

    :cond_19
    const/4 p1, 0x4

    .line 158
    :goto_1a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_23
    if-ltz p1, :cond_2f

    .line 165
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_23

    :cond_2f
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .registers 3

    .line 0
    iget v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 69
    iget-boolean v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 70
    iget v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_16

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 72
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 75
    :cond_16
    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 84
    :cond_18
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v4, 0x40000000

    if-ne v1, v4, :cond_2f

    const/high16 v1, -0x80000000

    .line 85
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x1

    goto :goto_31

    :cond_2f
    move v0, p1

    const/4 v1, 0x0

    .line 93
    :goto_31
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 95
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v0, :cond_52

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v0

    if-nez v0, :cond_52

    .line 98
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    const/high16 v4, 0x1000000

    if-ne v0, v4, :cond_4b

    const/4 v0, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    if-eqz v0, :cond_52

    .line 103
    invoke-direct {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    const/4 v1, 0x1

    :cond_52
    if-eqz v1, :cond_57

    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 116
    :cond_57
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result p1

    if-ltz p1, :cond_a5

    .line 118
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p2

    add-int/2addr v1, v2

    .line 122
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result p2

    if-eqz p2, :cond_9f

    add-int/2addr p1, v3

    .line 123
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result p1

    if-ltz p1, :cond_9d

    .line 125
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    const/high16 p2, 0x41800000

    .line 126
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p2

    float-to-int p2, v0

    add-int/2addr p1, p2

    add-int/2addr v1, p1

    :cond_9d
    move v2, v1

    goto :goto_a5

    .line 129
    :cond_9f
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result p1

    add-int v2, v1, p1

    .line 133
    :cond_a5
    :goto_a5
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    if-eq p1, v2, :cond_ae

    .line 134
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->setMinimumHeight(I)V

    :cond_ae
    return-void
.end method

.method public setAllowStacking(Z)V
    .registers 3

    .line 0
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_18

    .line 57
    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 58
    iget-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez p1, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    const/4 p1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 61
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    :cond_18
    return-void
.end method
