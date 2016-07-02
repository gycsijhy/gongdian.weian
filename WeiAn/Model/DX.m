//
//  DX.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "DX.h"

@implementation DX
+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"nr":@"nr",
             @"phoneNumbers":@"phoneNumbers"
             };
}
+(NSValueTransformer *) phoneNumbersJSONTransformer {
//    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
//        return [MTLJSONAdapter modelsOfClass:SJ.class fromJSONArray:value error:nil];
//    }];
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter modelsOfClass:SJ.class fromJSONArray:value error:nil];
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter JSONArrayFromModels:value error:nil];
    }];
}
@end
