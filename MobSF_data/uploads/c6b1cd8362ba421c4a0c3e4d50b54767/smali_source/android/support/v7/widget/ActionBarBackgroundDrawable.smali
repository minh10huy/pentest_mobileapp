.class Landroid/support/v7/widget/ActionBarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarBackgroundDrawable.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# instance fields
.field final mContainer:Landroid/support/v7/widget/ActionBarContainer;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionBarContainer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_14

    .line 37
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_34

    .line 38
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_34

    .line 41
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    .line 42
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    :cond_21
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_34

    .line 45
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
