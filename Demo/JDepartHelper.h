//
//  JDepartHelper.h
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Depart.h"

@interface JDepartHelper : NSObject

@property (weak,nonatomic) UIViewController *hostViewController;

- (void)settingDepart : (Depart *)depart;

- (void)addDepart : (NSString *)act : (Depart *)depart;

@end
