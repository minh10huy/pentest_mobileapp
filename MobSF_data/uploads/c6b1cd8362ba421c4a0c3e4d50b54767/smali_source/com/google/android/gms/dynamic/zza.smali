.class final Lcom/google/android/gms/dynamic/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDelegateCreated(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {v0, p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zza(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Lcom/google/android/gms/dynamic/LifecycleDelegate;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    iget-object p1, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zza(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper$zza;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zzb(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper$zza;->zza(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    goto :goto_f

    :cond_25
    iget-object p1, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zza(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zza(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
