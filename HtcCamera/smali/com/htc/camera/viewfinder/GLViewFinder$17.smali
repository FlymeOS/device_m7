.class Lcom/htc/camera/viewfinder/GLViewFinder$17;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field final synthetic val$handle:Lcom/htc/camera/CloseableHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CloseableHandle;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$17;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$17;->val$handle:Lcom/htc/camera/CloseableHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$17;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$17;->val$handle:Lcom/htc/camera/CloseableHandle;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->enableHighFrameRateInternal(Lcom/htc/camera/Handle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3700(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V

    .line 1154
    return-void
.end method
