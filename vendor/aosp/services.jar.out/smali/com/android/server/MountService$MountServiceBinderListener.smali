.class final Lcom/android/server/MountService$MountServiceBinderListener;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MountServiceBinderListener"
.end annotation


# instance fields
.field final mListener:Landroid/os/storage/IMountServiceListener;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceBinderListener;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p2, p0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    .line 895
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 898
    # getter for: Lcom/android/server/MountService;->LOCAL_LOGD:Z
    invoke-static {}, Lcom/android/server/MountService;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MountService"

    const-string v1, "An IMountServiceListener has died!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService$MountServiceBinderListener;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService$MountServiceBinderListener;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 901
    iget-object v0, p0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v0}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 902
    monitor-exit v1

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
