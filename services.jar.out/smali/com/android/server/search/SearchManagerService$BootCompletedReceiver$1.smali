.class Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;
.super Ljava/lang/Thread;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;->this$1:Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 134
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;->this$1:Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/search/SearchManagerService;->access$200(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;->this$1:Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;->this$1:Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/search/SearchManagerService;

    # invokes: Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;
    invoke-static {v0, v2}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;I)Lcom/android/server/search/Searchables;

    .line 136
    return-void
.end method
