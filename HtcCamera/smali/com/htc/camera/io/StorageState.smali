.class public final enum Lcom/htc/camera/io/StorageState;
.super Ljava/lang/Enum;
.source "StorageState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/io/StorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/io/StorageState;

.field public static final enum Full:Lcom/htc/camera/io/StorageState;

.field public static final enum NoStorage:Lcom/htc/camera/io/StorageState;

.field public static final enum OK:Lcom/htc/camera/io/StorageState;

.field public static final enum ReadOnly:Lcom/htc/camera/io/StorageState;

.field public static final enum Shared:Lcom/htc/camera/io/StorageState;

.field public static final enum Unknown:Lcom/htc/camera/io/StorageState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/io/StorageState;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/io/StorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/io/StorageState;->Unknown:Lcom/htc/camera/io/StorageState;

    .line 6
    new-instance v0, Lcom/htc/camera/io/StorageState;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/io/StorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    .line 7
    new-instance v0, Lcom/htc/camera/io/StorageState;

    const-string v1, "NoStorage"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/io/StorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/io/StorageState;->NoStorage:Lcom/htc/camera/io/StorageState;

    .line 8
    new-instance v0, Lcom/htc/camera/io/StorageState;

    const-string v1, "Shared"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/io/StorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/io/StorageState;->Shared:Lcom/htc/camera/io/StorageState;

    .line 9
    new-instance v0, Lcom/htc/camera/io/StorageState;

    const-string v1, "Full"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/io/StorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    .line 10
    new-instance v0, Lcom/htc/camera/io/StorageState;

    const-string v1, "ReadOnly"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/io/StorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/io/StorageState;->ReadOnly:Lcom/htc/camera/io/StorageState;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/io/StorageState;

    sget-object v1, Lcom/htc/camera/io/StorageState;->Unknown:Lcom/htc/camera/io/StorageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/io/StorageState;->NoStorage:Lcom/htc/camera/io/StorageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/io/StorageState;->Shared:Lcom/htc/camera/io/StorageState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/io/StorageState;->ReadOnly:Lcom/htc/camera/io/StorageState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/io/StorageState;->$VALUES:[Lcom/htc/camera/io/StorageState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/io/StorageState;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/io/StorageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/io/StorageState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/io/StorageState;->$VALUES:[Lcom/htc/camera/io/StorageState;

    invoke-virtual {v0}, [Lcom/htc/camera/io/StorageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/io/StorageState;

    return-object v0
.end method
