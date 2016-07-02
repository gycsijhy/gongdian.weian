//
//  projectsp.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/21.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "projectsp.h"

@implementation projectsp
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
             @"project_jd":@"project_jd"
             };
}
+(NSValueTransformer *) project_jdJSONTransformer {
    //return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:ProMenu.class];
    //return [MTLJSONAdapter dictionaryTransformerWithModelClass:[ProMenu class]];
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter modelOfClass:ProJd.class fromJSONDictionary:[value firstObject] error:nil];
    }];
}
@end
