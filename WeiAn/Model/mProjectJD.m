//
//  mProjectJD.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/24.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "mProjectJD.h"

@implementation mProjectJD
+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"id":@"id",
             @"flag":@"flag",
             @"project_jd":@"project_jd",
             @"project_photos":@"project_photos"
             };
}

+(NSValueTransformer *) project_jdJSONTransformer {
    //return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:ProMenu.class];
    //return [MTLJSONAdapter dictionaryTransformerWithModelClass:[ProMenu class]];
    //    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
    //        //return [MTLJSONAdapter modelOfClass:ProPhoto.class fromJSONDictionary:[value firstObject] error:nil];
    //        return [MTLJSONAdapter modelsOfClass:ProPhoto.class fromJSONArray:value error:nil];
    //    }];
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter modelsOfClass:jd.class fromJSONArray:value error:nil];
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter JSONArrayFromModels:value error:nil];
    }];
}
+(NSValueTransformer *) project_photosJSONTransformer {
    //return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:ProMenu.class];
    //return [MTLJSONAdapter dictionaryTransformerWithModelClass:[ProMenu class]];
    //    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
    //        //return [MTLJSONAdapter modelOfClass:ProPhoto.class fromJSONDictionary:[value firstObject] error:nil];
    //        return [MTLJSONAdapter modelsOfClass:ProPhoto.class fromJSONArray:value error:nil];
    //    }];
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter modelsOfClass:zp.class fromJSONArray:value error:nil];
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter JSONArrayFromModels:value error:nil];
    }];
}
@end
