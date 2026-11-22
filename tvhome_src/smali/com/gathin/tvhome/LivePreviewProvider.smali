.class public Lcom/gathin/tvhome/LivePreviewProvider;
.super Ljava/lang/Object;
.source "LivePreviewProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;
    }
.end annotation


# static fields
.field private static final DAILY_ROTATIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "India v Pakistan LIVE"

    const-string v3, "Live Cricket \u00b7 Sony LIV HD \u00b7 3:30 PM"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "UEFA Champions League LIVE"

    const-string v3, "Live Football \u00b7 Sony LIV HD"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Scam 2003 \u00b7 The Telgi Story"

    const-string v3, "Sony LIV Original Series"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "MasterChef India \u00b7 New Season"

    const-string v3, "Culinary Reality \u00b7 Sony LIV"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Gullak \u00b7 Season 4"

    const-string v3, "Comedy Drama \u00b7 Sony LIV Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "T20 International Series LIVE"

    const-string v3, "Live Cricket \u00b7 Sony Sports"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Maharani \u00b7 Season 3"

    const-string v3, "Political Drama \u00b7 Sony LIV Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "com.sonyliv"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "New Zealand v India \u00b7 Highlights"

    const-string v3, "1st Test Day 4 \u00b7 JioHotstar 4K HDR"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Premier League LIVE"

    const-string v3, "Arsenal vs Chelsea \u00b7 Hotstar 4K"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Taaza Khabar \u00b7 Season 2"

    const-string v3, "Fantasy Thriller \u00b7 Hotstar Specials"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Special Ops \u00b7 Season 2"

    const-string v3, "Action Thriller \u00b7 Hotstar Specials"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Loki \u00b7 Season 2"

    const-string v3, "Marvel Studios \u00b7 4K Dolby Vision"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Criminal Justice"

    const-string v3, "Courtroom Drama \u00b7 Hotstar Specials"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "ICC Champions Trophy"

    const-string v3, "Exclusive Live Cricket \u00b7 JioHotstar 4K"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "in.startv.hotstar"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Demon Slayer \u00b7 Infinity Castle"

    const-string v3, "Top Picks \u00b7 Netflix Originals 4K HDR"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Squid Game \u00b7 Season 2"

    const-string v3, "Thriller Series \u00b7 Netflix Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Stranger Things \u00b7 Season 5"

    const-string v3, "Sci-Fi Mystery \u00b7 4K Spatial Audio"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "The Railway Men"

    const-string v3, "Untold Story \u00b7 Netflix Limited Series"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Avatar: The Last Airbender"

    const-string v3, "Fantasy Adventure \u00b7 Netflix 4K"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Money Heist: Berlin"

    const-string v3, "Heist Drama \u00b7 Netflix Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Wednesday \u00b7 Season 2"

    const-string v3, "Mystery Comedy \u00b7 Netflix Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "com.netflix.ninja"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Ted Lasso \u00b7 Season 3"

    const-string v3, "Comedy Drama \u00b7 Apple TV+ Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Severance \u00b7 Season 2"

    const-string v3, "Psychological Thriller \u00b7 Apple TV+"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "The Morning Show \u00b7 Season 3"

    const-string v3, "Drama Series \u00b7 4K Dolby Vision"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Foundation \u00b7 Season 2"

    const-string v3, "Epic Sci-Fi \u00b7 Apple Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Slow Horses \u00b7 Season 4"

    const-string v3, "Espionage Thriller \u00b7 Apple TV+"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "For All Mankind \u00b7 Season 4"

    const-string v3, "Alternative History \u00b7 Apple TV+"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Killers of the Flower Moon"

    const-string v3, "Martin Scorsese \u00b7 Apple Original Films"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "com.apple.atve.androidtv.appletv"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "The Lord of the Rings: The Rings of Power"

    const-string v3, "Season 2 \u00b7 Prime 4K HDR"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "The Boys \u00b7 Season 4"

    const-string v3, "Action Drama \u00b7 Amazon Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Mirzapur \u00b7 Season 3"

    const-string v3, "Crime Drama \u00b7 Prime Video Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Citadel \u00b7 Diana"

    const-string v3, "Action Thriller \u00b7 Amazon Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Panchayat \u00b7 Season 3"

    const-string v3, "Comedy Drama \u00b7 Prime Video"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Reacher \u00b7 Season 2"

    const-string v3, "Action Thriller \u00b7 Prime 4K UHD"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Farzi \u00b7 Season 2"

    const-string v3, "Thriller Series \u00b7 Amazon Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "com.amazon.amazonvideo.livingroom"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Our Planet II \u00b7 4K HDR 60FPS"

    const-string v3, "Nature & Wildlife \u00b7 YouTube 4K"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Formula 1 \u00b7 Grand Prix Highlights"

    const-string v3, "Motorsport \u00b7 4K 60FPS"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "SpaceX Starship Launch & Landing"

    const-string v3, "Live Space Broadcast \u00b7 4K"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Coke Studio Bharat \u00b7 Top Hits"

    const-string v3, "Live Studio Music \u00b7 High Fidelity"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Red Bull Cliff Diving World Series"

    const-string v3, "Extreme Sports \u00b7 4K 60FPS"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "National Geographic \u00b7 Deep Ocean 4K"

    const-string v3, "Documentary \u00b7 YouTube"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Top Tech Showcase & Reviews"

    const-string v3, "Gadget Breakdown \u00b7 4K HDR"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "com.google.android.youtube.tv"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "org.smarttube.stable"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Dhurandhar"

    const-string v3, "Blockbuster Premiere \u00b7 ZEE5"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Sam Bahadur"

    const-string v3, "Biographical Drama \u00b7 ZEE5 Original"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Sunflower \u00b7 Season 2"

    const-string v3, "Dark Comedy \u00b7 ZEE5"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Ghoomer"

    const-string v3, "Inspirational Sports Drama \u00b7 ZEE5"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Taj: Divided by Blood"

    const-string v3, "Historical Drama \u00b7 ZEE5"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Sirf Ek Bandaa Kaafi Hai"

    const-string v3, "Courtroom Drama \u00b7 ZEE5"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "com.graymatrix.did"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Aashram \u00b7 All Seasons"

    const-string v3, "Crime Drama \u00b7 MX Original Series"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Dharavi Bank"

    const-string v3, "Crime Thriller \u00b7 MX Player TV"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Bhaukaal \u00b7 Season 2"

    const-string v3, "Action Series \u00b7 MX Player"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Recent Media & 4K Video Library"

    const-string v3, "Local Storage \u00b7 Hardware Decode"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "com.mxtech.videoplayer.television"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Live Sports & Streaming Hub"

    const-string v3, "Sony LIV, Lionsgate & Chaupal \u00b7 Airtel"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Blockbuster Movies Collection"

    const-string v3, "Trending Cinema \u00b7 Airtel Xstream"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Live News & Top Channels"

    const-string v3, "24/7 Live Broadcast \u00b7 Airtel"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Regional Cinema & Shows"

    const-string v3, "Multiple Languages \u00b7 Airtel Xstream"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "tv.airtel.xstream.tvapp"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Lovely Runner"

    const-string v3, "Romance Fantasy \u00b7 Top K-Drama \u00b7 Viki"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Queen of Tears"

    const-string v3, "Family Drama \u00b7 Hit K-Drama \u00b7 Viki"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Twinkling Watermelon"

    const-string v3, "Youth Fantasy Drama \u00b7 Viki"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    const-string v2, "Descendants of the Sun"

    const-string v3, "Classic Romance \u00b7 Viki HD"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v1, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    const-string v2, "com.viki.android"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackdropBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .line 397
    const-string v0, "poster_art_uri"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 401
    :cond_0
    :try_start_0
    const-string v2, "content://android.media.tv/preview_program"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 402
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    .line 403
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const-string v6, "package_name = ?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v7

    const-string v8, "_id DESC"

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 406
    if-eqz v2, :cond_3

    .line 408
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 410
    if-ltz v0, :cond_1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 411
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_2

    .line 414
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 415
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    if-eqz v3, :cond_2

    .line 421
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 416
    return-object v3

    .line 421
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 422
    goto :goto_1

    .line 421
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 422
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 424
    :catchall_1
    move-exception v0

    :cond_3
    :goto_1
    nop

    .line 428
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backdrops/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".webp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 430
    if-eqz p1, :cond_4

    .line 431
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 432
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 433
    if-eqz v0, :cond_4

    return-object v0

    .line 435
    :catchall_2
    move-exception v0

    :cond_4
    nop

    .line 439
    :try_start_4
    invoke-static {p0}, Lcom/gathin/tvhome/DailyWallpaperManager;->getTodayWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 440
    if-eqz p0, :cond_5

    return-object p0

    .line 441
    :catchall_3
    move-exception v0

    :cond_5
    nop

    .line 443
    return-object v1

    .line 397
    :cond_6
    :goto_2
    return-object v1
.end method

.method public static getDailyRotationIndex(I)I
    .locals 3

    .line 144
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p0, v0, :cond_0

    return v1

    .line 146
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    return v1
.end method

.method public static getLiveContent(Landroid/content/Context;Ljava/lang/String;)Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;
    .locals 23

    .line 305
    move-object/from16 v1, p1

    const-string v2, "intent_uri"

    const-string v3, "poster_art_uri"

    const-string v4, "episode_title"

    const-string v5, "title"

    const/4 v6, 0x0

    if-nez v1, :cond_0

    return-object v6

    .line 309
    :cond_0
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_0
    const-string v0, "content://android.media.tv/preview_program"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 310
    new-array v14, v9, [Ljava/lang/String;

    aput-object v5, v14, v11

    aput-object v4, v14, v10

    aput-object v3, v14, v8

    aput-object v2, v14, v7

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "package_name = ?"

    new-array v0, v10, [Ljava/lang/String;

    aput-object v1, v0, v11

    const-string v17, "_id DESC"

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 314
    if-eqz v12, :cond_8

    .line 316
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 318
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 319
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 320
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 322
    if-ltz v0, :cond_1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v6

    .line 323
    :goto_0
    if-ltz v13, :cond_2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_2
    move-object v13, v6

    .line 324
    :goto_1
    if-ltz v14, :cond_3

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_3
    move-object v14, v6

    .line 325
    :goto_2
    if-ltz v15, :cond_4

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_4
    move-object v15, v6

    .line 327
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_6

    .line 328
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_4

    :cond_5
    const-string v13, "Featured Live \u00b7 Android TV"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    :goto_4
    const/16 v16, 0x3

    :try_start_2
    new-instance v7, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    invoke-direct {v7, v0, v13, v14, v15}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 329
    return-object v7

    .line 333
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 327
    :cond_6
    const/16 v16, 0x3

    goto :goto_5

    .line 316
    :cond_7
    const/16 v16, 0x3

    .line 333
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 334
    goto :goto_7

    .line 336
    :catch_0
    move-exception v0

    goto :goto_7

    .line 333
    :catchall_1
    move-exception v0

    const/16 v16, 0x3

    :goto_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 334
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 314
    :cond_8
    const/16 v16, 0x3

    goto :goto_7

    .line 336
    :catch_1
    move-exception v0

    const/16 v16, 0x3

    :goto_7
    nop

    .line 340
    :try_start_4
    const-string v0, "content://android.media.tv/watch_next_program"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 341
    new-array v0, v9, [Ljava/lang/String;

    aput-object v5, v0, v11

    aput-object v4, v0, v10

    aput-object v3, v0, v8

    aput-object v2, v0, v16

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v20, "package_name = ?"

    new-array v7, v10, [Ljava/lang/String;

    aput-object v1, v7, v11

    const-string v22, "_id DESC"

    move-object/from16 v19, v0

    move-object/from16 v21, v7

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 345
    if-eqz v7, :cond_f

    .line 347
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 348
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 349
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 350
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 351
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 353
    if-ltz v0, :cond_9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_9
    move-object v0, v6

    .line 354
    :goto_8
    if-ltz v4, :cond_a

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_a
    move-object v4, v6

    .line 355
    :goto_9
    if-ltz v3, :cond_b

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_b
    move-object v3, v6

    .line 356
    :goto_a
    if-ltz v2, :cond_c

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_c
    move-object v2, v6

    .line 358
    :goto_b
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 359
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_c

    :cond_d
    const-string v4, "Continue Watching"

    .line 360
    :goto_c
    new-instance v5, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    invoke-direct {v5, v0, v4, v3, v2}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 364
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    return-object v5

    .line 364
    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 365
    goto :goto_d

    .line 364
    :catchall_2
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 365
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 367
    :catch_2
    move-exception v0

    :cond_f
    :goto_d
    nop

    .line 370
    nop

    .line 371
    sget-object v0, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 372
    sget-object v0, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 373
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/gathin/tvhome/LivePreviewProvider;->getDailyRotationIndex(I)I

    move-result v2

    .line 375
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    goto :goto_e

    .line 379
    :cond_10
    move-object v0, v6

    :goto_e
    if-nez v0, :cond_11

    .line 381
    new-instance v0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    .line 382
    invoke-static/range {p0 .. p0}, Lcom/gathin/tvhome/DailyWallpaperManager;->getTodayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-static/range {p0 .. p0}, Lcom/gathin/tvhome/DailyWallpaperManager;->getTodayCopyright(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v6, v6}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_11
    invoke-static/range {p0 .. p1}, Lcom/gathin/tvhome/ChildLockManager;->isPackageLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 390
    new-instance v1, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;

    iget-object v2, v0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;->posterUri:Ljava/lang/String;

    iget-object v0, v0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;->intentUri:Ljava/lang/String;

    const-string v4, "\ud83d\udd12 Child Lock Protected \u00b7 PIN Required"

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 393
    :cond_12
    return-object v0
.end method

.method public static initializeTvContractChannels(Landroid/content/Context;)V
    .locals 21

    .line 203
    const-string v1, ".webp"

    const-string v2, "display_name"

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 204
    const-string v0, "content://android.media.tv/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 205
    const-string v0, "content://android.media.tv/preview_program"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 207
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v5, "backdrops"

    invoke-direct {v12, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 210
    :cond_0
    sget-object v0, Lcom/gathin/tvhome/LivePreviewProvider;->DAILY_ROTATIONS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v12, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v7, :cond_2

    .line 214
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backdrops/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 215
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 216
    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 218
    :goto_1
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_1

    .line 219
    invoke-virtual {v7, v6, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 222
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 223
    :catchall_0
    move-exception v0

    :goto_2
    nop

    .line 225
    :cond_2
    goto :goto_0

    .line 227
    :cond_3
    nop

    .line 228
    nop

    .line 229
    const/4 v0, 0x2

    :try_start_2
    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v5, v10

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const-string v6, "package_name = ?"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-array v7, v0, [Ljava/lang/String;

    aput-object v1, v7, v10

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 230
    const-string v5, "Featured Movies & Shows"

    const-string v6, "Live Sports & Matches"

    const-wide/16 v7, -0x1

    const-wide/16 v15, -0x1

    if-eqz v1, :cond_7

    .line 232
    :goto_3
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 233
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 234
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 235
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-wide/from16 v7, v17

    .line 236
    :cond_4
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_5

    move-wide/from16 v15, v17

    .line 237
    :cond_5
    goto :goto_3

    .line 239
    :cond_6
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 240
    goto :goto_4

    .line 239
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 240
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 243
    :cond_7
    :goto_4
    const-string v0, "intent:#Intent;action=android.intent.action.MAIN;end"

    const-string v1, "app_link_intent_uri"

    const-string v10, "TYPE_PREVIEW"

    const-string v11, "type"

    const-wide/16 v17, -0x1

    const-string v13, "package_name"

    cmp-long v14, v7, v17

    if-nez v14, :cond_8

    .line 244
    :try_start_5
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 245
    move-wide/from16 v19, v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v14, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v14, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 250
    if-eqz v6, :cond_9

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    goto :goto_5

    .line 243
    :cond_8
    move-wide/from16 v19, v7

    .line 253
    :cond_9
    move-wide/from16 v7, v19

    :goto_5
    cmp-long v6, v15, v17

    if-nez v6, :cond_a

    .line 254
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v6, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v6, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_a

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    .line 263
    :cond_a
    cmp-long v0, v7, v17

    if-eqz v0, :cond_b

    .line 264
    move-wide v5, v7

    const-string v7, "com.sonyliv"

    const-string v8, "India v Pakistan LIVE"

    move-object v4, v9

    const-string v9, "Live Cricket \u00b7 Sony LIV HD \u00b7 3:30 PM"

    new-instance v0, Ljava/io/File;

    const-string v1, "com.sonyliv.webp"

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 264
    const/4 v11, 0x1

    invoke-static/range {v3 .. v11}, Lcom/gathin/tvhome/LivePreviewProvider;->insertProgramIfMissing(Landroid/content/ContentResolver;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    const-string v7, "in.startv.hotstar"

    const-string v8, "New Zealand v India \u00b7 Highlights"

    const-string v9, "1st Test Day 4 \u00b7 JioHotstar 4K HDR"

    new-instance v0, Ljava/io/File;

    const-string v1, "in.startv.hotstar.webp"

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 267
    const/4 v11, 0x1

    invoke-static/range {v3 .. v11}, Lcom/gathin/tvhome/LivePreviewProvider;->insertProgramIfMissing(Landroid/content/ContentResolver;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    .line 263
    :cond_b
    move-object v4, v9

    .line 272
    :goto_6
    cmp-long v0, v15, v17

    if-eqz v0, :cond_c

    .line 273
    const-string v7, "com.netflix.ninja"

    const-string v8, "Demon Slayer \u00b7 Infinity Castle"

    const-string v9, "Top Picks \u00b7 Netflix Originals 4K HDR"

    new-instance v0, Ljava/io/File;

    const-string v1, "com.netflix.ninja.webp"

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 273
    const/4 v11, 0x2

    move-wide v5, v15

    invoke-static/range {v3 .. v11}, Lcom/gathin/tvhome/LivePreviewProvider;->insertProgramIfMissing(Landroid/content/ContentResolver;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    const-string v7, "com.amazon.amazonvideo.livingroom"

    const-string v8, "Featured on Prime Video"

    const-string v9, "Amazon Originals \u00b7 The Rings of Power"

    new-instance v0, Ljava/io/File;

    const-string v1, "com.amazon.amazonvideo.livingroom.webp"

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 276
    const/4 v11, 0x3

    invoke-static/range {v3 .. v11}, Lcom/gathin/tvhome/LivePreviewProvider;->insertProgramIfMissing(Landroid/content/ContentResolver;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    .line 280
    :catchall_2
    move-exception v0

    :cond_c
    :goto_7
    nop

    .line 281
    return-void
.end method

.method private static insertProgramIfMissing(Landroid/content/ContentResolver;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 285
    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string v4, "channel_id = ? AND title = ?"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v2

    aput-object p5, v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    if-eqz p0, :cond_1

    .line 288
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 290
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 288
    return-void

    .line 290
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 291
    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 291
    throw p1

    .line 293
    :cond_1
    :goto_0
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 294
    const-string p1, "channel_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    const-string p1, "title"

    invoke-virtual {p0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string p1, "episode_title"

    invoke-virtual {p0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string p1, "poster_art_uri"

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string p1, "type"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string p1, "package_name"

    invoke-virtual {p0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1, v2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 301
    :catchall_1
    move-exception v0

    :goto_1
    nop

    .line 302
    return-void
.end method

.method public static onLauncherCreated(Lcom/gathin/tvhome/MainActivity;)V
    .locals 4

    .line 155
    if-nez p0, :cond_0

    return-void

    .line 157
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/gathin/tvhome/MainActivity;->cinematic:Z

    .line 158
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/gathin/tvhome/MainActivity;->heroArtAlpha:F

    .line 160
    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-string v3, "com.sonyliv"

    if-eqz v1, :cond_1

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 163
    invoke-static {p0, v3}, Lcom/gathin/tvhome/LivePreviewProvider;->getBackdropBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_1

    .line 165
    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    iput-object v3, p0, Lcom/gathin/tvhome/MainActivity;->heroArtKey:Ljava/lang/String;

    .line 170
    :cond_1
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gathin/tvhome/AmbientVideoView;

    .line 171
    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0, v3}, Lcom/gathin/tvhome/AmbientVideoView;->playForPackage(Ljava/lang/String;)V

    .line 175
    :cond_2
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_3

    .line 177
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_3
    invoke-static {p0}, Lcom/gathin/tvhome/DailyWallpaperManager;->checkAndSyncDaily(Lcom/gathin/tvhome/MainActivity;)V

    .line 182
    new-instance v0, Lcom/gathin/tvhome/LivePreviewProvider$1;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/LivePreviewProvider$1;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 189
    return-void
.end method

.method public static onTileFocused(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 192
    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    const p0, 0x7f0900e0

    :try_start_0
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/gathin/tvhome/AmbientVideoView;

    .line 195
    if-eqz p0, :cond_1

    .line 196
    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AmbientVideoView;->playForPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception p0

    :cond_1
    :goto_0
    nop

    .line 199
    return-void

    .line 192
    :cond_2
    :goto_1
    return-void
.end method
