#import "SampleAppDelegate.h"
#import "VENTouchLock.h"
#import "SampleLockSplashViewController.h"

@interface SampleAppDelegate ()

@end

@implementation SampleAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[VENTouchLock sharedInstance] setKeychainService:@"testService"
                                      keychainAccount:@"testAccount"
                                        touchIDReason:@"Scan your fingerprint to use the app."
                            splashViewControllerClass:[SampleLockSplashViewController class]
                                 passcodeAttemptLimit:5];
    return YES;
}

@end
