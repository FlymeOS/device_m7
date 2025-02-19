.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireHtcCpuCtrl:I = 0x17

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final TRANSACTION_crash:I = 0x11

.field static final TRANSACTION_customizeScreenOffDelay_Always:I = 0x1d

.field static final TRANSACTION_customizeScreenOffDelay_Once:I = 0x1c

.field static final TRANSACTION_customizeScreenOffDelay_System:I = 0x1e

.field static final TRANSACTION_fetchCurrentBrightnessValue:I = 0x1f

.field static final TRANSACTION_getNativeSetAutoSuspendDone:I = 0x24

.field static final TRANSACTION_getProximitySensorActive:I = 0x1b

.field static final TRANSACTION_getProximityWakeLockIsHeld:I = 0x28

.field static final TRANSACTION_goToSleep:I = 0xa

.field static final TRANSACTION_goToSleepForShutdown:I = 0x23

.field static final TRANSACTION_informEndCall:I = 0x29

.field static final TRANSACTION_informOOBEStatusChange:I = 0x27

.field static final TRANSACTION_isActualScreenOn:I = 0x25

.field static final TRANSACTION_isInteractive:I = 0xc

.field static final TRANSACTION_isPowerSaveMode:I = 0xd

.field static final TRANSACTION_isWakeLockLevelSupported:I = 0x7

.field static final TRANSACTION_lowLevelReboot_system:I = 0x21

.field static final TRANSACTION_lowLevelShutdown_system:I = 0x20

.field static final TRANSACTION_nap:I = 0xb

.field static final TRANSACTION_powerHint:I = 0x5

.field static final TRANSACTION_reboot:I = 0xf

.field static final TRANSACTION_releaseHtcCpuCtrl:I = 0x18

.field static final TRANSACTION_releaseWakeLock:I = 0x3

.field static final TRANSACTION_setAttentionLight:I = 0x16

.field static final TRANSACTION_setMaximumScreenOffTimeoutFromDeviceAdmin:I = 0x13

.field static final TRANSACTION_setPowerSaveMode:I = 0xe

.field static final TRANSACTION_setStayOnSetting:I = 0x12

.field static final TRANSACTION_setTemporaryScreenAutoBrightnessAdjustmentSettingOverride:I = 0x15

.field static final TRANSACTION_setTemporaryScreenAutoBrightnessPercentageSettingOverride:I = 0x26

.field static final TRANSACTION_setTemporaryScreenBrightnessSettingOverride:I = 0x14

.field static final TRANSACTION_shutdown:I = 0x10

.field static final TRANSACTION_timeSinceScreenWasLastOn:I = 0x19

.field static final TRANSACTION_updateWakeLockUids:I = 0x4

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x6

.field static final TRANSACTION_userActivity:I = 0x8

.field static final TRANSACTION_wakeUp:I = 0x9

.field static final TRANSACTION_wakeUpFromPowerKey:I = 0x2a

.field static final TRANSACTION_watchdog:I = 0x1a

.field static final TRANSACTION_wipeSystem:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
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
    const-string v1, "android.os.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IPowerManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IPowerManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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

    .line 494
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 65
    .local v5, "_arg4":Landroid/os/WorkSource;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    .end local v5    # "_arg4":Landroid/os/WorkSource;
    .end local v6    # "_arg5":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/WorkSource;
    goto :goto_1

    .line 72
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/WorkSource;
    :sswitch_2
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 76
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 82
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 83
    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :sswitch_3
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 93
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 104
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 105
    .local v2, "_arg1":[I
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 111
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":[I
    :sswitch_5
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->powerHint(II)V

    .line 117
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 121
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_6
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 125
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 132
    .local v2, "_arg1":Landroid/os/WorkSource;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 129
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/WorkSource;
    goto :goto_2

    .line 139
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :sswitch_7
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v10

    .line 143
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 144
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 149
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Z
    :sswitch_8
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 153
    .local v8, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .local v3, "_arg2":I
    invoke-virtual {p0, v8, v9, v2, v3}, Landroid/os/IPowerManager$Stub;->userActivity(JII)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 162
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v8    # "_arg0":J
    :sswitch_9
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 165
    .restart local v8    # "_arg0":J
    invoke-virtual {p0, v8, v9}, Landroid/os/IPowerManager$Stub;->wakeUp(J)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 171
    .end local v8    # "_arg0":J
    :sswitch_a
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 175
    .restart local v8    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v8, v9, v2, v3}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 184
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v8    # "_arg0":J
    :sswitch_b
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 187
    .restart local v8    # "_arg0":J
    invoke-virtual {p0, v8, v9}, Landroid/os/IPowerManager$Stub;->nap(J)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 193
    .end local v8    # "_arg0":J
    :sswitch_c
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    move-result v10

    .line 195
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v10, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 196
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 201
    .end local v10    # "_result":Z
    :sswitch_d
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    move-result v10

    .line 203
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v10, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 204
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 209
    .end local v10    # "_result":Z
    :sswitch_e
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 212
    .local v1, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setPowerSaveMode(Z)Z

    move-result v10

    .line 213
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v10, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 211
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 214
    .restart local v1    # "_arg0":Z
    .restart local v10    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 219
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":Z
    :sswitch_f
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 223
    .restart local v1    # "_arg0":Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    .line 226
    .local v3, "_arg2":Z
    :goto_9
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 221
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 225
    .restart local v1    # "_arg0":Z
    .restart local v2    # "_arg1":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 232
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 236
    .restart local v1    # "_arg0":Z
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    .line 237
    .local v2, "_arg1":Z
    :goto_b
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->shutdown(ZZ)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 234
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 236
    .restart local v1    # "_arg0":Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 243
    .end local v1    # "_arg0":Z
    :sswitch_11
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 252
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 261
    .end local v1    # "_arg0":I
    :sswitch_13
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 264
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 270
    .end local v1    # "_arg0":I
    :sswitch_14
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 273
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 279
    .end local v1    # "_arg0":I
    :sswitch_15
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 282
    .local v1, "_arg0":F
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 288
    .end local v1    # "_arg0":F
    :sswitch_16
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 292
    .local v1, "_arg0":Z
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 290
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 299
    :sswitch_17
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 305
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 308
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    .line 314
    .local v4, "_arg3":Landroid/os/WorkSource;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 316
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 317
    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->acquireHtcCpuCtrl(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 311
    .end local v4    # "_arg3":Landroid/os/WorkSource;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/WorkSource;
    goto :goto_d

    .line 323
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/WorkSource;
    :sswitch_18
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 327
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->releaseHtcCpuCtrl(Landroid/os/IBinder;I)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 334
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_19
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->timeSinceScreenWasLastOn()J

    move-result-wide v10

    .line 336
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 338
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 342
    .end local v10    # "_result":J
    :sswitch_1a
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->watchdog()V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 349
    :sswitch_1b
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getProximitySensorActive()Z

    move-result v10

    .line 351
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v10, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 352
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 357
    .end local v10    # "_result":Z
    :sswitch_1c
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    .line 362
    .local v2, "_arg1":Z
    :goto_f
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->customizeScreenOffDelay_Once(IZ)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 361
    .end local v2    # "_arg1":Z
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 368
    .end local v1    # "_arg0":I
    :sswitch_1d
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 372
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    .line 373
    .restart local v2    # "_arg1":Z
    :goto_10
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->customizeScreenOffDelay_Always(IZ)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 372
    .end local v2    # "_arg1":Z
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 379
    .end local v1    # "_arg0":I
    :sswitch_1e
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    .line 384
    .restart local v2    # "_arg1":Z
    :goto_11
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->customizeScreenOffDelay_System(IZ)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 383
    .end local v2    # "_arg1":Z
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 390
    .end local v1    # "_arg0":I
    :sswitch_1f
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->fetchCurrentBrightnessValue()I

    move-result v10

    .line 392
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 398
    .end local v10    # "_result":I
    :sswitch_20
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->lowLevelShutdown_system()V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 405
    :sswitch_21
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->lowLevelReboot_system(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 414
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_22
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 418
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 419
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->wipeSystem([B[B)Z

    move-result v10

    .line 420
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v10, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 421
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 426
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v10    # "_result":Z
    :sswitch_23
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 430
    .restart local v8    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    .local v2, "_arg1":I
    invoke-virtual {p0, v8, v9, v2}, Landroid/os/IPowerManager$Stub;->goToSleepForShutdown(JI)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 437
    .end local v2    # "_arg1":I
    .end local v8    # "_arg0":J
    :sswitch_24
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getNativeSetAutoSuspendDone()Z

    move-result v10

    .line 439
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v10, :cond_12

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 440
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    .line 445
    .end local v10    # "_result":Z
    :sswitch_25
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isActualScreenOn()Z

    move-result v10

    .line 447
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v10, :cond_13

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 448
    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    .line 453
    .end local v10    # "_result":Z
    :sswitch_26
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenAutoBrightnessPercentageSettingOverride(I)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 462
    .end local v1    # "_arg0":I
    :sswitch_27
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 465
    .local v1, "_arg0":Z
    :goto_15
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->informOOBEStatusChange(Z)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 464
    .end local v1    # "_arg0":Z
    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    .line 471
    :sswitch_28
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getProximityWakeLockIsHeld()Z

    move-result v10

    .line 473
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v10, :cond_15

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 474
    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    .line 479
    .end local v10    # "_result":Z
    :sswitch_29
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->informEndCall()V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 486
    :sswitch_2a
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 489
    .restart local v8    # "_arg0":J
    invoke-virtual {p0, v8, v9}, Landroid/os/IPowerManager$Stub;->wakeUpFromPowerKey(J)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 39
    nop

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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
