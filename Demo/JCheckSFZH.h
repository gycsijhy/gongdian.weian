//
//  JCheckSFZH.h
//  Demo
//
//  Created by jianghouyu on 16/1/25.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "n_webservice.h"
#import "JSendSMS.h"

@interface JCheckSFZH : NSObject

- (NSString *)checkSFZH : (NSString *)sfzh;

- (NSString *)sendCode : (NSString *)sjhm;

@end
