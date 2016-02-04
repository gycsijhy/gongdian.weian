//
//  User.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "User.h"

@implementation User

+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"uid":@"uids",
             @"uname":@"uname",
             @"urole":@"urole",
             @"pid":@"pid",
             @"pcode":@"pcode",
             @"imei":@"imei",
             @"pname":@"pname",
             @"version":@"version"
             };
}

@end
