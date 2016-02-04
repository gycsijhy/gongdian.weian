//
//  JLoginHelper.h
//  Demo
//
//  Created by jianghouyu on 16/1/27.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "User.h"

@interface JLoginHelper : NSObject

- (User *)loginHelper;

- (NSString *)checkSFZH:(NSString *)sfzh;

- (void)updateIMEI : (NSString *)sfzh :(NSString *)imei;

@end
