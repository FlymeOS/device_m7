.class Lcom/android/server/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 10945
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 10949
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v1, 0x3e8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateDefaultRouteMacAddress(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$27300(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;

    .line 10950
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10951
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectedState Enter  mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scanperiod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10956
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    if-eqz v0, :cond_3

    .line 10958
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    int-to-long v2, v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentScanAlarmMs:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27402(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 10960
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    const/16 v2, 0xc8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$26400(Lcom/android/server/wifi/WifiStateMachine;ZI)V

    .line 10964
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->registerConnected()V

    .line 10965
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$18702(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 10966
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 10968
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$18502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10971
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$19502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10973
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$27500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10974
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$27608(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 10975
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectedState Enter start disconnect test "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$27600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10977
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20059

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 10982
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setVzwWifiConnected()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$27700(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 10986
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getPreconfigType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 10987
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "ConnectedState -> setPreConfigAPHigherPriority"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10988
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 10993
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 10995
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$27802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 10999
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mUserConnection:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$20102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11004
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCmccReminderBlocker:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$27900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 11005
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mCmccReminderBlock:Z

    .line 11008
    return-void

    .line 10962
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentScanAlarmMs:J
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$27402(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 11175
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "WifiStateMachine: Leaving Connected state"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11177
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPerfLock:Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->release()V

    .line 11178
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "PerfLock released for exiting ConnectedState"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11180
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(ZI)V
    invoke-static {v0, v2, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$26400(Lcom/android/server/wifi/WifiStateMachine;ZI)V

    .line 11181
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11182
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 11011
    const/4 v3, 0x0

    .line 11012
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v9, p1, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 11014
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 11168
    const/4 v9, 0x0

    .line 11170
    :goto_0
    return v9

    .line 11016
    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Watchdog reports poor link"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11017
    :cond_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$28000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$28100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11170
    :cond_1
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 11020
    :sswitch_1
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_3

    .line 11021
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/WifiConfigStore;->handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V

    .line 11022
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 11023
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$28200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11031
    :cond_2
    :goto_2
    const/4 v9, 0x1

    goto :goto_0

    .line 11024
    :cond_3
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_2

    .line 11025
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 11026
    if-eqz v3, :cond_2

    .line 11028
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/net/wifi/WifiConfiguration;->noInternetAccess:Z

    goto :goto_2

    .line 11034
    :sswitch_2
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$27600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 11035
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto :goto_1

    .line 11041
    :sswitch_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$27802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11042
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 11043
    .local v8, "toBSSID":Ljava/lang/String;
    if-eqz v8, :cond_4

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 11044
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V

    .line 11046
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 11048
    .end local v8    # "toBSSID":Ljava/lang/String;
    :sswitch_4
    const-wide/16 v4, 0x0

    .line 11049
    .local v4, "lastRoam":J
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$27800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_5

    .line 11051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$27800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 11052
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$27802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11054
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 11055
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_a

    if-eqz v3, :cond_a

    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-nez v9, :cond_a

    iget v9, p1, Landroid/os/Message;->arg2:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_a

    const-wide/16 v10, 0x7d0

    cmp-long v9, v4, v10

    if-gez v9, :cond_a

    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v9

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    sget v10, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    if-gt v9, v10, :cond_8

    :cond_7
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v9

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    sget v10, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    if-le v9, v10, :cond_a

    .line 11074
    :cond_8
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 11075
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$18502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11077
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v11, 0x20057

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x1b58

    invoke-virtual {v9, v10, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 11079
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 11080
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RSSI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " freq="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " reason="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> debounce"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11087
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 11089
    :cond_a
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 11090
    const/4 v0, -0x1

    .line 11091
    .local v0, "ajst":I
    if-eqz v3, :cond_b

    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 11092
    :cond_b
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RSSI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " freq="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was debouncing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " reason="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ajst="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11104
    .end local v0    # "ajst":I
    .end local v4    # "lastRoam":J
    :sswitch_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$27802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11107
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 11108
    .local v2, "candidate":Landroid/net/wifi/ScanResult;
    const-string v1, "any"

    .line 11109
    .local v1, "bssid":Ljava/lang/String;
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 11111
    iget-object v1, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 11113
    :cond_c
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    .line 11114
    .local v6, "netId":I
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 11117
    if-nez v3, :cond_d

    .line 11118
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "AUTO_ROAM and no config, bail out..."

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11122
    :cond_d
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMD_AUTO_ROAM sup state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " my state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " nid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " config "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " roam="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " targetRoamBSSID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11132
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9, v3, v1}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 11133
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "AUTO_ROAM nothing to do"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11135
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$5300()I

    move-result v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 11140
    :cond_e
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 11142
    const/4 v7, 0x0

    .line 11143
    .local v7, "ret":Z
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    if-eq v9, v6, :cond_10

    .line 11144
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 11146
    const/4 v7, 0x1

    .line 11151
    :cond_f
    :goto_3
    if-eqz v7, :cond_11

    .line 11152
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$18702(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11153
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 11156
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v10, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$19502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11157
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$28400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 11149
    :cond_10
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    move-result v7

    goto :goto_3

    .line 11160
    :cond_11
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to connect config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " netId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11161
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v10, 0x25002

    const/4 v11, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 11163
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 11014
    nop

    :sswitch_data_0
    .sparse-switch
        0x20059 -> :sswitch_2
        0x20090 -> :sswitch_1
        0x20091 -> :sswitch_5
        0x20093 -> :sswitch_3
        0x21015 -> :sswitch_0
        0x24004 -> :sswitch_4
    .end sparse-switch
.end method
