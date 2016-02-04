//
//  JUserViewController.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JUserViewController.h"
#import "JGetUser.h"
#import "MJRefresh.h"
#import "User.h"
#import "JUserTableViewCell.h"
#import "JAddUserTableViewController.h"
#import "JUserInfoTableViewController.h"


static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface JUserViewController ()

@end

@implementation JUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addUser)];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] init];
    backButton.title = @"返回";
    self.navigationItem.rightBarButtonItem = rightButton;
    self.navigationItem.backBarButtonItem = backButton;
    
    [self setupTableView];
}

- (void)addUser {
    JAddUserTableViewController *vc = [[UIStoryboard storyboardWithName:@"Work" bundle:nil] instantiateViewControllerWithIdentifier:@"AddUser"];
    [self.navigationController pushViewController: vc animated:YES];
}

#pragma mark - setup TableView
- (void)setupTableView {
    //添加列表
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    
    [self.view addSubview:myTableView];
    [myTableView registerNib:[UINib nibWithNibName:@"JUserTableViewCell" bundle:nil] forCellReuseIdentifier:SimpleTableIdentifier];
    myTableView.tableFooterView = [[UIView alloc]init];
    
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
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        JGetUser *getUser = [[JGetUser alloc] init];
        //JHY
        resultArr = [getUser getUser];
        
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
    return 70.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    JUserTableViewCell *cell = (JUserTableViewCell *) [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    
//    if (cell == nil)
//    {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1
//                                      reuseIdentifier:SimpleTableIdentifier];
//    }
    User *user = [resultArr objectAtIndex:[indexPath row]];
    
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    
//    cell.textLabel.text = user.uname;
    
    cell.bmLabel.text = user.pname;
    cell.xmLabel.text = user.uname;
    cell.sjLabel.text = user.pcode;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    User *user = [resultArr objectAtIndex:[indexPath row]];
    JUserInfoTableViewController *userInfoTVC = [[UIStoryboard storyboardWithName:@"Work" bundle:nil] instantiateViewControllerWithIdentifier:@"UserInfo"];
    userInfoTVC.user = user;
    [self.navigationController pushViewController:userInfoTVC animated:YES];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [resultArr removeObjectAtIndex:indexPath.row];
        [myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
    return @"删除";
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
