//
//  ProjectAllViewController.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailCell.h"

@interface ProjectAllViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *myTableView;
    NSMutableArray *resultArr;
}
@property (nonatomic,strong) NSString *myTitle;
@property (assign) BOOL isOpen;
@property (nonatomic,retain) NSIndexPath *selectIndex;
@end
