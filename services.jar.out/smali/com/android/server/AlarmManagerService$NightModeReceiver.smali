.class Lcom/android/server/AlarmManagerService$NightModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NightModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 4

    .prologue
    .line 2570
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2571
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2572
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "POWERSAVERMODE_NIGHT_MODE_TURN_ON_MOBILE_SN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2573
    const-string v1, "POWERSAVERMODE_NIGHT_MODE_TURN_OFF_MOBILE_SN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2574
    const-string v1, "SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2575
    const-string v1, "SMARTSYNC_NIGHT_MODE_TURN_OFF_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2578
    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_ON_MOBILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2579
    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_OFF_MOBILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2580
    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2581
    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_OFF_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.htc.permission.APP_PLATFORM"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2589
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2592
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mConnectStateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2593
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2594
    .local v0, "action":Ljava/lang/String;
    const-string v1, "POWERSAVERMODE_NIGHT_MODE_TURN_ON_MOBILE_SN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_ON_MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2596
    :cond_0
    const-string v1, "AlarmManager"

    const-string v3, "[AlarmQueuing] night mode turn on mobile"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$1902(Lcom/android/server/AlarmManagerService;Z)Z

    .line 2611
    :cond_1
    :goto_0
    monitor-exit v2

    .line 2612
    return-void

    .line 2598
    :cond_2
    const-string v1, "POWERSAVERMODE_NIGHT_MODE_TURN_OFF_MOBILE_SN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_OFF_MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2600
    :cond_3
    const-string v1, "AlarmManager"

    const-string v3, "[AlarmQueuing] night mode turn off mobile"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$1902(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 2611
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2602
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v1, "SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2604
    :cond_5
    const-string v1, "AlarmManager"

    const-string v3, "[AlarmQueuing] smartsync night mode turn on wifi"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$2002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 2606
    :cond_6
    const-string v1, "SMARTSYNC_NIGHT_MODE_TURN_OFF_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2608
    :cond_7
    const-string v1, "AlarmManager"

    const-string v3, "[AlarmQueuing] smartsync night mode turn off wifi"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$2002(Lcom/android/server/AlarmManagerService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
