.class public Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UserIntention"
.end annotation


# instance fields
.field public count:I

.field public lastIntention:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field public uiId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 2700
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2701
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->uiId:I

    .line 2702
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->count:I

    .line 2703
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->lastIntention:I

    .line 2704
    return-void
.end method


# virtual methods
.method decrease()V
    .locals 3

    .prologue
    .line 2711
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->count:I

    .line 2712
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrease "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->uiId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uiCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uiLast="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->lastIntention:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2713
    return-void
.end method

.method increase(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2706
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->count:I

    .line 2707
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->lastIntention:I

    .line 2708
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->uiId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uiCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uiLast="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->lastIntention:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2709
    return-void

    .line 2707
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingDisabling()Z
    .locals 1

    .prologue
    .line 2721
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->count:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->lastIntention:I

    if-nez v0, :cond_0

    .line 2722
    const/4 v0, 0x1

    .line 2724
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingEnabling()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2715
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->count:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->lastIntention:I

    if-ne v1, v0, :cond_0

    .line 2718
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->uiId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ui.count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ui.last="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$UserIntention;->lastIntention:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2728
    .local v0, "tmp":Ljava/lang/String;
    return-object v0
.end method
