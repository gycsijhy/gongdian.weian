//
//  ProMenu.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/18.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "ProMenu.h"

@implementation ProMenu
+ (NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"pro_id":@"pro_id",
             @"menu_id":@"menu_id",
             @"menu":@"menu",
             @"menu_bm":@"menu_bm"
             };
}
@end
