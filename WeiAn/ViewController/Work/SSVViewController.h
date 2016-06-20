//
//  SSVViewController.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSVViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>{
    UITableView *myTableView;
    NSMutableArray *resultArr;
}

@property (nonatomic,strong) NSString *menu_id;
@property (nonatomic,strong) NSString *myTitle;

@end
