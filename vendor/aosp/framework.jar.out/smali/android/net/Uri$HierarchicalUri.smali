.class Landroid/net/Uri$HierarchicalUri;
.super Landroid/net/Uri$AbstractHierarchicalUri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HierarchicalUri"
.end annotation


# static fields
.field static final TYPE_ID:I = 0x3


# instance fields
.field private final authority:Landroid/net/Uri$Part;

.field private final fragment:Landroid/net/Uri$Part;

.field private final path:Landroid/net/Uri$PathPart;

.field private final query:Landroid/net/Uri$Part;

.field private final scheme:Ljava/lang/String;

.field private ssp:Landroid/net/Uri$Part;

.field private volatile uriString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Landroid/net/Uri$Part;
    .param p3, "path"    # Landroid/net/Uri$PathPart;
    .param p4, "query"    # Landroid/net/Uri$Part;
    .param p5, "fragment"    # Landroid/net/Uri$Part;

    .prologue
    .line 1148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>(Landroid/net/Uri$1;)V

    .line 1268
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    .line 1149
    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    .line 1150
    invoke-static {p2}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    .line 1151
    if-nez p3, :cond_0

    sget-object p3, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    .end local p3    # "path":Landroid/net/Uri$PathPart;
    :cond_0
    iput-object p3, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    .line 1152
    invoke-static {p4}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    .line 1153
    invoke-static {p5}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    .line 1154
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/net/Uri$Part;
    .param p3, "x2"    # Landroid/net/Uri$PathPart;
    .param p4, "x3"    # Landroid/net/Uri$Part;
    .param p5, "x4"    # Landroid/net/Uri$Part;
    .param p6, "x5"    # Landroid/net/Uri$1;

    .prologue
    .line 1136
    invoke-direct/range {p0 .. p5}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    return-void
.end method

.method private appendSspTo(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1216
    iget-object v2, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {v2}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, "encodedAuthority":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1219
    const-string v2, "//"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    :cond_0
    iget-object v2, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v2}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v1

    .line 1223
    .local v1, "encodedPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1224
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    :cond_1
    iget-object v2, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {v2}, Landroid/net/Uri$Part;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1228
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {v3}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    :cond_2
    return-void
.end method

.method private getSsp()Landroid/net/Uri$Part;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->ssp:Landroid/net/Uri$Part;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->makeSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->ssp:Landroid/net/Uri$Part;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->ssp:Landroid/net/Uri$Part;

    goto :goto_0
.end method

.method private makeSchemeSpecificPart()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1211
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/net/Uri$HierarchicalUri;->appendSspTo(Ljava/lang/StringBuilder;)V

    .line 1212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeUriString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1281
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1282
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1285
    :cond_0
    invoke-direct {p0, v0}, Landroid/net/Uri$HierarchicalUri;->appendSspTo(Ljava/lang/StringBuilder;)V

    .line 1287
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v1}, Landroid/net/Uri$Part;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1288
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v2}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 6
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1157
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    move-result-object v2

    invoke-static {p0}, Landroid/net/Uri$PathPart;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$PathPart;

    move-result-object v3

    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    move-result-object v4

    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    return-object v0
.end method


# virtual methods
.method public buildUpon()Landroid/net/Uri$Builder;
    .locals 2

    .prologue
    .line 1295
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1199
    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1265
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getPathSegments()Landroid/net/Uri$PathSegments;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1203
    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHierarchical()Z
    .locals 1

    .prologue
    .line 1180
    const/4 v0, 0x1

    return v0
.end method

.method public isRelative()Z
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1273
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1274
    .local v0, "cached":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 1273
    .end local v0    # "cached":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1274
    .restart local v0    # "cached":Z
    :cond_1
    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->makeUriString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1171
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Part;->writeTo(Landroid/os/Parcel;)V

    .line 1174
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v0, p1}, Landroid/net/Uri$PathPart;->writeTo(Landroid/os/Parcel;)V

    .line 1175
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Part;->writeTo(Landroid/os/Parcel;)V

    .line 1176
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Part;->writeTo(Landroid/os/Parcel;)V

    .line 1177
    return-void
.end method
