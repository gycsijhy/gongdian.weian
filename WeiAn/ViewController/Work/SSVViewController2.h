//
//  SSVViewController2.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/20.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSVViewController2 : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *myTableView;
    NSArray *resultArr;
}

@property (nonatomic,strong) NSString *menu_id;
@property (nonatomic,strong) NSString *myTitle;

@end
