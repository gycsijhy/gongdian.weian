//
//  DepartUser.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "DepartUser.h"

@implementation DepartUser
+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"pid":@"pid",
             @"pname":@"pname",
             @"users":@"users"
             };
}
+(NSValueTransformer *) usersJSONTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
        return [MTLJSONAdapter modelsOfClass:User.class fromJSONArray:value error:nil];
    }];
}
@end
