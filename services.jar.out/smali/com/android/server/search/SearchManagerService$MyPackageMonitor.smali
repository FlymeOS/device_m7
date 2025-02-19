.class Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private updateSearchables()V
    .locals 6

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 165
    .local v0, "changingUserId":I
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v5, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    # invokes: Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;
    invoke-static {v3, v5}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;I)Lcom/android/server/search/Searchables;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/search/Searchables;->buildSearchableList()V

    .line 173
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$200(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 179
    return-void

    .line 167
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    .line 161
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    .line 156
    return-void
.end method
