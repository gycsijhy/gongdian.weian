//
//  RollsViewController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/23.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "RollsViewController.h"
#import "JNetWorkHelper.h"
#import "MJRefresh.h"
#import "Menu.h"
#import "SelectCell.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface RollsViewController ()

@end

@implementation RollsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = _myTitle;
    dict = [[NSMutableDictionary alloc] init];
    [self setupTableview];
}

#pragma mark - setup TableView
- (void)setupTableview{
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-49)];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    [self.view addSubview:myTableView];
    myTableView.tableFooterView = [[UIView alloc] init];
    
    [self setupMJRefreshView];
}

- (void) setupMJRefreshView {
    
    [myTableView addHeaderWithTarget:self action:@selector(headerRefreshingText) dateKey:@"table"];
    
    [myTableView addFooterWithTarget:self action:@selector(footerRefreshingText)];
    
    myTableView.headerRefreshingText = @"刷新 ......";
    myTableView.headerPullToRefreshText = @"刷新";
    myTableView.footerRefreshingText = @"刷新";
    myTableView.footerPullToRefreshText = @"刷新 ......";
}

- (void)headerRefreshingText {
    //    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
    //    Users *user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
        selectRolls = [helper getMenu:self.user.uids:[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
        resultArr = [helper getMenuAll:self.user.uids:[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
        for (Menu *menu in selectRolls) {
            [dict setObject:menu forKey:menu.iid];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [myTableView headerEndRefreshing];
            [myTableView footerEndRefreshing];
            [myTableView reloadData];
        });
    });
}

- (void)footerRefreshingText {
    [myTableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated {
    CGRect rect = myTableView.frame;
    rect.size.width = self.view.frame.size.width;
    myTableView.frame = rect;
    
    [myTableView headerBeginRefreshing];
}

#pragma mark - TableView Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [resultArr count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 1.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //    if (indexPath.row == 1) {
    return 44.0f;
    //    }
    //    else{
    //
    //        UITableViewCell *cell = [self tableView:myTableView cellForRowAtIndexPath:indexPath];
    //        return cell.frame.size.height;
    //    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Menu *menu = [resultArr objectAtIndex:[indexPath row]];
    static NSString *cellIdentifier = @"SelectCell";
    SelectCell *cell = (SelectCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil){
        cell=[[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
    }
//    cell.delegate = self;
//    cell.btn.tag = [menu.iid intValue];
    cell.label.text = menu.menu;
    if ([dict objectForKey:menu.iid]) {
        [cell.btn setBackgroundImage:[UIImage imageNamed:@"selected"] forState:UIControlStateNormal];
    }
    else {
        [cell.btn setBackgroundImage:[UIImage imageNamed:@"unselected"] forState:UIControlStateNormal];
    }
    //        [cell.textLabel setFont:[UIFont systemFontOfSize: 14]];
    return cell;
}

- (void)choseTerm:(UIButton *)button
{
    if (button.tag>=1000) {
//        NSString *string = [NSString stringWithFormat:@"%ld",(long)button.tag];
//        for (DepartUser *departUser in resultArr) {
//            if ([departUser.pid isEqualToString:string]) {
//                if ([bmDict objectForKey:string]) {
//                    [bmDict removeObjectForKey:string];
//                    for (User *user in departUser.users) {
//                        [ryDict removeObjectForKey:user.iid];
//                    }
//                }
//                else {
//                    [bmDict setObject:@"" forKey:string];
//                    for (User *user in departUser.users) {
//                        [ryDict setObject:user forKey:user.iid];
//                    }
//                }
//                [myTableView reloadData];
//            }
//        }
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    Menu *menu = [resultArr objectAtIndex:[indexPath row]];
    JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
    if ([dict objectForKey:menu.iid]) {
        [dict removeObjectForKey:menu.iid];
        [helper modifyUserRolls:self.user.uids :menu.iid :@"0" :[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
    }
    else {
        [dict setObject:menu forKey:menu.iid];
        [helper modifyUserRolls:self.user.uids :menu.iid :@"1" :[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
    }
    [myTableView reloadData];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
