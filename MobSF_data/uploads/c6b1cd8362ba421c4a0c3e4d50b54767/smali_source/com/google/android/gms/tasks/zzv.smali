.class final Lcom/google/android/gms/tasks/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$callable:Ljava/util/concurrent/Callable;

.field private final synthetic zzagj:Lcom/google/android/gms/tasks/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzu;Ljava/util/concurrent/Callable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzv;->zzagj:Lcom/google/android/gms/tasks/zzu;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzv;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzv;->zzagj:Lcom/google/android/gms/tasks/zzu;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzv;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzu;->setResult(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzv;->zzagj:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    return-void
.end method
