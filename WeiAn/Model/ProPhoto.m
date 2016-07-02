//
//  ProPhoto.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/3/23.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "ProPhoto.h"

@implementation ProPhoto

+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"id_":@"id",
             @"url":@"url",
             @"pro_id":@"pro_id",
             @"jd_id":@"jd_id",
             @"createuser":@"createuser",
             @"createtime":@"createtime",
             @"flag":@"flag",
             @"latitude":@"latitude",
             @"lontitude":@"lontitude",
             @"address":@"address",
             @"locationdescribe":@"locationdescribe"
             };
}

@end
