.class Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit$HtcPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreloadClassesTask"
.end annotation


# instance fields
.field private mNumber:I

.field private mStartPos:I

.field final synthetic this$0:Lcom/android/internal/os/ZygoteInit$HtcPreload;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;II)V
    .locals 3
    .param p2, "startPos"    # I
    .param p3, "number"    # I

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->this$0:Lcom/android/internal/os/ZygoteInit$HtcPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput p2, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mStartPos:I

    .line 1317
    iput p3, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mNumber:I

    .line 1318
    # getter for: Lcom/android/internal/os/ZygoteInit$HtcPreload;->mClasses:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->access$800(Lcom/android/internal/os/ZygoteInit$HtcPreload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1319
    .local v0, "nSize":I
    iget v1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mStartPos:I

    iget v2, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mNumber:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_0

    .line 1320
    iget v1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mStartPos:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mNumber:I

    .line 1322
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1326
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 1327
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preloading classes...i="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mStartPos:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1330
    .local v4, "startTime":J
    iget v7, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mStartPos:I

    iget v8, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mNumber:I

    add-int v1, v7, v8

    .line 1331
    .local v1, "endPos":I
    iget v2, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mStartPos:I

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1332
    iget-object v7, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->this$0:Lcom/android/internal/os/ZygoteInit$HtcPreload;

    # getter for: Lcom/android/internal/os/ZygoteInit$HtcPreload;->mClasses:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->access$800(Lcom/android/internal/os/ZygoteInit$HtcPreload;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1334
    .local v3, "strClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1331
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found for preloading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1337
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 1338
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem preloading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1339
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v6

    .line 1340
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error preloading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1341
    iget-object v7, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->this$0:Lcom/android/internal/os/ZygoteInit$HtcPreload;

    const/4 v8, 0x1

    # setter for: Lcom/android/internal/os/ZygoteInit$HtcPreload;->mPreloadFail:Z
    invoke-static {v7, v8}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->access$602(Lcom/android/internal/os/ZygoteInit$HtcPreload;Z)Z

    .line 1342
    instance-of v7, v6, Ljava/lang/Error;

    if-eqz v7, :cond_0

    .line 1343
    check-cast v6, Ljava/lang/Error;

    .end local v6    # "t":Ljava/lang/Throwable;
    throw v6

    .line 1345
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v7, v6, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_1

    .line 1346
    check-cast v6, Ljava/lang/RuntimeException;

    .end local v6    # "t":Ljava/lang/Throwable;
    throw v6

    .line 1348
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1352
    .end local v3    # "strClassName":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "...preloaded "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;->mNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " classes in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return-void
.end method
