.class final Landroid/support/v4/provider/FontsContractCompat$2;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<",
        "Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    .registers 3

    .line 0
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;)V
    .registers 4

    if-nez p1, :cond_b

    .line 0
    iget-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 280
    goto :goto_22

    :cond_b
    iget v0, p1, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;->mResult:I

    .line 281
    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    iget-object p1, p1, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 283
    goto :goto_22

    :cond_19
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    iget p1, p1, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;->mResult:I

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    :goto_22
    return-void
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {p0, p1}, Landroid/support/v4/provider/FontsContractCompat$2;->onReply(Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;)V

    return-void
.end method
