//
//  Users.m
//  Demo
//
//  Created by jianghouyu on 16/1/27.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "Users.h"

@implementation Users

+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"uid":@"uids",
             @"uname":@"uname",
             @"urole":@"urole",
             @"pid":@"pid",
             @"pcode":@"pcode",
             @"imei":@"imei",
             @"pname":@"pname",
             @"version":@"version",
             @"iid":@"id",
             @"headurl":@"headurl"
    };
}

@end
