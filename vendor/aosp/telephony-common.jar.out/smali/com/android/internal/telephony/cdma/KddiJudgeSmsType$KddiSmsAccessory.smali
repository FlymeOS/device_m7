.class public Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
.super Ljava/lang/Object;
.source "KddiJudgeSmsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KddiSmsAccessory"
.end annotation


# static fields
.field public static final KDDI_REPLY_ACK:I = 0x0

.field public static final KDDI_REPLY_DEPEND_APP:I = 0x2

.field public static final KDDI_REPLY_NACK:I = 0x1


# instance fields
.field private mResponseType:I

.field private mSendAction:Ljava/lang/String;

.field private mSendPermission:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "response"    # I

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->this$0:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->mSendAction:Ljava/lang/String;

    .line 486
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->mSendPermission:Ljava/lang/String;

    .line 487
    iput p4, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->mResponseType:I

    .line 488
    return-void
.end method


# virtual methods
.method public kddiGetResponseType()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->mResponseType:I

    return v0
.end method

.method public kddiGetSendAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->mSendAction:Ljava/lang/String;

    return-object v0
.end method

.method public kddiGetSendPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->mSendPermission:Ljava/lang/String;

    return-object v0
.end method
