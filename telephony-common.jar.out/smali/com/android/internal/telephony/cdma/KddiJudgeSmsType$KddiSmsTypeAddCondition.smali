.class public Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
.super Ljava/lang/Object;
.source "KddiJudgeSmsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KddiSmsTypeAddCondition"
.end annotation


# instance fields
.field public mCondition:[B

.field public mConditionLen:I

.field public mConditionOffset:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;II[B)V
    .locals 0
    .param p2, "conditionOffset"    # I
    .param p3, "conditionLen"    # I
    .param p4, "condition"    # [B

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->this$0:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput p2, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionOffset:I

    .line 452
    iput p3, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    .line 453
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    .line 454
    return-void
.end method
