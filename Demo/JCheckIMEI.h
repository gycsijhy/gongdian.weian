//
//  JCheckIMEI.h
//  Demo
//
//  Created by jianghouyu on 16/1/25.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "n_webservice.h"
#import "User.h"

@interface JCheckIMEI : NSObject

- (NSArray *)getCheckIMEIResult : (NSString *) number;

@end
