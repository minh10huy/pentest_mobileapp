.class final Lcom/google/android/gms/common/internal/zzc;
.super Lcom/google/android/gms/common/internal/DialogRedirect;


# instance fields
.field private final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field private final synthetic val$requestCode:I

.field private final synthetic zzsh:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/support/v4/app/Fragment;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzc;->zzsh:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzc;->val$fragment:Landroid/support/v4/app/Fragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzc;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DialogRedirect;-><init>()V

    return-void
.end method


# virtual methods
.method public final redirect()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzc;->zzsh:Landroid/content/Intent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzc;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzc;->zzsh:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzc;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_d
    return-void
.end method
