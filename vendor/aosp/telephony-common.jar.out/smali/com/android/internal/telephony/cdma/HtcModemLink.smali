.class public Lcom/android/internal/telephony/cdma/HtcModemLink;
.super Landroid/os/Handler;
.source "HtcModemLink.java"


# static fields
.field private static final DBG:Z

.field private static final EVENT_3GIND:I = 0x1

.field private static final EVENT_MODEM_LINK_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDataActivityState:I

.field private mModemLinkOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcModemLink;->DBG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 30
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemLinkStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 31
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerFor3GIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemLinkStatus(Landroid/os/Handler;)V

    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterFor3GIndicator(Landroid/os/Handler;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    .line 42
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "CDMA"

    const-string v1, "HtcModemLink finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public getDataActivityState()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mDataActivityState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 59
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v5, :cond_2

    .line 62
    :cond_0
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " HtcModemLink drop event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 67
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v4, v5

    check-cast v4, [I

    .line 70
    .local v4, "status":[I
    aget v5, v4, v6

    if-ne v5, v2, :cond_4

    .line 72
    .local v2, "modemLinkState":Z
    :goto_1
    sget-boolean v5, Lcom/android/internal/telephony/cdma/HtcModemLink;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modemLinkState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; mModemLinkOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    if-eq v5, v2, :cond_1

    .line 75
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    .line 76
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataActivity()V

    goto :goto_0

    .end local v2    # "modemLinkState":Z
    :cond_4
    move v2, v6

    .line 70
    goto :goto_1

    .line 80
    .end local v4    # "status":[I
    :pswitch_1
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v1, v5

    check-cast v1, [I

    .line 81
    .local v1, "inds":[I
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 82
    aget v3, v1, v6

    .line 84
    .local v3, "state":I
    sget-boolean v5, Lcom/android/internal/telephony/cdma/HtcModemLink;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3gind state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; mDataActivityState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mDataActivityState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_5
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mDataActivityState:I

    if-eq v3, v5, :cond_1

    .line 87
    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mDataActivityState:I

    .line 88
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    if-eqz v5, :cond_1

    .line 89
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataActivity()V

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isModemLinkOn()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    return v0
.end method
