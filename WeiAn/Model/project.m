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
             @"flag_jd":@"flag_jd",
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
+(NSValueTransformer *) project_dwJSONTransformer {
    //return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:ProMenu.class];
    //return [MTLJSONAdapter dictionaryTransformerWithModelClass:[ProMenu class]];
//    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
//        //return [MTLJSONAdapter modelOfClass:project_dw.class fromJSONDictionary:[value firstObject] error:nil];
//        return [MTLJSONAdapter modelsOfClass:project_dw.class fromJSONArray:value error:nil];
//    }];
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter modelsOfClass:project_dw.class fromJSONArray:value error:nil];
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter JSONArrayFromModels:value error:nil];
    }];
}
+(NSValueTransformer *) project_ryJSONTransformer {
    //return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:ProMenu.class];
    //return [MTLJSONAdapter dictionaryTransformerWithModelClass:[ProMenu class]];
//    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
//        //return [MTLJSONAdapter modelOfClass:project_ry.class fromJSONDictionary:[value firstObject] error:nil];
//        return [MTLJSONAdapter modelsOfClass:project_ry.class fromJSONArray:value error:nil];
//    }];
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter modelsOfClass:project_ry.class fromJSONArray:value error:nil];
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter JSONArrayFromModels:value error:nil];
    }];
}

@end
