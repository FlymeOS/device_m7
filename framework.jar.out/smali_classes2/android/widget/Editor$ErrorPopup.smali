.class Landroid/widget/Editor$ErrorPopup;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPopup"
.end annotation


# instance fields
.field private mAbove:Z

.field private mPopupInlineErrorAboveBackgroundId:I

.field private mPopupInlineErrorBackgroundId:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;II)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 4592
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 4586
    iput-boolean v0, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    .line 4588
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 4589
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 4593
    iput-object p1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 4597
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0xe6

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 4599
    iget-object v0, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4600
    return-void
.end method

.method private getResourceId(II)I
    .locals 3
    .param p1, "currentId"    # I
    .param p2, "index"    # I

    .prologue
    .line 4619
    if-nez p1, :cond_0

    .line 4620
    iget-object v1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4622
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 4623
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4625
    .end local v0    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_0
    return p1
.end method


# virtual methods
.method fixDirection(Z)V
    .locals 2
    .param p1, "above"    # Z

    .prologue
    .line 4603
    iput-boolean p1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    .line 4605
    if-eqz p1, :cond_0

    .line 4606
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    const/16 v1, 0xe7

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 4614
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4616
    return-void

    .line 4610
    :cond_0
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0xe6

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    goto :goto_0

    .line 4614
    :cond_1
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    goto :goto_1
.end method

.method public update(IIIIZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "force"    # Z

    .prologue
    .line 4630
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 4632
    invoke-virtual {p0}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v0

    .line 4633
    .local v0, "above":Z
    iget-boolean v1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    if-eq v0, v1, :cond_0

    .line 4634
    invoke-virtual {p0, v0}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 4636
    :cond_0
    return-void
.end method
