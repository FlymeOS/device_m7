.class final Lcom/android/nfc/NfcService$NfcSecureElementService;
.super Lcom/nxp/nfc/INfcSecureElement$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcSecureElementService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3560
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INfcSecureElement$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSecureElementConnection(I)I
    .locals 4
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3599
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3602
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3603
    const/16 v0, -0x11

    .line 3654
    :cond_0
    :goto_0
    return v0

    .line 3607
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isClosed:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3612
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isOpened:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3615
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3616
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doDisconnect(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3619
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3622
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->isOpened:Z
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$3002(Lcom/android/nfc/NfcService;Z)Z

    .line 3623
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->isClosed:Z
    invoke-static {v0, v3}, Lcom/android/nfc/NfcService;->access$3102(Lcom/android/nfc/NfcService;Z)Z

    .line 3624
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mOpenSmxPending:Z
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$2602(Lcom/android/nfc/NfcService;Z)Z

    .line 3627
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPollingLoopStarted:Z
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$3200(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3628
    const-string v0, "NfcService"

    const-string v2, "Stop Polling Loop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->maybeDisableDiscovery()V
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)V

    :goto_1
    move v0, v1

    .line 3635
    goto :goto_0

    .line 3631
    :cond_2
    const-string v0, "NfcService"

    const-string v2, "Start Polling Loop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->maybeEnableDiscovery()V
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2100(Lcom/android/nfc/NfcService;)V

    goto :goto_1

    .line 3638
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3641
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->isOpened:Z
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$3002(Lcom/android/nfc/NfcService;Z)Z

    .line 3642
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->isClosed:Z
    invoke-static {v0, v3}, Lcom/android/nfc/NfcService;->access$3102(Lcom/android/nfc/NfcService;Z)Z

    .line 3643
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mOpenSmxPending:Z
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$2602(Lcom/android/nfc/NfcService;Z)Z

    .line 3646
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPollingLoopStarted:Z
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$3200(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3647
    const-string v0, "NfcService"

    const-string v1, "Stop Polling Loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->maybeDisableDiscovery()V
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)V

    .line 3654
    :goto_2
    const/4 v0, -0x5

    goto/16 :goto_0

    .line 3650
    :cond_4
    const-string v0, "NfcService"

    const-string v1, "Start Polling Loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->maybeEnableDiscovery()V
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2100(Lcom/android/nfc/NfcService;)V

    goto :goto_2
.end method

.method public exchangeAPDU(I[B)[B
    .locals 6
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3717
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3722
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3743
    :cond_0
    :goto_0
    return-object v0

    .line 3727
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isClosed:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3732
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isOpened:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3736
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    .line 3739
    .local v0, "response":[B
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 3740
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$2902(Lcom/android/nfc/NfcService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 3741
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/android/nfc/NfcService$TimerOpenSecureElement;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v2, v3}, Lcom/android/nfc/NfcService$TimerOpenSecureElement;-><init>(Lcom/android/nfc/NfcService;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public getSecureElementTechList(I)[I
    .locals 6
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3659
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3662
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3683
    :cond_0
    :goto_0
    return-object v0

    .line 3667
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isClosed:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3672
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isOpened:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3676
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doGetTechList(I)[I

    move-result-object v0

    .line 3679
    .local v0, "techList":[I
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 3680
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$2902(Lcom/android/nfc/NfcService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 3681
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/android/nfc/NfcService$TimerOpenSecureElement;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v2, v3}, Lcom/android/nfc/NfcService$TimerOpenSecureElement;-><init>(Lcom/android/nfc/NfcService;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public getSecureElementUid(I)[B
    .locals 6
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3687
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3692
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3713
    :cond_0
    :goto_0
    return-object v0

    .line 3697
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isClosed:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3702
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isOpened:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3706
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doGetUid(I)[B

    move-result-object v0

    .line 3709
    .local v0, "uid":[B
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 3710
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$2902(Lcom/android/nfc/NfcService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 3711
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/android/nfc/NfcService$TimerOpenSecureElement;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v2, v3}, Lcom/android/nfc/NfcService$TimerOpenSecureElement;-><init>(Lcom/android/nfc/NfcService;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public openSecureElementConnection()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 3563
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3565
    const-string v2, "NfcService"

    const-string v3, "openSecureElementConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 3595
    :goto_0
    return v0

    .line 3574
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenSmxPending:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2600(Lcom/android/nfc/NfcService;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 3575
    goto :goto_0

    .line 3578
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doOpenSecureElementConnection()I

    move-result v0

    .line 3580
    .local v0, "handle":I
    if-nez v0, :cond_2

    .line 3581
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mOpenSmxPending:Z
    invoke-static {v2, v1}, Lcom/android/nfc/NfcService;->access$2602(Lcom/android/nfc/NfcService;Z)Z

    goto :goto_0

    .line 3583
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mSecureElementHandle:I
    invoke-static {v2, v0}, Lcom/android/nfc/NfcService;->access$2802(Lcom/android/nfc/NfcService;I)I

    .line 3586
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/android/nfc/NfcService;->access$2902(Lcom/android/nfc/NfcService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 3587
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/android/nfc/NfcService$TimerOpenSecureElement;

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v3, v4}, Lcom/android/nfc/NfcService$TimerOpenSecureElement;-><init>(Lcom/android/nfc/NfcService;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 3590
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->isOpened:Z
    invoke-static {v2, v6}, Lcom/android/nfc/NfcService;->access$3002(Lcom/android/nfc/NfcService;Z)Z

    .line 3591
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->isClosed:Z
    invoke-static {v2, v1}, Lcom/android/nfc/NfcService;->access$3102(Lcom/android/nfc/NfcService;Z)Z

    .line 3592
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcSecureElementService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mOpenSmxPending:Z
    invoke-static {v1, v6}, Lcom/android/nfc/NfcService;->access$2602(Lcom/android/nfc/NfcService;Z)Z

    goto :goto_0
.end method
