.class Lcom/android/server/wifi/WifiController$EcmState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcmState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 784
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 788
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26001

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3

    .line 789
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$600(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$5000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 800
    :goto_0
    const/4 v0, 0x1

    .line 802
    :goto_1
    return v0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$2300(Lcom/android/server/wifi/WifiController;)V

    goto :goto_0

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$5100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 798
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$3400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$5200(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 802
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
