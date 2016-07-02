//
//  RollsViewController.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/23.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Users.h"

@interface RollsViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *myTableView;
    NSArray *resultArr;
    NSArray *selectRolls;
    NSMutableDictionary *dict;
}
@property (nonatomic,strong) NSString *myTitle;
@property (nonatomic,strong) Users *user;

@end
