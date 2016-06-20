//
//  project.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "project.h"

@implementation project
+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"id_":@"id",
             @"yf":@"yf",
             @"nr":@"nr",
             @"kssj":@"kssj",
             @"jssj":@"jssj",
             @"dz":@"dz",
             @"flag":@"flag",
             @"createtime":@"createtime",
             @"createuser":@"createuser",
             @"flag_id":@"flag_id",
             @"dw":@"dw",
             @"ry":@"ry",
             @"createusername":@"createusername",
             @"mc":@"mc",
             @"xk_pid":@"xk_pid",
             @"xkdw":@"xkdw",
             @"project_dw":@"project_dw",
             @"project_ry":@"project_ry"
             };
}

@end
