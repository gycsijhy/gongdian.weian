//
//  zp.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/24.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "zp.h"

@implementation zp
+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"_id":@"_id",
             @"url":@"url",
             @"pro_id":@"pro_id",
             @"createuser":@"createuser",
             @"flag":@"flag",
             @"latitude":@"latitude",
             @"lontitude":@"lontitude",
             @"address":@"address",
             @"locationdescribe":@"locationdescribe"
         };
}
//+(NSValueTransformer *) urlJSONTransformer {
//    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
//        return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
//    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
//        return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName ];
//    }];
//}

@end
