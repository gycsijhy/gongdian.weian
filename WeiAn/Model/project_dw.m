//
//  project_dw.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "project_dw.h"

@implementation project_dw
+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"id":@"id",
             @"pid":@"pid",
             @"dz":@"dz",
             @"pname":@"pname",
             @"flag":@"flag",
             @"lontitude":@"lontitude",
             @"latitude":@"latitude",
             @"fzr":@"fzr",
             @"fzrxm":@"fzrxm",
             @"project_jd":@"project_jd"
             };
}
@end
