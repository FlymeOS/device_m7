.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 778
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 779
    .local v4, "userId":I
    if-ne v4, v7, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 782
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 784
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 785
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    invoke-static {v6, v3}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Landroid/os/UserHandle;)V

    .line 786
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 788
    :cond_2
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 789
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 790
    :try_start_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 791
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 792
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 793
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 799
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 796
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 797
    .restart local v5    # "volume":Landroid/os/storage/StorageVolume;
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    invoke-static {v6, v5}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V

    goto :goto_2

    .line 799
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0
.end method
