.class Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton$1;
.super Ljava/lang/Object;
.source "HtcRecipientButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton$1;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton$1;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    # invokes: Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->viewClicked()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->access$000(Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;)V

    .line 97
    return-void
.end method
