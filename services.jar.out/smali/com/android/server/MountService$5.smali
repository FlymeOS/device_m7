.class Lcom/android/server/MountService$5;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1026
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string v14, "volume"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "list"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "broadcast"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v13

    const/16 v14, 0x6e

    invoke-static {v13, v14}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v10

    .line 1029
    .local v10, "vols":[Ljava/lang/String;
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v11, v1, v3

    .line 1030
    .local v11, "volstr":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1032
    .local v9, "tok":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v5, v9, v13

    .line 1033
    .local v5, "path":Ljava/lang/String;
    const-string v8, "removed"

    .line 1036
    .local v8, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 1038
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    const/4 v13, 0x2

    :try_start_2
    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1041
    .local v7, "st":I
    if-nez v7, :cond_4

    .line 1042
    const-string v8, "removed"

    .line 1061
    :goto_1
    if-eqz v8, :cond_1

    .line 1062
    # getter for: Lcom/android/server/MountService;->DEBUG_EVENTS:Z
    invoke-static {}, Lcom/android/server/MountService;->access$2400()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updating valid state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v13, v12, v8}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1029
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1038
    .end local v7    # "st":I
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1066
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "tok":[Ljava/lang/String;
    .end local v10    # "vols":[Ljava/lang/String;
    .end local v11    # "volstr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1067
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Error processing initial volume state"

    invoke-static {v13, v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1068
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    invoke-static {v13}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 1069
    .local v6, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v6, :cond_2

    .line 1070
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v14, "removed"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v13, v6, v14}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1078
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "primary":Landroid/os/storage/StorageVolume;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1082
    const-string v13, ""

    const-string v14, "vold.encrypt_progress"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1083
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->copyLocaleFromMountService()V
    invoke-static {v13}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;)V

    .line 1087
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 1090
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1091
    return-void

    .line 1043
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "st":I
    .restart local v8    # "state":Ljava/lang/String;
    .restart local v9    # "tok":[Ljava/lang/String;
    .restart local v10    # "vols":[Ljava/lang/String;
    .restart local v11    # "volstr":Ljava/lang/String;
    .restart local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    const/4 v13, 0x1

    if-ne v7, v13, :cond_5

    .line 1044
    :try_start_5
    const-string v8, "unmounted"

    goto/16 :goto_1

    .line 1045
    :cond_5
    const/4 v13, 0x4

    if-ne v7, v13, :cond_6

    .line 1046
    const-string v8, "mounted"

    .line 1047
    const-string v13, "MountService"

    const-string v14, "Media already mounted on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1048
    :cond_6
    const/4 v13, 0x7

    if-ne v7, v13, :cond_7

    .line 1049
    const-string v8, "shared"

    .line 1050
    const-string v13, "MountService"

    const-string v14, "Media shared on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1051
    :cond_7
    const/16 v13, 0xa

    if-ne v7, v13, :cond_8

    .line 1052
    const-string v8, "mounted_ro"

    .line 1053
    const-string v13, "MountService"

    const-string v14, "Media mounted read only"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1054
    :cond_8
    const/4 v13, 0x2

    if-ne v7, v13, :cond_9

    .line 1055
    const-string v8, "removed"

    .line 1056
    const-string v13, "MountService"

    const-string v14, "Media state is in pending"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1058
    :cond_9
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Unexpected state %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method
