.class abstract Lcom/android/server/pm/PackageManagerService$HandlerParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandlerParams"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x4


# instance fields
.field private mRetries:I

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V
    .locals 1
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 9513
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9508
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    .line 9514
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    .line 9515
    return-void
.end method


# virtual methods
.method getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 9518
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method abstract handleReturnCode()V
.end method

.method abstract handleServiceError()V
.end method

.method abstract handleStartCopy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method final serviceError()V
    .locals 2

    .prologue
    .line 9545
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    const-string v1, "serviceError"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9546
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleServiceError()V

    .line 9547
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    .line 9548
    return-void
.end method

.method final startCopy()Z
    .locals 5

    .prologue
    .line 9524
    :try_start_0
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCopy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9526
    :cond_0
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 9527
    const-string v2, "PackageManager"

    const-string v3, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9528
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 9529
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleServiceError()V

    .line 9530
    const/4 v1, 0x0

    .line 9541
    :goto_0
    return v1

    .line 9532
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleStartCopy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9533
    const/4 v1, 0x1

    .line 9540
    .local v1, "res":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    goto :goto_0

    .line 9535
    .end local v1    # "res":Z
    :catch_0
    move-exception v0

    .line 9536
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$700()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PackageManager"

    const-string v3, "Posting install MCS_RECONNECT"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9537
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 9538
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_1
.end method
