.class public final synthetic Lcom/example/teardroidv2/FileAction$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# static fields
.field public static final synthetic INSTANCE:Lcom/example/teardroidv2/FileAction$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/teardroidv2/FileAction$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/example/teardroidv2/FileAction$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/example/teardroidv2/FileAction$$ExternalSyntheticLambda1;->INSTANCE:Lcom/example/teardroidv2/FileAction$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/volley/NetworkResponse;

    invoke-static {p1}, Lcom/example/teardroidv2/FileAction;->$r8$lambda$OazeCg_fpOEMbcXTOw-O7791PPw(Lcom/android/volley/NetworkResponse;)V

    return-void
.end method
