//
//  AppDelegate.m
//  Demo
//
//  Created by jianghouyu on 16/1/20.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "AppDelegate.h"
#import "UIContants.h"
#import "JLoginHelper.h"
#import "User.h"
#import "BaiduMapAPI_Map/BMKMapComponent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [NSThread sleepForTimeInterval:1.0];
    
    [self makeWindowVisible:launchOptions];
    
    _mapManager = [[BMKMapManager alloc] init];
    BOOL ret = [_mapManager start:@"rvFt5aKt7deWbGwkoVoWMVw3" generalDelegate:nil];
    if (!ret) {
        NSLog(@"BaiduMap is not available!");
    }
    
//    [self showLanuchView];
    
    [self basicSetup];
    
    return YES;
}

- (BOOL)check {
    JLoginHelper *login = [[JLoginHelper alloc] init];
    User *user = [login loginHelper];
    
//    if ([[[arr objectAtIndex:0] objectForKey:@"imei"] isKindOfClass:[NSNull class]]) {
//        return YES;
//    }
//    else {
//        return NO;
//    }
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
    [_mySplashView1 setImage:[UIImage imageNamed:@"background_"]];
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
