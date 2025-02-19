.class public Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PCSCF_Address"
.end annotation


# static fields
.field public static final ADDRESS_TYPE_FQDN_VALUE:I = 0x0

.field public static final ADDRESS_TYPE_IPV4_VALUE:I = 0x1

.field public static final ADDRESS_TYPE_IPV6_VALUE:I = 0x2

.field private static final RESPONSE_ADDRESS_LENGTH:I = 0x1

.field private static final RESPONSE_ADDRESS_TYPE:I = 0x2

.field private static final RESPONSE_DATA_RECORD_TAG:I


# instance fields
.field mAddress:Ljava/lang/String;

.field mAddressType:I

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[B)V
    .locals 1
    .param p2, "record"    # [B

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddressType:I

    .line 768
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    .line 781
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->parseRecord([B)V

    .line 782
    return-void
.end method

.method private parseRecord([B)V
    .locals 5
    .param p1, "record"    # [B

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 785
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v2, :cond_0

    .line 786
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    .line 787
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddressType:I

    .line 788
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget-byte v2, p1, v3

    if-lt v1, v2, :cond_0

    .line 790
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, "UTF-8"

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
