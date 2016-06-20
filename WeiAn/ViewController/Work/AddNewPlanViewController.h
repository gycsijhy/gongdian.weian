//
//  AddNewPlanViewController.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/15.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "project.h"
#import "ProDW.h"
#import "project_ry.h"
#import <SHMultipleSelect/SHMultipleSelect.h>

@interface AddNewPlanViewController : UIViewController<SHMultipleSelectDelegate,UITableViewDataSource,UITableViewDelegate>{
    UITableView *myTableView;
    NSMutableArray *resultArr;
    NSMutableArray *departList;
    NSMutableArray *departSelected;
    NSMutableArray *numDepartSelected;
    NSMutableArray *nameDepartSelected;
    NSString *dgdw;
    NSString *kgxk;
    NSMutableDictionary *mDictDW;
    NSMutableArray *arrDW;
    NSMutableArray *arrRY;
    NSMutableArray *usersList;
    NSMutableArray *usersSelected;
    NSMutableArray *numDepartSelected1;
    NSMutableArray *nameDepartSelected1;
    NSMutableArray *arrDW1;
    NSMutableArray *arrRY1;
}

@property (nonatomic,strong) NSString *menu_id;
@property (nonatomic,strong) NSString *myTitle;
@property (nonatomic,strong) NSString *action;
@property (strong, nonatomic) project *pro;
@property (strong, nonatomic) project *prox;

@end
