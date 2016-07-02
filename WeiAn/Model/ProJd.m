//
//  ProJd.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/3/23.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "ProJd.h"

@implementation ProJd

+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"id_":@"id",
             @"pro_id":@"pro_id",
             @"menu_id":@"menu_id",
             @"nr":@"nr",
             @"user_id":@"user_id",
             @"createtime":@"createtime",
             @"yxbz":@"yxbz",
             @"pid":@"pid",
             @"uname":@"uname",
             @"menu":@"menu",
             @"bm":@"bm",
             @"lb":@"lb",
             @"dwf":@"dwf",
             @"dwq":@"dwq",
             @"ryf":@"ryf",
             @"ryq":@"ryq",
             @"sfgs":@"sfgs",
             @"pname":@"pname",
             @"project_photo":@"project_photo"
             };
}

+(NSValueTransformer *) project_photoJSONTransformer {
    //return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:ProMenu.class];
    //return [MTLJSONAdapter dictionaryTransformerWithModelClass:[ProMenu class]];
//    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
//        //return [MTLJSONAdapter modelOfClass:ProPhoto.class fromJSONDictionary:[value firstObject] error:nil];
//        return [MTLJSONAdapter modelsOfClass:ProPhoto.class fromJSONArray:value error:nil];
//    }];
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter modelsOfClass:ProPhoto.class fromJSONArray:value error:nil];
    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter JSONArrayFromModels:value error:nil];
    }];
}
@end
