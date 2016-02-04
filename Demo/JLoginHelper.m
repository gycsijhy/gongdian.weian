//
//  JLoginHelper.m
//  Demo
//
//  Created by jianghouyu on 16/1/27.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JLoginHelper.h"
#import "JCheckIMEI.h"
#import "PrefixHeader.pch"
#import "JCheckSFZH.h"
#import "JUpdateIMEI.h"

@implementation JLoginHelper

- (User *)loginHelper {
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_async(queue, ^{
//        JGetMenu *getMenu = [[JGetMenu alloc] init];
//        //JHY
//        resultArr = [getMenu getMenu:@"320721198703200414"];
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [myTableView headerEndRefreshing];
//            [myTableView footerEndRefreshing];
//            [myTableView reloadData];
//        });
//    });
    JCheckIMEI *checkIMEI = [[JCheckIMEI alloc] init];
    NSArray *arr = [checkIMEI getCheckIMEIResult:identifierNumber];
    User *user = [arr objectAtIndex:0];
    return user;
//    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:user];
//    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"JUSER"];
//    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSString *)checkSFZH : (NSString *)sfzh {
    JCheckSFZH *check = [[JCheckSFZH alloc] init];
    return [check checkSFZH:sfzh];
}

- (void)updateIMEI : (NSString *)sfzh :(NSString *)imei {
    JUpdateIMEI *update = [[JUpdateIMEI alloc] init];
    [update updateIMEI:sfzh :imei];
}

@end
