.class Lcom/htc/camera/zoe/ZoeController$8;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$8;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$8;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$8;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->getCameraType()Lcom/htc/camera/CameraType;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1800(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$8;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->getCameraMode()Lcom/htc/camera/CameraMode;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1900(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$8;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$8;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_IsCaptureRotationChanged:Z
    invoke-static {v1}, Lcom/htc/camera/zoe/ZoeController;->access$2000(Lcom/htc/camera/zoe/ZoeController;)Z

    move-result v1

    # invokes: Lcom/htc/camera/zoe/ZoeController;->prepareMediaRecorder(Z)Z
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$2100(Lcom/htc/camera/zoe/ZoeController;Z)Z

    .line 1192
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$8;->this$0:Lcom/htc/camera/zoe/ZoeController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/zoe/ZoeController;->m_IsCaptureRotationChanged:Z
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$2002(Lcom/htc/camera/zoe/ZoeController;Z)Z

    .line 1194
    :cond_0
    return-void
.end method
