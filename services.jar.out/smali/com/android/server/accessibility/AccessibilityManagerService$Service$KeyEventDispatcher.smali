.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyEventDispatcher"
.end annotation


# static fields
.field private static final ON_KEY_EVENT_TIMEOUT_MILLIS:J = 0x1f4L


# instance fields
.field private mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

.field private final mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 3

    .prologue
    .line 2997
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3003
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    const-class v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$1;

    .prologue
    .line 2997
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    return-void
.end method

.method private addPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 3052
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v1

    .line 3053
    .local v1, "sequence":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->obtainPendingEventLocked(Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    invoke-static {v2, p1, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    move-result-object v0

    .line 3054
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 3055
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 3056
    return-object v0
.end method

.method private cancelAllPendingEventsLocked()V
    .locals 3

    .prologue
    .line 3102
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    if-eqz v1, :cond_0

    .line 3103
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->removePendingEventLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    move-result-object v0

    .line 3104
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    .line 3105
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3107
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->finishPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    goto :goto_0

    .line 3109
    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :cond_0
    return-void
.end method

.method private finishPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    .locals 2
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .prologue
    .line 3080
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    if-nez v0, :cond_0

    .line 3081
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->policyFlags:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->sendKeyEventToInputFilter(Landroid/view/KeyEvent;I)V

    .line 3085
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    .line 3086
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->recyclePendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    .line 3087
    return-void
.end method

.method private removePendingEventLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .locals 4
    .param p1, "sequence"    # I

    .prologue
    const/4 v2, 0x0

    .line 3060
    const/4 v1, 0x0

    .line 3061
    .local v1, "previous":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 3063
    .local v0, "current":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :goto_0
    if-eqz v0, :cond_2

    .line 3064
    iget v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    if-ne v3, p1, :cond_1

    .line 3065
    if-eqz v1, :cond_0

    .line 3066
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    iput-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 3070
    :goto_1
    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 3076
    .end local v0    # "current":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :goto_2
    return-object v0

    .line 3068
    .restart local v0    # "current":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :cond_0
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    goto :goto_1

    .line 3073
    :cond_1
    move-object v1, v0

    .line 3074
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 3076
    goto :goto_2
.end method

.method private sendKeyEventToInputFilter(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v2, 0x0

    .line 3093
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    .line 3094
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 3096
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p2, v0

    .line 3097
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3099
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3044
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->cancelAllPendingEventsLocked()V

    .line 3045
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    .line 3046
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 3048
    :cond_0
    monitor-exit v1

    .line 3049
    return-void

    .line 3048
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 3011
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3012
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->addPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    move-result-object v1

    .line 3013
    .local v1, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3015
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3017
    .local v0, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3023
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    iget v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    invoke-interface {v3, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3027
    :goto_0
    return-void

    .line 3013
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 3024
    .restart local v0    # "message":Landroid/os/Message;
    .restart local v1    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :catch_0
    move-exception v2

    .line 3025
    .local v2, "re":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iget v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->setOnKeyEventResult(ZI)V

    goto :goto_0
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 4
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    .prologue
    .line 3030
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3031
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->removePendingEventLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    move-result-object v0

    .line 3032
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    if-eqz v0, :cond_0

    .line 3033
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3036
    iput-boolean p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    .line 3037
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->finishPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    .line 3039
    :cond_0
    monitor-exit v2

    .line 3040
    return-void

    .line 3039
    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
