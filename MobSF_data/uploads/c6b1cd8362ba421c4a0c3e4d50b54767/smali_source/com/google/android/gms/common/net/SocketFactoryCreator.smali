.class public Lcom/google/android/gms/common/net/SocketFactoryCreator;
.super Lcom/google/android/gms/dynamic/RemoteCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lcom/google/android/gms/common/net/ISocketFactoryCreator;",
        ">;"
    }
.end annotation


# static fields
.field private static zzvr:Lcom/google/android/gms/common/net/SocketFactoryCreator;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.common.net.SocketFactoryCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/net/SocketFactoryCreator;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/net/SocketFactoryCreator;->zzvr:Lcom/google/android/gms/common/net/SocketFactoryCreator;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/common/net/SocketFactoryCreator;

    invoke-direct {v0}, Lcom/google/android/gms/common/net/SocketFactoryCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/net/SocketFactoryCreator;->zzvr:Lcom/google/android/gms/common/net/SocketFactoryCreator;

    :cond_b
    sget-object v0, Lcom/google/android/gms/common/net/SocketFactoryCreator;->zzvr:Lcom/google/android/gms/common/net/SocketFactoryCreator;

    return-object v0
.end method


# virtual methods
.method protected getRemoteCreator(Landroid/os/IBinder;)Lcom/google/android/gms/common/net/ISocketFactoryCreator;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/common/net/ISocketFactoryCreator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/net/ISocketFactoryCreator;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/net/SocketFactoryCreator;->getRemoteCreator(Landroid/os/IBinder;)Lcom/google/android/gms/common/net/ISocketFactoryCreator;

    move-result-object p1

    return-object p1
.end method

.method public makeSocketFactory(Landroid/content/Context;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Z)Ljavax/net/ssl/SSLSocketFactory;
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/net/ISocketFactoryCreator;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/net/ISocketFactoryCreator;->newSocketFactory(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Z)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public makeSocketFactoryWithCacheDir(Landroid/content/Context;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/net/ISocketFactoryCreator;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/net/ISocketFactoryCreator;->newSocketFactoryWithCacheDir(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
