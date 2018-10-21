.class public abstract Landroid/support/v4/media/session/a$a;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/support/v4/media/session/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/a$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/a$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Landroid/support/v4/media/session/a;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/v4/media/session/a;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/support/v4/media/session/a;

    return-object v0

    :cond_13
    new-instance v0, Landroid/support/v4/media/session/a$a$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_ff

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_106

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_10
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/media/session/a$a;->b()V

    return v1

    :pswitch_19
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/a$a;->b(I)V

    return v1

    :pswitch_26
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_32

    const/4 v0, 0x1

    :cond_32
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/a$a;->b(Z)V

    return v1

    :pswitch_36
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_42

    const/4 v0, 0x1

    :cond_42
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/a$a;->a(Z)V

    return v1

    :pswitch_46
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/a$a;->a(I)V

    return v1

    :pswitch_53
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_67

    sget-object p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    :cond_67
    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/a$a;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return v1

    :pswitch_6b
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7f

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    :cond_7f
    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/a$a;->a(Landroid/os/Bundle;)V

    return v1

    :pswitch_83
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_97

    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    :cond_97
    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/a$a;->a(Ljava/lang/CharSequence;)V

    return v1

    :pswitch_9b
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/a$a;->a(Ljava/util/List;)V

    return v1

    :pswitch_aa
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_be

    sget-object p1, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;

    :cond_be
    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/a$a;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    return v1

    :pswitch_c2
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d6

    sget-object p1, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    :cond_d6
    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/a$a;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return v1

    :pswitch_da
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/media/session/a$a;->a()V

    return v1

    :pswitch_e3
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_fb

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    :cond_fb
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/media/session/a$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    :cond_ff
    const-string p1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_e3
        :pswitch_da
        :pswitch_c2
        :pswitch_aa
        :pswitch_9b
        :pswitch_83
        :pswitch_6b
        :pswitch_53
        :pswitch_46
        :pswitch_36
        :pswitch_26
        :pswitch_19
        :pswitch_10
    .end packed-switch
.end method
