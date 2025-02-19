.class public final Landroid/provider/Telephony$Threads;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# static fields
.field public static final BROADCAST_THREAD:I = 0x1

.field public static final COMMON_THREAD:I

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_V2_URI:Landroid/net/Uri;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final OBSOLETE_THREADS_URI:Landroid/net/Uri;

.field public static final OBSOLETE_THREADS_V2_URI:Landroid/net/Uri;

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;

.field private static final THREAD_ID_CONTENT_V2_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2436
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    .line 2437
    const-string v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 2439
    const-string v0, "content://mms-sms-v2/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_V2_URI:Landroid/net/Uri;

    .line 2441
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 2443
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 2445
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "obsolete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    .line 2447
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    const-string v1, "obsolete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_V2_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2455
    return-void
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipient"    # Ljava/lang/String;

    .prologue
    .line 2463
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2465
    .local v0, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2466
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;I)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    .line 2578
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2580
    .local v0, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2581
    invoke-static {p0, v0, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2488
    sget-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 2490
    .local v10, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2491
    .local v9, "recipient":Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2492
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2495
    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v10, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 2498
    .end local v9    # "recipient":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2503
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2508
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 2510
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2511
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2516
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 2513
    :cond_2
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2516
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2520
    :cond_3
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId failed with uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2516
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .prologue
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2589
    sget-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 2591
    .local v11, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2592
    :cond_0
    const-string v0, "phone_type"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2599
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2600
    .local v10, "recipient":Ljava/lang/String;
    invoke-static {v10}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2601
    invoke-static {v10}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2604
    :cond_1
    const-string v0, "recipient"

    invoke-virtual {v11, v0, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 2594
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "recipient":Ljava/lang/String;
    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 2596
    .local v9, "phoneManager":Landroid/telephony/TelephonyManager;
    const-string v0, "phone_type"

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 2607
    .end local v9    # "phoneManager":Landroid/telephony/TelephonyManager;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2614
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2616
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 2618
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2619
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2624
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 2621
    :cond_4
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2624
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2628
    :cond_5
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId failed with uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2624
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getOrCreateThreadIdV2(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipient"    # Ljava/lang/String;

    .prologue
    .line 2470
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2472
    .local v0, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2473
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadIdV2(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getOrCreateThreadIdV2(Landroid/content/Context;Ljava/util/Set;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2536
    sget-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 2538
    .local v10, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2539
    .local v9, "recipient":Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2540
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2543
    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v10, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 2546
    .end local v9    # "recipient":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2550
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2553
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 2554
    # getter for: Landroid/provider/Telephony;->HTC_DEBUG:Z
    invoke-static {}, Landroid/provider/Telephony;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2555
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId cursor cnt: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2560
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2565
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 2562
    :cond_3
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2565
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2569
    :cond_4
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId failed with uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2565
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
