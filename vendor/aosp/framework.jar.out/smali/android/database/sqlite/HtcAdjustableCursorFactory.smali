.class public Landroid/database/sqlite/HtcAdjustableCursorFactory;
.super Ljava/lang/Object;
.source "HtcAdjustableCursorFactory.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAdjCursorFactory"


# instance fields
.field private isInitialized:Z

.field private mCWSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    sget v0, Landroid/database/CursorWindow;->DEFAULT_WINDOW_SIZE:I

    invoke-direct {p0, v0}, Landroid/database/sqlite/HtcAdjustableCursorFactory;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "cwSize"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/HtcAdjustableCursorFactory;->isInitialized:Z

    .line 35
    invoke-virtual {p0, p1}, Landroid/database/sqlite/HtcAdjustableCursorFactory;->setCursorWindowSize(I)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/HtcAdjustableCursorFactory;->isInitialized:Z

    .line 37
    return-void
.end method


# virtual methods
.method public getCursorWindowSize()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/database/sqlite/HtcAdjustableCursorFactory;->mCWSize:I

    return v0
.end method

.method public getDefaultCursorWindowSize()I
    .locals 1

    .prologue
    .line 84
    sget v0, Landroid/database/CursorWindow;->DEFAULT_WINDOW_SIZE:I

    return v0
.end method

.method public getMinimumCursorWindowSize()I
    .locals 1

    .prologue
    .line 91
    const/high16 v0, 0x100000

    return v0
.end method

.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "masterQuery"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "query"    # Landroid/database/sqlite/SQLiteQuery;

    .prologue
    .line 100
    new-instance v0, Landroid/database/sqlite/HtcSQLiteAdjustableCursor;

    iget v5, p0, Landroid/database/sqlite/HtcAdjustableCursorFactory;->mCWSize:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/HtcSQLiteAdjustableCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;I)V

    return-object v0
.end method

.method public setCursorWindowSize(I)V
    .locals 4
    .param p1, "cwSize"    # I

    .prologue
    const/high16 v3, 0x100000

    .line 54
    if-le p1, v3, :cond_1

    .line 55
    iput p1, p0, Landroid/database/sqlite/HtcAdjustableCursorFactory;->mCWSize:I

    .line 56
    iget-boolean v0, p0, Landroid/database/sqlite/HtcAdjustableCursorFactory;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "HtcAdjCursorFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set CursorWindow size to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/HtcAdjustableCursorFactory;->mCWSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, Tid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iput v3, p0, Landroid/database/sqlite/HtcAdjustableCursorFactory;->mCWSize:I

    .line 61
    const-string v0, "HtcAdjCursorFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set CursorWindow size to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/HtcAdjustableCursorFactory;->mCWSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, min size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB is used, Tid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultCursorWindowSize()V
    .locals 1

    .prologue
    .line 70
    sget v0, Landroid/database/CursorWindow;->DEFAULT_WINDOW_SIZE:I

    invoke-virtual {p0, v0}, Landroid/database/sqlite/HtcAdjustableCursorFactory;->setCursorWindowSize(I)V

    .line 71
    return-void
.end method
