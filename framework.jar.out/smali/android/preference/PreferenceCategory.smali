.class public Landroid/preference/PreferenceCategory;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCategory"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x101008c

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "convertView"
    .parameter "parent"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const/4 v10, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/preference/PreferenceCategory;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Llewa/util/LewaUiUtil;->isV5Ui(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v8, Lcom/android/internal/R$styleable;->View:[I

    const v9, 0x1010208

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .local v0, N:I
    const/4 v4, 0x0

    .local v4, leftPadding:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .local v2, attr:I
    const/16 v6, 0xe

    if-ne v2, v6, :cond_2

    const/4 v6, -0x1

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .end local v2           #attr:I
    :cond_0
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, titleView:Landroid/widget/TextView;
    if-eqz v5, :cond_1

    invoke-virtual {v5, v4, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .end local v0           #N:I
    .end local v1           #a:Landroid/content/res/TypedArray;
    .end local v3           #i:I
    .end local v4           #leftPadding:I
    .end local v5           #titleView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    return-object p1

    .restart local v0       #N:I
    .restart local v1       #a:Landroid/content/res/TypedArray;
    .restart local v2       #attr:I
    .restart local v3       #i:I
    .restart local v4       #leftPadding:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareAddPreference(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    instance-of v0, p1, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
