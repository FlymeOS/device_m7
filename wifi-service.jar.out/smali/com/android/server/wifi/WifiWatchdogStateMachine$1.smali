.class Lcom/android/server/wifi/WifiWatchdogStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x21003

    const-string v3, "newRssi"

    const/16 v4, -0xc8

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x21004

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 404
    :cond_2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 405
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x21002

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 406
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 407
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x21008

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 408
    :cond_4
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 409
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x21009

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 410
    :cond_5
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x21005

    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(II)V

    goto :goto_0
.end method
