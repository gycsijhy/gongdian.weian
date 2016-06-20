//
//  ProjectByMenu.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/18.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "ProjectByMenu.h"

@implementation ProjectByMenu
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
             @"pid":@"pid",
             @"dw":@"dw",
             @"ry":@"ry",
             @"latitude":@"latitude",
             @"lontitude":@"lontitude",
             @"address":@"address",
             @"mc":@"mc",
             @"fzr":@"fzr",
             @"fzrxm":@"fzrxm",
             @"xk_pid":@"xk_pid",
             @"xkdw":@"xkdw",
             @"createusername":@"createusername",
             @"project_menu":@"project_menu"
             };
}
+(NSValueTransformer *) project_menuJSONTransformer {
    //return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:ProMenu.class];
    //return [MTLJSONAdapter dictionaryTransformerWithModelClass:[ProMenu class]];
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter modelOfClass:ProMenu.class fromJSONDictionary:[value firstObject] error:nil];
    }];
}
@end
