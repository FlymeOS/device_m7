.class public final enum Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;
.super Ljava/lang/Enum;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

.field public static final enum ACTION_TYPE_FUNCTION:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

.field public static final enum ACTION_TYPE_RADIO_TECH:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7381
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    const-string v1, "ACTION_TYPE_RADIO_TECH"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ACTION_TYPE_RADIO_TECH:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    .line 7382
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    const-string v1, "ACTION_TYPE_FUNCTION"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ACTION_TYPE_FUNCTION:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    .line 7380
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ACTION_TYPE_RADIO_TECH:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ACTION_TYPE_FUNCTION:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7380
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7380
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;
    .locals 1

    .prologue
    .line 7380
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    return-object v0
.end method
