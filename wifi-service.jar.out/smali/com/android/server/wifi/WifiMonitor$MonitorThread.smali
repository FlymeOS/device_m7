.class Lcom/android/server/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private final mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 885
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 886
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 887
    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 888
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 893
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "eventStr":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SCAN-RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 897
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    # invokes: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->dispatchEvent(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$600(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WifiMonitor"

    const-string v2, "Disconnecting from the supplicant, no more events"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_2
    return-void
.end method
