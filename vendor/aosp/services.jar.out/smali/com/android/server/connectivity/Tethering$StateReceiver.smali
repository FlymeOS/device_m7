.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"    # Lcom/android/server/connectivity/Tethering$1;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 761
    .local v4, "action":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    const-string v20, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 764
    :try_start_0
    const-string v20, "connected"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 765
    .local v19, "usbConnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const-string v22, "rndis"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    # setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 768
    const-string v20, "Tethering"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "got USB_STATE change: usbConnected="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mRndisEnabled="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mUsbTetherRequested="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    # invokes: Lcom/android/server/connectivity/Tethering;->hTCtetherUsb(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;Z)V

    .line 785
    :cond_2
    monitor-exit v21

    goto/16 :goto_0

    .end local v19    # "usbConnected":Z
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 786
    :cond_3
    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 787
    const-string v20, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo;

    .line 789
    .local v11, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 791
    const-string v20, "Tethering"

    const-string v21, "Tethering got CONNECTIVITY_ACTION"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v20

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 799
    .end local v11    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    const-string v20, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto/16 :goto_0

    .line 802
    :cond_5
    const-string v20, "com.htc.hotspot.ASSOCLIST"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 803
    const-string v20, "Tethering"

    const-string v21, ">>>>>>receive ASSOC_LIST_CHANGE_ACTION<<<<<<"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v20

    const-string v22, "wifi"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 807
    const-string v20, "Tethering"

    const-string v21, "WiFiDisplay, not showTetheredNotification"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 811
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v21 .. v21}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v21, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showWifiTetheredNotification(I)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 816
    :cond_7
    const-string v20, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mBooted:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$1002(Lcom/android/server/connectivity/Tethering;Z)Z

    goto/16 :goto_0

    .line 818
    :cond_8
    const-string v20, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 819
    const-string v20, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 820
    .local v18, "status":Ljava/lang/String;
    const/4 v14, 0x0

    .line 821
    .local v14, "requestPermissionCheck":Z
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v13, v0, [I

    .line 822
    .local v13, "requestList":[I
    const/4 v10, 0x0

    .line 823
    .local v10, "index":I
    const-string v20, "ABSENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 826
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v20

    const-string v22, "wifi"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 828
    const-string v20, "Tethering"

    const-string v21, "[SIM_ABSENT] WiFiDisplay, not check permission"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 857
    :catch_0
    move-exception v6

    .line 858
    .local v6, "e":Ljava/lang/Exception;
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Eroor to htcRequestPermittedTether:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 832
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)[I

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    array-length v0, v13

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v21

    monitor-enter v21
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 835
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 836
    .local v9, "ifaces":Ljava/util/Set;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 837
    .local v8, "iface":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 838
    .local v16, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v16, :cond_a

    .line 839
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/connectivity/Tethering;->IfaceToPermitted(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I

    move-result v10

    .line 841
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_b

    .line 842
    const-string v20, "Tethering"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM_ABSENT] Trigger TetherGaurd as SIM absent, "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    check-cast v8, Ljava/lang/String;

    .end local v8    # "iface":Ljava/lang/Object;
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/16 v20, 0x2

    aput v20, v13, v10

    .line 844
    const/4 v14, 0x1

    goto :goto_1

    .line 846
    .restart local v8    # "iface":Ljava/lang/Object;
    :cond_b
    const-string v20, "Tethering"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM_ABSENT] unkown iface: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    check-cast v8, Ljava/lang/String;

    .end local v8    # "iface":Ljava/lang/Object;
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 851
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "ifaces":Ljava/util/Set;
    .end local v16    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_1
    move-exception v20

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v20
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "ifaces":Ljava/util/Set;
    :cond_c
    :try_start_5
    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 852
    if-eqz v14, :cond_0

    .line 853
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 854
    .local v12, "permissinChecing":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 863
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "ifaces":Ljava/util/Set;
    .end local v10    # "index":I
    .end local v12    # "permissinChecing":Landroid/os/Message;
    .end local v13    # "requestList":[I
    .end local v14    # "requestPermissionCheck":Z
    .end local v18    # "status":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->EntitlementCheck_cust:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_e

    const-string v20, "com.htc.internal.periodic_entitlement_check"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 865
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v13, v0, [I

    fill-array-data v13, :array_0

    .line 868
    .restart local v13    # "requestList":[I
    const-string v20, "Tethering"

    const-string v21, "@@@ trigger 24 hour entitlement check"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 870
    .restart local v12    # "permissinChecing":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->getEntitlementCheckTimer()J
    invoke-static/range {v21 .. v21}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    # invokes: Lcom/android/server/connectivity/Tethering;->scheduleEntitlementCheckExpiredAlarm(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;J)V

    goto/16 :goto_0

    .line 874
    .end local v12    # "permissinChecing":Landroid/os/Message;
    .end local v13    # "requestList":[I
    :cond_e
    const-string v20, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v17

    .line 876
    .local v17, "ss":Landroid/telephony/ServiceState;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    .line 877
    .local v5, "curState":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->DataRoaming:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    move/from16 v0, v20

    if-eq v0, v5, :cond_0

    .line 878
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Intent- ACTION_SERVICE_STATE_CHANGED, roaming is different with previous, DatatRoaming:  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # setter for: Lcom/android/server/connectivity/Tethering;->DataRoaming:Z
    invoke-static {v0, v5}, Lcom/android/server/connectivity/Tethering;->access$1802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v20

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 885
    .end local v5    # "curState":Z
    .end local v17    # "ss":Landroid/telephony/ServiceState;
    :cond_f
    const-string v20, "com.htc.net.conn.tethering_dun_required"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 886
    const-string v20, "secureSetting"

    const/16 v21, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 887
    .local v15, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->dun_required:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v15, :cond_10

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # setter for: Lcom/android/server/connectivity/Tethering;->dun_required:I
    invoke-static {v0, v15}, Lcom/android/server/connectivity/Tethering;->access$1902(Lcom/android/server/connectivity/Tethering;I)I

    .line 889
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DUN required update, dun_required: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->dun_required:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v20

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 893
    :cond_10
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DUN required: no change, so skip update, dun_required: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->dun_required:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 865
    :array_0
    .array-data 4
        0x2
        0x2
        0x2
    .end array-data
.end method
