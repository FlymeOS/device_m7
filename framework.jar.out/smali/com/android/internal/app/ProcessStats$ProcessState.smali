.class public final Lcom/android/internal/app/ProcessStats$ProcessState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessState"
.end annotation


# instance fields
.field mActive:Z

.field mAvgCachedKillPss:J

.field public mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

.field mCurState:I

.field mDead:Z

.field mLastPssState:I

.field mLastPssTime:J

.field mMaxCachedKillPss:J

.field mMinCachedKillPss:J

.field mMultiPackage:Z

.field mNumActiveServices:I

.field mNumCachedKill:I

.field mNumExcessiveCpu:I

.field mNumExcessiveWake:I

.field mNumStartedServices:I

.field public final mPackage:Ljava/lang/String;

.field mPssTable:[I

.field mPssTableSize:I

.field mStartTime:J

.field mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

.field mTmpNumInUse:I

.field public mTmpTotalTime:J

.field public final mUid:I

.field public final mVersion:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 2
    .param p1, "commonProcess"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 2960
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-direct {p0, v0, p5}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 2914
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2917
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2961
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2962
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 2963
    iput p3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 2964
    iput p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 2965
    iget v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2966
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 2967
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "processStats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 2946
    invoke-direct {p0, p1, p5}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 2914
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2917
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2947
    iput-object p0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2948
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 2949
    iput p3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 2950
    iput p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 2951
    return-void
.end method

.method private addCachedKill(IJJJ)V
    .locals 4
    .param p1, "num"    # I
    .param p2, "minPss"    # J
    .param p4, "avgPss"    # J
    .param p6, "maxPss"    # J

    .prologue
    .line 3333
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    .line 3334
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 3335
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 3336
    iput-wide p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 3337
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 3349
    :goto_0
    return-void

    .line 3339
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 3340
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 3342
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    .line 3343
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 3345
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    add-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 3347
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    goto :goto_0
.end method

.method private ensureNotDead()V
    .locals 3

    .prologue
    .line 3038
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-nez v0, :cond_0

    .line 3043
    :goto_0
    return-void

    .line 3041
    :cond_0
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessState dead: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " common.name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 9
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/ProcessStats$ProcessState;"
        }
    .end annotation

    .prologue
    .line 3390
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 3391
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3392
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-boolean v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v4, v2, :cond_0

    .line 3397
    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pulling dead proc: name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " common.name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v6, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    iget v7, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    iget-object v8, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    .line 3402
    :cond_0
    iget-boolean v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_4

    .line 3406
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, v4, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3408
    .local v3, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v3, :cond_1

    .line 3409
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No existing package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for multi-proc "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3413
    :cond_1
    iget v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 3414
    .local v1, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    if-nez v1, :cond_2

    .line 3415
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No existing package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for multi-proc "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3419
    :cond_2
    iget-object v4, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3420
    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v2, :cond_3

    .line 3421
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Didn\'t create per-package process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3424
    :cond_3
    iput-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3426
    .end local v1    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v3    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_4
    return-object v2
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 19
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    .line 3000
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 3001
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_0

    .line 3002
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v3, v18

    .line 3003
    .local v2, "ent":I
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v3, v2, v3

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v4, v3, v5

    .line 3004
    .local v4, "state":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    long-to-int v5, v6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v6}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v8, 0x2

    invoke-virtual {v3, v2, v8}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v10, 0x3

    invoke-virtual {v3, v2, v10}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v12, 0x4

    invoke-virtual {v3, v2, v12}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v12

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v14, 0x5

    invoke-virtual {v3, v2, v14}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v14

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v16

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 3001
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 3012
    .end local v2    # "ent":I
    .end local v4    # "state":I
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 3013
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 3014
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v3, :cond_1

    .line 3015
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 3018
    :cond_1
    return-void
.end method

.method addPss(IIJJJJJJ)V
    .locals 17
    .param p1, "state"    # I
    .param p2, "inCount"    # I
    .param p3, "minPss"    # J
    .param p5, "avgPss"    # J
    .param p7, "maxPss"    # J
    .param p9, "minUss"    # J
    .param p11, "avgUss"    # J
    .param p13, "maxUss"    # J

    .prologue
    .line 3255
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move/from16 v0, p1

    invoke-static {v8, v9, v0}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v5

    .line 3257
    .local v5, "idx":I
    if-ltz v5, :cond_1

    .line 3258
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v7, v8, v5

    .line 3269
    .local v7, "off":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v9, v7, v9

    sget v10, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3275
    .local v6, "longs":[J
    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v8, v7, v8

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v5, v8, v9

    .line 3276
    add-int/lit8 v8, v5, 0x0

    aget-wide v2, v6, v8

    .line 3277
    .local v2, "count":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_2

    .line 3278
    add-int/lit8 v8, v5, 0x0

    move/from16 v0, p2

    int-to-long v10, v0

    aput-wide v10, v6, v8

    .line 3279
    add-int/lit8 v8, v5, 0x1

    aput-wide p3, v6, v8

    .line 3280
    add-int/lit8 v8, v5, 0x2

    aput-wide p5, v6, v8

    .line 3281
    add-int/lit8 v8, v5, 0x3

    aput-wide p7, v6, v8

    .line 3282
    add-int/lit8 v8, v5, 0x4

    aput-wide p9, v6, v8

    .line 3283
    add-int/lit8 v8, v5, 0x5

    aput-wide p11, v6, v8

    .line 3284
    add-int/lit8 v8, v5, 0x6

    aput-wide p13, v6, v8

    .line 3306
    .end local v2    # "count":J
    .end local v6    # "longs":[J
    :cond_0
    :goto_1
    return-void

    .line 3260
    .end local v7    # "off":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iput-object v9, v8, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 3261
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    iput v9, v8, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 3262
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    xor-int/lit8 v9, v5, -0x1

    const/4 v10, 0x7

    move/from16 v0, p1

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v7

    .line 3263
    .restart local v7    # "off":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 3264
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v8, v8, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    goto :goto_0

    .line 3270
    :catch_0
    move-exception v4

    .line 3271
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "ProcessStats"

    const-string v9, "Encounter IndexOutOfBoundsException!!! Ignoring Pss data adding..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3286
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "count":J
    .restart local v6    # "longs":[J
    :cond_2
    add-int/lit8 v8, v5, 0x0

    move/from16 v0, p2

    int-to-long v10, v0

    add-long/2addr v10, v2

    aput-wide v10, v6, v8

    .line 3287
    add-int/lit8 v8, v5, 0x1

    aget-wide v8, v6, v8

    cmp-long v8, v8, p3

    if-lez v8, :cond_3

    .line 3288
    add-int/lit8 v8, v5, 0x1

    aput-wide p3, v6, v8

    .line 3290
    :cond_3
    add-int/lit8 v8, v5, 0x2

    add-int/lit8 v9, v5, 0x2

    aget-wide v10, v6, v9

    long-to-double v10, v10

    long-to-double v12, v2

    mul-double/2addr v10, v12

    move-wide/from16 v0, p5

    long-to-double v12, v0

    move/from16 v0, p2

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move/from16 v0, p2

    int-to-long v12, v0

    add-long/2addr v12, v2

    long-to-double v12, v12

    div-double/2addr v10, v12

    double-to-long v10, v10

    aput-wide v10, v6, v8

    .line 3293
    add-int/lit8 v8, v5, 0x3

    aget-wide v8, v6, v8

    cmp-long v8, v8, p7

    if-gez v8, :cond_4

    .line 3294
    add-int/lit8 v8, v5, 0x3

    aput-wide p7, v6, v8

    .line 3296
    :cond_4
    add-int/lit8 v8, v5, 0x4

    aget-wide v8, v6, v8

    cmp-long v8, v8, p9

    if-lez v8, :cond_5

    .line 3297
    add-int/lit8 v8, v5, 0x4

    aput-wide p9, v6, v8

    .line 3299
    :cond_5
    add-int/lit8 v8, v5, 0x5

    add-int/lit8 v9, v5, 0x5

    aget-wide v10, v6, v9

    long-to-double v10, v10

    long-to-double v12, v2

    mul-double/2addr v10, v12

    move-wide/from16 v0, p11

    long-to-double v12, v0

    move/from16 v0, p2

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move/from16 v0, p2

    int-to-long v12, v0

    add-long/2addr v12, v2

    long-to-double v12, v12

    div-double/2addr v10, v12

    double-to-long v10, v10

    aput-wide v10, v6, v8

    .line 3302
    add-int/lit8 v8, v5, 0x6

    aget-wide v8, v6, v8

    cmp-long v8, v8, p13

    if-gez v8, :cond_0

    .line 3303
    add-int/lit8 v8, v5, 0x6

    aput-wide p13, v6, v8

    goto/16 :goto_1
.end method

.method public addPss(JJZLandroid/util/ArrayMap;)V
    .locals 19
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "always"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3226
    .local p6, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3227
    if-nez p5, :cond_1

    .line 3228
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v3, v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 3251
    :cond_0
    return-void

    .line 3233
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 3234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    .line 3235
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 3237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 3240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v3, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v3, :cond_0

    .line 3244
    if-eqz p6, :cond_0

    .line 3245
    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_0

    .line 3246
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 3245
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "now"    # J

    .prologue
    .line 2970
    new-instance v0, Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    iget v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 2971
    .local v0, "pnew":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->copyDurationsTo(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 2972
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    if-eqz v1, :cond_2

    .line 2973
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2974
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2975
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v8, v1, :cond_1

    .line 2976
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v11, v1, v8

    .line 2977
    .local v11, "origEnt":I
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, v11, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v12, v1, v2

    .line 2978
    .local v12, "type":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x7

    invoke-virtual {v1, v8, v12, v2}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v10

    .line 2979
    .local v10, "newOff":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    or-int v2, v10, v12

    aput v2, v1, v8

    .line 2980
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    const/4 v1, 0x7

    if-ge v9, v1, :cond_0

    .line 2981
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2, v11, v9}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    invoke-virtual {v1, v10, v9, v2, v3}, Lcom/android/internal/app/ProcessStats;->setLong(IIJ)V

    .line 2980
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2975
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2984
    .end local v9    # "j":I
    .end local v10    # "newOff":I
    .end local v11    # "origEnt":I
    .end local v12    # "type":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2985
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 2987
    .end local v8    # "i":I
    :cond_2
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2988
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2989
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2990
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2991
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 2992
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 2993
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    iput-boolean v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 2994
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 2995
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 2996
    return-object v0
.end method

.method commitStateTime(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 3148
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3149
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v0, p1, v2

    .line 3150
    .local v0, "dur":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3151
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->addDuration(IJ)V

    .line 3154
    .end local v0    # "dur":J
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 3155
    return-void
.end method

.method decActiveServices(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 3177
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 3178
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 3180
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 3181
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_1

    .line 3182
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc active services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 3186
    :cond_1
    return-void
.end method

.method decStartedServices(IJLjava/lang/String;)V
    .locals 4
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 3211
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 3212
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 3214
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 3215
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    rem-int/lit8 v0, v0, 0xe

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 3216
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 3222
    :cond_1
    :goto_0
    return-void

    .line 3217
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-gez v0, :cond_1

    .line 3218
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc started services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    goto :goto_0
.end method

.method getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    .prologue
    .line 3430
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;->getDuration(IJ)J

    move-result-wide v0

    .line 3431
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v2, p1, :cond_0

    .line 3432
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 3434
    :cond_0
    return-wide v0
.end method

.method getPssAverage(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3448
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3449
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssMaximum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3453
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3454
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssMinimum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3443
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3444
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssSampleCount(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3438
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3439
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssUssAverage(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3463
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3464
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssUssMaximum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3468
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3469
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssUssMinimum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3458
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3459
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method incActiveServices(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 3164
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 3165
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 3167
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 3168
    return-void
.end method

.method incStartedServices(IJLjava/lang/String;)V
    .locals 2
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 3195
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 3196
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 3198
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 3199
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3200
    mul-int/lit8 v0, p1, 0xe

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 3202
    :cond_1
    return-void
.end method

.method public isInUse()Z
    .locals 2

    .prologue
    .line 3102
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeActive()V
    .locals 1

    .prologue
    .line 3093
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 3095
    return-void
.end method

.method makeDead()V
    .locals 1

    .prologue
    .line 3034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    .line 3035
    return-void
.end method

.method public makeInactive()V
    .locals 1

    .prologue
    .line 3098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 3099
    return-void
.end method

.method pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3364
    iget-boolean v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v3, :cond_2

    .line 3368
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 3369
    .local v2, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v2, :cond_0

    .line 3370
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Didn\'t find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3373
    :cond_0
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 3374
    .local v0, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    if-nez v0, :cond_1

    .line 3375
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Didn\'t find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3378
    :cond_1
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3379
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v1, :cond_3

    .line 3380
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Didn\'t create per-package process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v2    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_2
    move-object v1, p0

    .line 3385
    :cond_3
    return-object v1
.end method

.method readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "fully"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3065
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 3066
    .local v0, "multiPackage":Z
    :goto_0
    if-eqz p2, :cond_0

    .line 3067
    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 3070
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->readDurationsFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3089
    :cond_1
    :goto_1
    return v1

    .end local v0    # "multiPackage":Z
    :cond_2
    move v0, v1

    .line 3065
    goto :goto_0

    .line 3074
    .restart local v0    # "multiPackage":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    const-string/jumbo v5, "pss"

    # invokes: Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    invoke-static {v3, p1, v4, v5}, Lcom/android/internal/app/ProcessStats;->access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 3075
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    sget-object v4, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    if-eq v3, v4, :cond_1

    .line 3078
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    array-length v1, v1

    :cond_4
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 3079
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 3080
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 3081
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 3082
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_5

    .line 3083
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 3084
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 3085
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    :goto_2
    move v1, v2

    .line 3089
    goto :goto_1

    .line 3087
    :cond_5
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    goto :goto_2
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 10
    .param p2, "pss"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    const/4 v1, 0x1

    .line 3352
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3353
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 3354
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_1

    .line 3361
    :cond_0
    return-void

    .line 3358
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "ip":I
    :goto_0
    if-ltz v8, :cond_0

    .line 3359
    invoke-direct {p0, p1, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 3358
    add-int/lit8 v8, v8, -0x1

    goto :goto_0
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3321
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3322
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 3323
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_1

    .line 3330
    :cond_0
    return-void

    .line 3327
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3328
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 3327
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public reportExcessiveWake(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3309
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3310
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 3311
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_1

    .line 3318
    :cond_0
    return-void

    .line 3315
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3316
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 3315
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method resetSafely(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3021
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetDurationsSafely()V

    .line 3022
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 3023
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 3024
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    .line 3025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 3026
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 3027
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 3028
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 3029
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 3030
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 3031
    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3116
    .local p5, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    if-gez p1, :cond_2

    .line 3117
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-lez v1, :cond_1

    mul-int/lit8 v1, p2, 0xe

    add-int/lit8 p1, v1, 0x7

    .line 3124
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 3127
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_3

    .line 3136
    :cond_0
    return-void

    .line 3117
    :cond_1
    const/4 p1, -0x1

    goto :goto_0

    .line 3120
    :cond_2
    sget-object v1, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    aget v1, v1, p1

    mul-int/lit8 v2, p2, 0xe

    add-int p1, v1, v2

    goto :goto_0

    .line 3131
    :cond_3
    if-eqz p5, :cond_0

    .line 3132
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_1
    if-ltz v0, :cond_0

    .line 3133
    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 3132
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method setState(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "now"    # J

    .prologue
    .line 3139
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3140
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-eq v0, p1, :cond_0

    .line 3142
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 3143
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 3145
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3473
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3474
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3477
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3478
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, p0, :cond_1

    const-string v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3479
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .prologue
    .line 3046
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3047
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeDurationsToParcel(Landroid/os/Parcel;)V

    .line 3048
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3049
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v0, v1, :cond_1

    .line 3052
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3049
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3046
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3054
    .restart local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3055
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3056
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3057
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_2

    .line 3058
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3059
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3060
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3062
    :cond_2
    return-void
.end method
