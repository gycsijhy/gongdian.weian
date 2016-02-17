//
//  JUrlHelper.m
//  Demo
//
//  Created by jianghouyu on 16/2/16.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JUrlHelper.h"
#import "JModifyUserHeader.h"

@implementation JUrlHelper

- (NSString *)urlParse {
    NSString *url = [_dict[@"resultMessage"] substringFromIndex:50];
    url = [NSString stringWithFormat:@"%@%@",@"http://218.92.49.18:8080",url];
    NSLog(@"%@",url);
    return url;
}

- (void)modifyUserHeader:(NSString *)id_ {
    JModifyUserHeader *modifyUserHeader = [[JModifyUserHeader alloc] init];
    [modifyUserHeader modifyUserHeader:id_ :self.urlParse];
}

@end
