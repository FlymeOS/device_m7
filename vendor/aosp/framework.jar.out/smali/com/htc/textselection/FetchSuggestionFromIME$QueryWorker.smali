.class Lcom/htc/textselection/FetchSuggestionFromIME$QueryWorker;
.super Landroid/os/AsyncTask;
.source "FetchSuggestionFromIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/textselection/FetchSuggestionFromIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "[[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field lang:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/textselection/FetchSuggestionFromIME;


# direct methods
.method private constructor <init>(Lcom/htc/textselection/FetchSuggestionFromIME;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/textselection/FetchSuggestionFromIME$QueryWorker;->this$0:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 402
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/htc/textselection/FetchSuggestionFromIME$QueryWorker;->doInBackground([Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[[Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME$QueryWorker;->this$0:Lcom/htc/textselection/FetchSuggestionFromIME;

    iget-object v1, p0, Lcom/htc/textselection/FetchSuggestionFromIME$QueryWorker;->lang:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/htc/textselection/FetchSuggestionFromIME;->getSuggestionOf([Ljava/lang/String;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 408
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 409
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 402
    check-cast p1, [[Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/htc/textselection/FetchSuggestionFromIME$QueryWorker;->onPostExecute([[Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([[Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # [[Ljava/lang/String;

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 420
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 421
    return-void
.end method
