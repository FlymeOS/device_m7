.class Lcom/htc/camera/effect/EffectController$1;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CameraParamsSetupEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectController;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectController;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/camera/effect/EffectController$1;->this$0:Lcom/htc/camera/effect/EffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController$1;->this$0:Lcom/htc/camera/effect/EffectController;

    # getter for: Lcom/htc/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectController;->access$000(Lcom/htc/camera/effect/EffectController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectController$1;->this$0:Lcom/htc/camera/effect/EffectController;

    # getter for: Lcom/htc/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/effect/EffectController;->access$000(Lcom/htc/camera/effect/EffectController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setColorEffect(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController$1;->this$0:Lcom/htc/camera/effect/EffectController;

    # getter for: Lcom/htc/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectController;->access$100(Lcom/htc/camera/effect/EffectController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/effect/EffectController$1;->this$0:Lcom/htc/camera/effect/EffectController;

    # getter for: Lcom/htc/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectController;->access$100(Lcom/htc/camera/effect/EffectController;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    .line 181
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectController$1;->this$0:Lcom/htc/camera/effect/EffectController;

    # getter for: Lcom/htc/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/effect/EffectController;->access$100(Lcom/htc/camera/effect/EffectController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController$1;->this$0:Lcom/htc/camera/effect/EffectController;

    # getter for: Lcom/htc/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectController;->access$200(Lcom/htc/camera/effect/EffectController;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/htc/camera/effect/GpuEffectParameters;

    .line 183
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    iget-object v1, v6, Lcom/htc/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    iget v2, v6, Lcom/htc/camera/effect/GpuEffectParameters;->n0:I

    iget v3, v6, Lcom/htc/camera/effect/GpuEffectParameters;->n1:I

    iget v4, v6, Lcom/htc/camera/effect/GpuEffectParameters;->n2:I

    iget v5, v6, Lcom/htc/camera/effect/GpuEffectParameters;->n3:I

    iget-boolean v6, v6, Lcom/htc/camera/effect/GpuEffectParameters;->enabled:Z

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 186
    :cond_2
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 167
    check-cast p3, Lcom/htc/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/effect/EffectController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
