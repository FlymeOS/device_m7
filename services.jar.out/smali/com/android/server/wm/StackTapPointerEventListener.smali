.class public Lcom/android/server/wm/StackTapPointerEventListener;
.super Ljava/lang/Object;
.source "StackTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final TAP_MOTION_SLOP_INCHES:F = 0.125f

.field private static final TAP_TIMEOUT_MSEC:I = 0x12c


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDownX:F

.field private mDownY:F

.field private final mMotionSlop:I

.field private mPointerId:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 41
    iput-object p2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 42
    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 43
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 44
    .local v0, "info":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    .line 45
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v10, -0x1

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 50
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 52
    :pswitch_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    goto :goto_0

    .line 57
    :pswitch_2
    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    if-ltz v4, :cond_0

    .line 58
    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 61
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 62
    iput v10, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, v12

    if-gtz v4, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 69
    :cond_2
    iput v10, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    goto :goto_0

    .line 77
    .end local v1    # "index":I
    :pswitch_3
    const v4, 0xff00

    and-int/2addr v4, v0

    shr-int/lit8 v1, v4, 0x8

    .line 80
    .restart local v1    # "index":I
    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 82
    .local v2, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .line 85
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 86
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v4, v6, v12

    if-gez v4, :cond_4

    int-to-float v4, v2

    iget v6, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    int-to-float v4, v3

    iget v6, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 93
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_HTC:Z

    if-eqz v4, :cond_3

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPointerEvent: send TAP_OUTSIDE_STACK by motion event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", touch exclude region: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x1f

    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v6, v2, v3, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 101
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iput v10, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    goto/16 :goto_0

    .line 101
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
