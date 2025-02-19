.class public Landroid/telephony/SmsCbCmasInfo;
.super Ljava/lang/Object;
.source "SmsCbCmasInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CMAS_CATEGORY_CBRNE:I = 0xa

.field public static final CMAS_CATEGORY_ENV:I = 0x7

.field public static final CMAS_CATEGORY_FIRE:I = 0x5

.field public static final CMAS_CATEGORY_GEO:I = 0x0

.field public static final CMAS_CATEGORY_HEALTH:I = 0x6

.field public static final CMAS_CATEGORY_INFRA:I = 0x9

.field public static final CMAS_CATEGORY_MET:I = 0x1

.field public static final CMAS_CATEGORY_OTHER:I = 0xb

.field public static final CMAS_CATEGORY_RESCUE:I = 0x4

.field public static final CMAS_CATEGORY_SAFETY:I = 0x2

.field public static final CMAS_CATEGORY_SECURITY:I = 0x3

.field public static final CMAS_CATEGORY_TRANSPORT:I = 0x8

.field public static final CMAS_CATEGORY_UNKNOWN:I = -0x1

.field public static final CMAS_CERTAINTY_LIKELY:I = 0x1

.field public static final CMAS_CERTAINTY_OBSERVED:I = 0x0

.field public static final CMAS_CERTAINTY_UNKNOWN:I = -0x1

.field public static final CMAS_CLASS_CHILD_ABDUCTION_EMERGENCY:I = 0x3

.field public static final CMAS_CLASS_CMAS_EXERCISE:I = 0x5

.field public static final CMAS_CLASS_EXTREME_THREAT:I = 0x1

.field public static final CMAS_CLASS_OPERATOR_DEFINED_USE:I = 0x6

.field public static final CMAS_CLASS_PRESIDENTIAL_LEVEL_ALERT:I = 0x0

.field public static final CMAS_CLASS_REQUIRED_MONTHLY_TEST:I = 0x4

.field public static final CMAS_CLASS_SEVERE_THREAT:I = 0x2

.field public static final CMAS_CLASS_UNKNOWN:I = -0x1

.field public static final CMAS_RESPONSE_TYPE_ASSESS:I = 0x6

.field public static final CMAS_RESPONSE_TYPE_AVOID:I = 0x5

.field public static final CMAS_RESPONSE_TYPE_EVACUATE:I = 0x1

.field public static final CMAS_RESPONSE_TYPE_EXECUTE:I = 0x3

.field public static final CMAS_RESPONSE_TYPE_MONITOR:I = 0x4

.field public static final CMAS_RESPONSE_TYPE_NONE:I = 0x7

.field public static final CMAS_RESPONSE_TYPE_PREPARE:I = 0x2

.field public static final CMAS_RESPONSE_TYPE_SHELTER:I = 0x0

.field public static final CMAS_RESPONSE_TYPE_UNKNOWN:I = -0x1

.field public static final CMAS_SEVERITY_EXTREME:I = 0x0

.field public static final CMAS_SEVERITY_SEVERE:I = 0x1

.field public static final CMAS_SEVERITY_UNKNOWN:I = -0x1

.field public static final CMAS_URGENCY_EXPECTED:I = 0x1

.field public static final CMAS_URGENCY_IMMEDIATE:I = 0x0

.field public static final CMAS_URGENCY_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbCmasInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategory:I

.field private final mCertainty:I

.field private mExpireTimeMilli:J

.field private final mMessageClass:I

.field private final mResponseType:I

.field private final mSeverity:I

.field private final mUrgency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 321
    new-instance v0, Landroid/telephony/SmsCbCmasInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbCmasInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbCmasInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 204
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 205
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 206
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 207
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 208
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 209
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mExpireTimeMilli:J

    .line 223
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    return v0
.end method

.method public getCertainty()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    return v0
.end method

.method public getExpireTimeMilli()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mExpireTimeMilli:J

    return-wide v0
.end method

.method public getMessageClass()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    return v0
.end method

.method public getResponseType()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    return v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    return v0
.end method

.method public getUrgency()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    return v0
.end method

.method public setExpireTimeMilli(J)V
    .locals 1
    .param p1, "expireTimeMilli"    # J

    .prologue
    .line 295
    iput-wide p1, p0, Landroid/telephony/SmsCbCmasInfo;->mExpireTimeMilli:J

    .line 296
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbCmasInfo{messageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urgency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", certainty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 233
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mExpireTimeMilli:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 243
    return-void
.end method
