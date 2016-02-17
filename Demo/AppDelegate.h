//
//  AppDelegate.h
//  Demo
//
//  Created by jianghouyu on 16/1/20.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTabBarController.h"
#import "BaiduMapAPI_Base/BMKMapManager.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate,BMKGeneralDelegate> {
    BMKMapManager *_mapManager;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BaseTabBarController *tabBarController;
@property (strong, nonatomic) UIImageView *mySplashView1;
@property (strong, nonatomic) UIImageView *mySplashView2;

@end

