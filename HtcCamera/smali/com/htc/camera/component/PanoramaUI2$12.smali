.class Lcom/htc/camera/component/PanoramaUI2$12;
.super Ljava/lang/Object;
.source "PanoramaUI2.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaUI2$12;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$12;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # invokes: Lcom/htc/camera/component/PanoramaUI2;->hideReviewScreen()V
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaUI2;->access$1300(Lcom/htc/camera/component/PanoramaUI2;)V

    .line 1172
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$12;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # invokes: Lcom/htc/camera/component/PanoramaUI2;->openCaptureUI()V
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaUI2;->access$1500(Lcom/htc/camera/component/PanoramaUI2;)V

    .line 1173
    return-void
.end method
