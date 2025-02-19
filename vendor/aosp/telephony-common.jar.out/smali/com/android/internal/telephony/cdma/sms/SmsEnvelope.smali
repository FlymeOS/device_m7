.class public final Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
.super Ljava/lang/Object;
.source "SmsEnvelope.java"


# static fields
.field public static final MESSAGE_TYPE_ACKNOWLEDGE:I = 0x2

.field public static final MESSAGE_TYPE_BROADCAST:I = 0x1

.field public static final MESSAGE_TYPE_POINT_TO_POINT:I = 0x0

.field public static final SERVICECATEGORY_CMAS_AMBER:I = 0x1003

.field public static final SERVICECATEGORY_CMAS_EXTREME:I = 0x1001

.field public static final SERVICECATEGORY_CMAS_PRESIDENTIAL:I = 0x1000

.field public static final SERVICECATEGORY_CMAS_SEVERE:I = 0x1002

.field public static final SERVICECATEGORY_CMAS_TEST:I = 0x1004

.field public static final SERVICECATEGORY_EMERGENCY:I = 0x1

.field public static final SERVICECATEGORY_KDDI_DISASTER_INFORMATION:I = 0x26

.field public static final SERVICECATEGORY_KDDI_EARTHQUAKE_DUMMY:I = 0x22

.field public static final SERVICECATEGORY_KDDI_EARTHQUAKE_EARLY_WARNING:I = 0x21

.field public static final SERVICECATEGORY_KDDI_MAKER_TEST_DISASTER_INFORMATION:I = 0x8026

.field public static final SERVICECATEGORY_KDDI_MAKER_TEST_EARTHQUAKE_ALERT:I = 0x8001

.field public static final SERVICECATEGORY_KDDI_MAKER_TEST_EARTHQUAKE_DUMMY:I = 0x8022

.field public static final SERVICECATEGORY_KDDI_MAKER_TEST_EARTHQUAKE_EARLY_WARNING:I = 0x8021

.field public static final SERVICECATEGORY_KDDI_TEST_DISASTER_INFORMATION:I = 0xc026

.field public static final SERVICECATEGORY_KDDI_TEST_EARTHQUAKE_ALERT:I = 0xc001

.field public static final SERVICECATEGORY_KDDI_TEST_EARTHQUAKE_DUMMY:I = 0xc022

.field public static final SERVICECATEGORY_KDDI_TEST_EARTHQUAKE_EARLY_WARNING:I = 0xc021

.field public static final SERVICECATEGORY_UNKNOWN:I = 0x0

.field public static final SERVICE_CATEGORY_CMAS_CHILD_ABDUCTION_EMERGENCY:I = 0x1003

.field public static final SERVICE_CATEGORY_CMAS_EXTREME_THREAT:I = 0x1001

.field public static final SERVICE_CATEGORY_CMAS_LAST_RESERVED_VALUE:I = 0x10ff

.field public static final SERVICE_CATEGORY_CMAS_PRESIDENTIAL_LEVEL_ALERT:I = 0x1000

.field public static final SERVICE_CATEGORY_CMAS_SEVERE_THREAT:I = 0x1002

.field public static final SERVICE_CATEGORY_CMAS_TEST_MESSAGE:I = 0x1004

.field public static final TELESERVICE_CT_CMD_WAP:I = 0xfded

.field public static final TELESERVICE_CT_DM_WAP:I = 0xfdf1

.field public static final TELESERVICE_CT_WAP:I = 0xfdea

.field public static final TELESERVICE_MWI:I = 0x40000

.field public static final TELESERVICE_NOT_SET:I = 0x0

.field public static final TELESERVICE_SCPT:I = 0x1006

.field public static final TELESERVICE_VMN:I = 0x1003

.field public static final TELESERVICE_WAP:I = 0x1004

.field public static final TELESERVICE_WEMT:I = 0x1005

.field public static final TELESERVICE_WMT:I = 0x1002

.field public static final TELESERVICE_WPT:I = 0x1001


# instance fields
.field public bearerData:[B

.field public bearerReply:I

.field public causeCode:B

.field public destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public errorClass:B

.field public isServicePresented:Z

.field public messageType:I

.field public origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field public replySeqNo:B

.field public serviceCategory:I

.field public teleService:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 126
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 182
    return-void
.end method
