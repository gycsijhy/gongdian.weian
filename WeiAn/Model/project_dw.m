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
+(NSValueTransformer *) project_jdJSONTransformer {
    //return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:ProMenu.class];
    //return [MTLJSONAdapter dictionaryTransformerWithModelClass:[ProMenu class]];
//    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
//        //return [MTLJSONAdapter modelOfClass:ProJd.class fromJSONDictionary:[value firstObject] error:nil];
//        return [MTLJSONAdapter modelsOfClass:ProJd.class fromJSONArray:value error:nil];
//    }];
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter modelsOfClass:ProJd.class fromJSONArray:value error:nil];
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter JSONArrayFromModels:value error:nil];
    }];
}

@end
