//
//  DXViewController.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMSViewController.h"

@interface DXViewController : UIViewController<postValue,UITableViewDataSource,UITableViewDelegate>{
    UITableView *myTableView;
    NSMutableArray *resultArr;
    NSMutableDictionary *myDict;
    NSString *ry;
    NSString *nr;
}

@property (nonatomic,strong) NSString *menu_id;
@property (nonatomic,strong) NSString *myTitle;


@end
