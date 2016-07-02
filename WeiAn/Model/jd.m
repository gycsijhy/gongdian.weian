//
//  jd.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/24.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "jd.h"

@implementation jd
+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"_id":@"_id",
             @"pro_id":@"pro_id",
             @"menu_id":@"menu_id",
             @"nr":@"nr",
             @"user_id":@"user_id",
             @"pid":@"pid",
             @"lb":@"lb",
             @"dwf":@"dwf",
             @"dwq":@"dwq",
             @"ryf":@"ryf",
             @"ryq":@"ryq"
             };
}

@end
