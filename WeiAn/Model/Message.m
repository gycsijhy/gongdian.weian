//
//  Message.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/12.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "Message.h"

@implementation Message
+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"id_":@"id",
             @"user_id":@"user_id",
             @"hm":@"hm",
             @"menu_id":@"menu_id",
             @"dxnr":@"dxnr",
             @"pid":@"pid",
             @"pname":@"pname",
             @"xm":@"xm",
             };
}
@end
