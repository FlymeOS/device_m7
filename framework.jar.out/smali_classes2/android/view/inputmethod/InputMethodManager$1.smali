.class Landroid/view/inputmethod/InputMethodManager$1;
.super Lcom/android/internal/view/IInputMethodClient$Stub;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 605
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 606
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 607
    .local v2, "sargs":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 608
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 609
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 610
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 611
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v4, v5, v2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 613
    const-wide/16 v4, 0x5

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    const-string v3, "Timeout waiting for dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted waiting for dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    .locals 3
    .param p1, "res"    # Lcom/android/internal/view/InputBindResult;

    .prologue
    .line 627
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 628
    return-void
.end method

.method public onUnbindMethod(I)V
    .locals 4
    .param p1, "sequence"    # I

    .prologue
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager$1;->hookOnUnbindMethodForOnInputShownChanged(I)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setActive(Z)V
    .locals 5
    .param p1, "active"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setUserActionNotificationSequenceNumber(I)V
    .locals 4
    .param p1, "sequenceNumber"    # I

    .prologue
    .line 632
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 633
    .line 644
    return-void
.end method

.method public setUsingInputMethod(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 623
    return-void
.end method

.method private hookOnUnbindMethodForOnInputShownChanged(I)Z
    .locals 7
    .param p1, "sequence"    # I

    .prologue
    const/4 v4, -0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v4, :cond_0

    const/16 v3, -0x9

    if-ne p1, v3, :cond_1

    :cond_0
    if-ne p1, v4, :cond_2

    move v0, v1

    .local v0, "vis":Z
    :goto_0
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getMzHandler()Landroid/view/inputmethod/InputMethodManager$MzHandler;

    move-result-object v4

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getMzHandler()Landroid/view/inputmethod/InputMethodManager$MzHandler;

    move-result-object v5

    const/16 v6, 0x8

    if-eqz v0, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v5, v6, v3, v2}, Landroid/view/inputmethod/InputMethodManager$MzHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/inputmethod/InputMethodManager$MzHandler;->sendMessage(Landroid/os/Message;)Z

    move v2, v1

    .end local v0    # "vis":Z
    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    .restart local v0    # "vis":Z
    :cond_3
    move v3, v2

    goto :goto_1
.end method
