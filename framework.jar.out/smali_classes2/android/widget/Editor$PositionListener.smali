.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field public mAttached:Z

.field public mTextViewHeight:I

.field public mTextViewWidth:I

.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionY:I

.field private mScrollHasChanged:Z

.field final mTempCoords:[I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 2299
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2303
    iput v1, p0, Landroid/widget/Editor$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 2304
    new-array v0, v1, [Landroid/widget/Editor$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 2306
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    .line 2307
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 2312
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 2299
    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private updatePosition()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2387
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 2389
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$PositionListener;->updatePositionHasChanged()V

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$PositionListener;->updatemScrollHasChanged()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 5
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "canMove"    # Z

    .prologue
    .line 2324
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v4, :cond_0

    .line 2325
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 2326
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 2327
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2330
    .end local v3    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    .line 2331
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_3

    .line 2332
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v4, v1

    .line 2333
    .local v2, "listener":Landroid/widget/Editor$TextViewPositionListener;
    if-ne v2, p1, :cond_1

    .line 2343
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :goto_1
    return-void

    .line 2335
    .restart local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    .line 2336
    move v0, v1

    .line 2331
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2340
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aput-object p1, v4, v0

    .line 2341
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 2342
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    goto :goto_1
.end method

.method public getPositionX()I
    .locals 1

    .prologue
    .line 2361
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 2365
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method public isPositionChanged()Z
    .locals 1

    .prologue
    .line 2319
    iget-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    return v0
.end method

.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 2370
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 2372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    .line 2373
    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 2374
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v1, v2, v0

    .line 2375
    .local v1, "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v1, :cond_1

    .line 2376
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    iget-boolean v4, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    iget-boolean v5, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 2372
    .end local v1    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2382
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 2383
    const/4 v2, 0x1

    return v2
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 2396
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 2397
    return-void
.end method

.method public removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 4
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;

    .prologue
    .line 2346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 2347
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 2348
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2349
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 2354
    :cond_0
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v2, :cond_1

    .line 2355
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2356
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2358
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void

    .line 2346
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updatePositionHasChanged()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->isAttached()Z

    move-result v0

    .local v0, "attached":Z
    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v3, v3, v1

    iget v4, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v3, v3, v2

    iget v4, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Landroid/widget/Editor$PositionListener;->mAttached:Z

    if-eq v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mAttached:Z

    return-void
.end method

.method private updatemScrollHasChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    .local v0, "textView":Landroid/widget/TextView;
    iget v1, p0, Landroid/widget/Editor$PositionListener;->mTextViewWidth:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mTextViewWidth:I

    iput-boolean v3, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    :cond_0
    iget v1, p0, Landroid/widget/Editor$PositionListener;->mTextViewHeight:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mTextViewHeight:I

    iput-boolean v3, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    :cond_1
    return-void
.end method
