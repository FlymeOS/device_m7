.class public Lcom/htc/service/WirelessDisplayManager;
.super Ljava/lang/Object;
.source "WirelessDisplayManager.java"


# static fields
.field public static final CONFIG_FILE_PATH:Ljava/lang/String; = "/data/misc/wifidisplay.conf"

.field public static final ERROR_MIRROR_DONGLE_NOT_FOUND:I = -0x6

.field public static final ERROR_MIRROR_MEDIA_RECORDER:I = -0x4

.field public static final ERROR_MIRROR_NETWORK_FAILURE:I = -0x1

.field public static final ERROR_MIRROR_OUT_OF_RANGE:I = -0x3

.field public static final ERROR_MIRROR_PLUGGED_FAILED:I = -0x5

.field public static final ERROR_MIRROR_WIFI_TURN_OFF:I = -0x2

.field public static final EXTRA_MIRROR_DISPLAY_STATE:Ljava/lang/String; = "mirror_display_state"

.field public static final EXTRA_MIRROR_DISPLAY_STATUS:Ljava/lang/String; = "mirror_display_status"

.field public static final EXTRA_MIRROR_ERROR_MESSAGE:Ljava/lang/String; = "mirror_error_message"

.field public static final MIRROR_DISPLAY_DONGLE_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.MIRROR_DISPLAY_DONGLE_AVAILABLE"

.field public static final MIRROR_DISPLAY_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

.field public static final MIRROR_DONGLE_LIST_CHANGED_ACTION:Ljava/lang/String; = "com.htc.MIRROR_DONGLE_LIST_CHANGED"

.field public static final MIRROR_MODE_APP_PAUSE:I = 0x7

.field public static final MIRROR_MODE_CALL_PAUSE:I = 0x9

.field public static final MIRROR_MODE_DISPLAY_DISABLED:I = 0x1

.field public static final MIRROR_MODE_DISPLAY_DISABLING:I = 0x0

.field public static final MIRROR_MODE_DISPLAY_ENABLED:I = 0x3

.field public static final MIRROR_MODE_DISPLAY_ENABLING:I = 0x2

.field public static final MIRROR_MODE_DISPLAY_PAUSE:I = 0x4

.field public static final MIRROR_MODE_DISPLAY_UNKNOWN:I = 0x5

.field public static final MIRROR_MODE_DONGLE_WAIT:I = 0x8

.field public static final MIRROR_MODE_OUT_OF_RANGE:I = 0x6

.field public static final SWVER_FILE_PATH:Ljava/lang/String; = "/data/misc/wifidisplay.swver"

.field private static final TAG:Ljava/lang/String; = "WirelessDisplayManager"


# instance fields
.field private mService:Lcom/htc/service/IWirelessDisplayService;


# direct methods
.method public constructor <init>(Lcom/htc/service/IWirelessDisplayService;)V
    .locals 0
    .param p1, "service"    # Lcom/htc/service/IWirelessDisplayService;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    .line 125
    return-void
.end method


# virtual methods
.method public changeVideoBitRate(I)V
    .locals 3
    .param p1, "bitRate"    # I

    .prologue
    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->changeVideoBitRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "changeVideoBitRate: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public extendTurnOffHotspotTimer()V
    .locals 3

    .prologue
    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->extendTurnOffHotspotTimer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "extendTurnOffHotspotTimer: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDongleIP()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getConnectedDongleIP()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getConnectedDongleIP: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectedDongleIPLong()J
    .locals 4

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getConnectedDongleIPLong()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 204
    :goto_0
    return-wide v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getConnectedDongleIPLong: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentDongle()Lcom/htc/service/DongleInfo;
    .locals 3

    .prologue
    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 409
    :goto_0
    return-object v1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getCurrentDongle: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDLNAPreloadEnable()Z
    .locals 3

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getDLNAPreloadEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 351
    :goto_0
    return v1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getDLNAPreloadEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultDongle()Lcom/htc/service/DongleInfo;
    .locals 3

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getDefaultDongle: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultVideoBitRate()I
    .locals 4

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 448
    .local v0, "defaultBitRate":I
    :try_start_0
    iget-object v2, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v2}, Lcom/htc/service/IWirelessDisplayService;->getDefaultVideoBitRate()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 452
    .end local v0    # "defaultBitRate":I
    :goto_0
    return v0

    .line 449
    .restart local v0    # "defaultBitRate":I
    :catch_0
    move-exception v1

    .line 450
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "WirelessDisplayManager"

    const-string v3, "getDefaultVideoBitRate: RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDiscoveryDongleList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getDiscoveryDongleList: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDonglePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "dongleStaBssid"    # Ljava/lang/String;

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->getDonglePattern(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 400
    :goto_0
    return-object v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getDonglePattern: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFingerGestureEnable()Z
    .locals 3

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getFingerGestureEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getFingerGestureEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getInterface()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 308
    :goto_0
    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getInterface: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMirrorDisplayStatus()Z
    .locals 3

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getMirrorDisplayStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 166
    :goto_0
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getMirrorDisplayStatus: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMirrorModeState()I
    .locals 3

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getMirrorModeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    :goto_0
    return v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getMirrorModeState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getunConfigDongleList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getunConfigDongleList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 244
    :goto_0
    return-object v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string v2, "getunConfigDongleList: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mirrorModeStartStop(Z)Z
    .locals 3
    .param p1, "start"    # Z

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->mirrorModeStartStop(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 218
    :goto_0
    return v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "mirrorModeStartStop: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mirrorNow()V
    .locals 3

    .prologue
    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->mirrorNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "mirrorNow: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyScreenOff()V
    .locals 3

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->notifyScreenOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "notifyScreenOff: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyUserUnConfigDoneleResult(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->notifyUserUnConfigDoneleResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "notifyUserUnConfigDoneleResult: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playOnTV(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->playOnTV(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    :goto_0
    return v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "playOnTV: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popDialog()Z
    .locals 3

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->popDialog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 317
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setInterface: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDelayTimerStop(Z)V
    .locals 3
    .param p1, "isStop"    # Z

    .prologue
    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->requestDelayTimerStop(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "requestDelayTimerStop: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestWivuDiscovery(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "nwif"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "auto"    # Z

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/service/IWirelessDisplayService;->requestWivuDiscovery(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "requestWivuDiscovery: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public selectDongle(Ljava/lang/String;)V
    .locals 3
    .param p1, "Bssid"    # Ljava/lang/String;

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->selectDongle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "selectDongle: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCQEEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setCQEEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setCQEEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDLNAPreloadEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setDLNAPreloadEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setDLNAPreloadEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dongleStaBssid"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1, p2}, Lcom/htc/service/IWirelessDisplayService;->setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setDonglePattern: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFingerGestureEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setFingerGestureEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setFingerGestureEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 3
    .param p1, "nwif"    # Ljava/lang/String;

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setInterface: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setL2peApInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setL2peApInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setL2peApInfo: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMirrorDisplayOnOff(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setMirrorDisplayOnOff(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setMirrorDisplayOnOff: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiNetworkLimit(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setWifiNetworkLimit(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setWifiNetworkLimit: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPatternLockFakeMirror(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->startPatternLockFakeMirror(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "startPatternLockFakeMirror: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopWivuDiscovery()V
    .locals 3

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->stopWivuDiscovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "stopWivuDiscovery: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public usedDongleFound()Z
    .locals 3

    .prologue
    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->usedDongleFound()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 418
    :goto_0
    return v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "usedDongleFound: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    const/4 v1, 0x0

    goto :goto_0
.end method
