.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final TRANSACTION_connectMLHD:I = 0x12

.field static final TRANSACTION_connectWifiDisplay:I = 0x7

.field static final TRANSACTION_createVirtualDisplay:I = 0xe

.field static final TRANSACTION_disconnectWifiDisplay:I = 0x8

.field static final TRANSACTION_forgetWifiDisplay:I = 0xa

.field static final TRANSACTION_getDisplayIds:I = 0x2

.field static final TRANSACTION_getDisplayInfo:I = 0x1

.field static final TRANSACTION_getWifiDisplayStatus:I = 0xd

.field static final TRANSACTION_pauseWifiDisplay:I = 0xb

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x11

.field static final TRANSACTION_renameWifiDisplay:I = 0x9

.field static final TRANSACTION_resizeVirtualDisplay:I = 0xf

.field static final TRANSACTION_resumeWifiDisplay:I = 0xc

.field static final TRANSACTION_setVirtualDisplaySurface:I = 0x10

.field static final TRANSACTION_startWifiDisplayScan:I = 0x4

.field static final TRANSACTION_stopWifiDisplayScan:I = 0x6

.field static final TRANSACTION_stopscanWifiDisplays:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/display/IDisplayManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v10

    .line 52
    .local v10, "_result":Landroid/view/DisplayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v10, :cond_0

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 64
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Landroid/view/DisplayInfo;
    :sswitch_2
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds()[I

    move-result-object v10

    .line 66
    .local v10, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    .end local v10    # "_result":[I
    :sswitch_3
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v1

    .line 75
    .local v1, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :sswitch_4
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopscanWifiDisplays()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :sswitch_6
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :sswitch_7
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 111
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 118
    :sswitch_9
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 129
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 138
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 145
    :sswitch_c
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 152
    :sswitch_d
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v10

    .line 154
    .local v10, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v10, :cond_1

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/hardware/display/WifiDisplayStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 166
    .end local v10    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :sswitch_e
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 170
    .local v1, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 172
    .local v2, "_arg1":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 180
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 182
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    .line 189
    .local v8, "_arg7":Landroid/view/Surface;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg8":I
    move-object v0, p0

    .line 190
    invoke-virtual/range {v0 .. v9}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I

    move-result v10

    .line 191
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 186
    .end local v8    # "_arg7":Landroid/view/Surface;
    .end local v9    # "_arg8":I
    .end local v10    # "_result":I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "_arg7":Landroid/view/Surface;
    goto :goto_3

    .line 197
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":Landroid/media/projection/IMediaProjection;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/view/Surface;
    :sswitch_f
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 201
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 206
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 212
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_10
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 216
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 222
    .local v2, "_arg1":Landroid/view/Surface;
    :goto_4
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 220
    .end local v2    # "_arg1":Landroid/view/Surface;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/view/Surface;
    goto :goto_4

    .line 228
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":Landroid/view/Surface;
    :sswitch_11
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 231
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 237
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :sswitch_12
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->connectMLHD()V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
