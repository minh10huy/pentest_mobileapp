.class public Lcom/google/android/gms/common/sqlite/CursorWrapper;
.super Landroid/database/CursorWrapper;

# interfaces
.implements Landroid/database/CrossProcessCursor;


# instance fields
.field private zzxu:Landroid/database/AbstractWindowedCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    instance-of v1, p1, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_15

    check-cast p1, Landroid/database/CursorWrapper;

    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    instance-of v0, p1, Landroid/database/AbstractWindowedCursor;

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type: "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    :cond_34
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_39
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    check-cast p1, Landroid/database/AbstractWindowedCursor;

    iput-object p1, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v0, p1, p2}, Landroid/database/AbstractWindowedCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedCursor()Landroid/database/AbstractWindowedCursor;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    return-object v0
.end method

.method public bridge synthetic getWrappedCursor()Landroid/database/Cursor;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWrappedCursor()Landroid/database/AbstractWindowedCursor;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v0, p1, p2}, Landroid/database/AbstractWindowedCursor;->onMove(II)Z

    move-result p1

    return p1
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    return-void
.end method
