//
//  AppDelegate.m
//  Demo
//
//  Created by jianghouyu on 16/1/20.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "AppDelegate.h"
#import "UIContants.h"
#import "JNetWorkHelper.h"
#import "Users.h"
#import "BaiduMapAPI_Map/BMKMapComponent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (void)reachabilityChanged :(NSNotification *)note {
    Reachability *currentReach = [note object];
    NSParameterAssert([currentReach isKindOfClass:[Reachability class]]);
    NetworkStatus status = [currentReach currentReachabilityStatus];
    if (status == NotReachable) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"赣榆微安"
//                                                        message:@"NotReachable"
//                                                       delegate:nil
//                                              cancelButtonTitle:@"YES" otherButtonTitles:nil];
//        [alert show];
                UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"提示" message:@"服务器连接失败，请检查网络设置\n应用程序将关闭" preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    exit(0);
                }];
                [ac addAction:okAction];
                [self.window.rootViewController presentViewController:ac animated:YES completion:nil];
    }
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //[NSThread sleepForTimeInterval:1.0];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reachabilityChanged:) name:kReachabilityChangedNotification object:nil];
    hostReach = [Reachability reachabilityWithHostName:@"www.gyhrss.com"];
    [hostReach startNotifier];

    [self makeWindowVisible:launchOptions];
    _mapManager = [[BMKMapManager alloc] init];
    BOOL ret = [_mapManager start:@"SjGeO7CVdCZP1WHDUzAONHgS6mBRGi1t" generalDelegate:self];
    if (!ret) {
        NSLog(@"BaiduMap is not available!");
    }
    
//    [self showLanuchView];
    
    [self basicSetup];
    
    return YES;
}

- (void)onGetNetworkState:(int)iError
{
    if (0 == iError) {
        NSLog(@"联网成功");
    } else {
        NSLog(@"onGetNetworkState %d",iError);
    }
}

- (void)onGetPermissionState:(int)iError
{
    if (0 == iError) {
        NSLog(@"授权成功");
    } else {
        NSLog(@"onGetPermissionState %d",iError);
    }
}

- (BOOL)check {
    Reachability *reach = [Reachability reachabilityForInternetConnection];
    if ([reach currentReachabilityStatus] == NotReachable) {
        return NO;
    }
    else {
        JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
        Users *user = [helper checkIMEI:identifierNumber];
        if (user.imei == nil) {
            return YES;
        }
        else {
            NSData *data = [NSKeyedArchiver archivedDataWithRootObject:user];
            [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"JUSER"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            return NO;
        }
    }
}

- (void)makeWindowVisible : (NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    if ([self check]) {
        UIViewController *vc = [[UIStoryboard storyboardWithName:@"Login" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
        self.window.rootViewController = vc;
        [self.window makeKeyAndVisible];
        return;
    }
    else {
        [[UINavigationBar appearance] setBarTintColor:[UIColor whiteColor]];
        
        if (_tabBarController == nil) {
            _tabBarController = [[BaseTabBarController alloc] init];
        }
        self.window.rootViewController = _tabBarController;
        [self.window makeKeyAndVisible];
    }
}

- (void)showLanuchView {
    _mySplashView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [_mySplashView1 setImage:[UIImage imageNamed:@"background2_"]];
    [self.window addSubview:_mySplashView1];
    [self.window bringSubviewToFront:_mySplashView1];
    
    _mySplashView2=[[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2-76, 120, 152, 152)];
    [_mySplashView2 setImage:[UIImage imageNamed:@"gdlogo"]];
    [self.window addSubview:_mySplashView2];
    [self.window bringSubviewToFront:_mySplashView2];
    
    [self performSelector:@selector(showWord) withObject:nil afterDelay:3.0f];
}

-(void)showWord{
    //[NSThread sleepForTimeInterval:1.0f];
    [_mySplashView2 removeFromSuperview];
    [_mySplashView1 removeFromSuperview];
}

- (void)basicSetup {
    [[UITextField appearance] setTintColor:[UIColor grayColor]];
    [[UITextView appearance] setTintColor:[UIColor grayColor]];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    [BMKMapView willBackGround];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    [BMKMapView didForeGround];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
