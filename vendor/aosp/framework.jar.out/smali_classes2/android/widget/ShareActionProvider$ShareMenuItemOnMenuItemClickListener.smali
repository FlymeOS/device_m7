.class Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareMenuItemOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Landroid/widget/ShareActionProvider;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ShareActionProvider;
    .param p2, "x1"    # Landroid/widget/ShareActionProvider$1;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 295
    iget-object v4, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    # getter for: Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/ShareActionProvider;->access$100(Landroid/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    # getter for: Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;
    invoke-static {v5}, Landroid/widget/ShareActionProvider;->access$200(Landroid/widget/ShareActionProvider;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v1

    .line 297
    .local v1, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 298
    .local v2, "itemId":I
    invoke-virtual {v1, v2}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v3

    .line 299
    .local v3, "launchIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 300
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    :cond_0
    const/high16 v4, 0x8080000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    :cond_1
    iget-object v4, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    # getter for: Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/ShareActionProvider;->access$100(Landroid/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 308
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method
