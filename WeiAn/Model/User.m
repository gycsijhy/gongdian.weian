//
//  User.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "User.h"

@implementation User
+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"iid":@"id",
             @"pcode":@"pcode",
             @"uname":@"uname"
             };
}
@end
