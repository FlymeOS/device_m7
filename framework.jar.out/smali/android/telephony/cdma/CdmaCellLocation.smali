.class public Landroid/telephony/cdma/CdmaCellLocation;
.super Landroid/telephony/CellLocation;
.source "CdmaCellLocation.java"


# static fields
.field public static final INVALID_LAT_LONG:I = 0x7fffffff


# instance fields
.field private mBaseStationId:I

.field private mBaseStationLatitude:I

.field private mBaseStationLongitude:I

.field private mNetworkId:I

.field private mSystemId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 58
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 27
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 40
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 48
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 50
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 51
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 59
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 60
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 61
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 62
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 63
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 69
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 27
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 40
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 48
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 50
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 51
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 70
    const-string v0, "baseStationId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 71
    const-string v0, "baseStationLatitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 72
    const-string v0, "baseStationLongitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 73
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 74
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 75
    return-void
.end method

.method public static convertQuartSecToDecDegrees(I)D
    .locals 4
    .param p0, "quartSec"    # I

    .prologue
    .line 247
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0x278d00

    if-lt p0, v0, :cond_0

    const v0, 0x278d00

    if-le p0, v0, :cond_1

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid coordiante value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    int-to-double v0, p0

    const-wide v2, 0x40cc200000000000L    # 14400.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 210
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 170
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .local v2, "s":Landroid/telephony/cdma/CdmaCellLocation;
    if-nez p1, :cond_1

    .line 179
    .end local v2    # "s":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_0
    :goto_0
    return v3

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 179
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundleToFill"    # Landroid/os/Bundle;

    .prologue
    .line 219
    const-string v0, "baseStationId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v0, "baseStationLatitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v0, "baseStationLongitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    return-void
.end method

.method public getBaseStationId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    return v0
.end method

.method public getBaseStationLatitude()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    return v0
.end method

.method public getBaseStationLongitude()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 230
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCellLocationData(III)V
    .locals 0
    .param p1, "baseStationId"    # I
    .param p2, "baseStationLatitude"    # I
    .param p3, "baseStationLongitude"    # I

    .prologue
    .line 141
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 142
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 143
    iput p3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 144
    return-void
.end method

.method public setCellLocationData(IIIII)V
    .locals 0
    .param p1, "baseStationId"    # I
    .param p2, "baseStationLatitude"    # I
    .param p3, "baseStationLongitude"    # I
    .param p4, "systemId"    # I
    .param p5, "networkId"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 153
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 154
    iput p3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 155
    iput p4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 156
    iput p5, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 157
    return-void
.end method

.method public setStateInvalid()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 129
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 130
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 131
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 132
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "[xxx,xxx,xxx,xxx,xxx]"

    return-object v0
.end method
