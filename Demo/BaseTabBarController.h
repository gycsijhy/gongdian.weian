//
//  BaseTabBarController.h
//  Demo
//
//  Created by jianghouyu on 16/1/20.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTabBarController : UITabBarController <UITabBarControllerDelegate>

- (void)setupTabBarItems;
- (void)pushToViewController : (UIViewController *)viewController animated : (BOOL)animated;
- (void)presentToViewController : (UIViewController *)viewController animated : (BOOL)animated completion : (void (^)(void))comletion;

@end
