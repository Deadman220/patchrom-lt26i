.class final Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraKeyLongPressDetectionTask"
.end annotation


# instance fields
.field private mIsSecure:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3187
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3187
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public applySecurityLevel(Z)V
    .locals 0
    .parameter "secure"

    .prologue
    .line 3193
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->mIsSecure:Z

    .line 3194
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 3198
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenUnlockSecuritySkipEnabled()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3204
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelSemcCameraApplication()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 3207
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->releasePartialWakeLockAndStopBlockingScreenOn()V

    .line 3247
    :goto_0
    return-void

    .line 3214
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3230
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 3233
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->mIsSecure:Z

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->startSemcCameraApplication(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    .line 3236
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->mIsSecure:Z

    if-eqz v1, :cond_1

    .line 3238
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 3245
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->releasePartialWakeLockAndStopBlockingScreenOn()V

    goto :goto_0

    .line 3215
    :catch_0
    move-exception v0

    .line 3221
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelSemcCameraApplication()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 3224
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->releasePartialWakeLockAndStopBlockingScreenOn()V

    goto :goto_0

    .line 3241
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(Z)V

    goto :goto_1
.end method
