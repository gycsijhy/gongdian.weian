//
//  ProjectDetailViewController.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/12.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "project_dw.h"
#import "projectsp.h"

@interface ProjectDetailViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *myTableView;
    NSMutableArray *resultArr;
}

@property (nonatomic, retain) NSMutableDictionary *marr;
@property (strong,nonatomic) project_dw *pro;
@property (strong,nonatomic) projectsp *pro_sp;
@property (strong,nonatomic) NSString *bz;
@property (nonatomic,strong) NSString *myTitle;
@property (strong,nonatomic) NSString *str;

@end
