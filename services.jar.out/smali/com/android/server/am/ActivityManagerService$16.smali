.class Lcom/android/server/am/ActivityManagerService$16;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$doneReceivers:Ljava/util/ArrayList;

.field final synthetic val$goingCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 11827
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$16;->val$doneReceivers:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$16;->val$goingCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 11829
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 11830
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mDidUpdate:Z

    .line 11831
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11832
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$16;->val$doneReceivers:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeLastDonePreBootReceivers(Ljava/util/ArrayList;)V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1400(Ljava/util/ArrayList;)V

    .line 11833
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1040488

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 11836
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->val$goingCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 11837
    return-void

    .line 11831
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
