//
//  JWorkViewController.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JWorkViewController.h"
#import "Menu.h"
#import "MJRefresh.h"
#import "JGetMenu.h"
#import "JDepartViewController.h"
#import "JUserViewController.h"
#import "Contants.h"
#import "User.h"
#import "JAddProjectTableViewController.h"
#import "JAddSCJHTableViewController.h"

@interface JWorkViewController ()

@end

@implementation JWorkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupTableView];
}

#pragma mark - setup TableView
- (void)setupTableView {
    //添加列表
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    //myTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:myTableView];
    myTableView.tableFooterView = [[UIView alloc]init];
    
    [self setupMJRefreshView];
}

- (void) setupMJRefreshView {
    
    [myTableView addHeaderWithTarget:self action:@selector(headerRefreshingText) dateKey:@"table"];
    
    [myTableView addFooterWithTarget:self action:@selector(footerRefreshingText)];
    
    myTableView.headerRefreshingText = @"刷新 ......";
    myTableView.headerPullToRefreshText = @"刷新";
    myTableView.footerRefreshingText = @"刷新 ......";
    myTableView.footerPullToRefreshText = @"刷新";
}

- (void)headerRefreshingText {
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
    User *user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        JGetMenu *getMenu = [[JGetMenu alloc] init];
        //JHY
        resultArr = [getMenu getMenu:user.uid];
        
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
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [resultArr count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 1.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];

    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1
                                  reuseIdentifier:SimpleTableIdentifier];
    }
    Menu *menu = [resultArr objectAtIndex:[indexPath row]];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.textLabel.text = menu.menu;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    Menu *menu = [resultArr objectAtIndex:[indexPath row]];
    NSLog(@"%@",menu.iid);
    if ([menu.iid isEqual: @"100"]) {
        JDepartViewController *vc = [[JDepartViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([menu.iid isEqualToString:@"101"]) {
        JUserViewController *vc = [[JUserViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([menu.iid isEqualToString:@"202"]) {
        JAddProjectTableViewController *vc = [[UIStoryboard storyboardWithName:@"Work" bundle:nil] instantiateViewControllerWithIdentifier:@"AddProject"];
        [self.navigationController pushViewController: vc animated:YES];
    }
    else if ([menu.iid isEqualToString:@"201"]) {
        JAddSCJHTableViewController *vc = [[UIStoryboard storyboardWithName:@"Work" bundle:nil] instantiateViewControllerWithIdentifier:@"AddSCJH"];
        [self.navigationController pushViewController: vc animated:YES];
    }
    
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
