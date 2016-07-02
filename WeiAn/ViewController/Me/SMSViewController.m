//
//  SMSViewController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "SMSViewController.h"
#import "JNetWorkHelper.h"
#import "MJRefresh.h"
#import "DepartUser.h"
#import "User.h"
#import "SelectCell.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface SMSViewController ()

@end

@implementation SMSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(addUser)];
    self.navigationItem.rightBarButtonItem = rightButton;

    self.title = _myTitle;
    self.isOpen = NO;
    self.selectIndex = nil;
    bmDict = [[NSMutableDictionary alloc] init];
    ryDict = [[NSMutableDictionary alloc] init];
    [self setupTableview];
}

- (void)addUser {
    if (self.delegate &&[self.delegate respondsToSelector:@selector(post:)]) {
        [self.delegate post:ryDict];
        [[self navigationController] popViewControllerAnimated:YES];
    }
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
        resultArr = [NSMutableArray arrayWithArray:[helper getDepartUser:[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]]];
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
    return [resultArr count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.isOpen) {
        if (self.selectIndex.section==section) {
            DepartUser *departUser = [resultArr objectAtIndex:section];
            NSArray *arr = departUser.users;
            return [arr count]+1;
        }
    }
    return 1;
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
    DepartUser *departUser = [resultArr objectAtIndex:[indexPath section]];
    NSArray *arr = departUser.users;
    
    if (self.isOpen&&self.selectIndex.section ==indexPath.section && indexPath.row !=0) {
        User *user = [arr objectAtIndex:[indexPath row]-1];
        static NSString *cellIdentifier = @"SelectCell";
        SelectCell *cell = (SelectCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (cell==nil){
            cell=[[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
        }
        cell.delegate = self;
        cell.btn.tag = [user.iid intValue];
        cell.label.text = user.uname;
        if ([ryDict objectForKey:user.iid]) {
            [cell.btn setBackgroundImage:[UIImage imageNamed:@"selected"] forState:UIControlStateNormal];
        }
        else {
            [cell.btn setBackgroundImage:[UIImage imageNamed:@"unselected"] forState:UIControlStateNormal];
        }
//        [cell.textLabel setFont:[UIFont systemFontOfSize: 14]];
        return cell;
    }
    else
    {
        static NSString *cellIdentifier2 = @"SelectCell";
        SelectCell *cell = (SelectCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier2];
        if (cell==nil){
            cell=[[[NSBundle mainBundle] loadNibNamed:cellIdentifier2 owner:self options:nil] objectAtIndex:0];
        }
        cell.delegate = self;
        cell.label.text = departUser.pname;
        cell.btn.tag = [departUser.pid intValue];
        if ([bmDict objectForKey:departUser.pid]) {
            [cell.btn setBackgroundImage:[UIImage imageNamed:@"selected"] forState:UIControlStateNormal];
        }
        else {
            [cell.btn setBackgroundImage:[UIImage imageNamed:@"unselected"] forState:UIControlStateNormal];
        }
        UIColor *backColor= [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
        [cell setBackgroundColor:backColor];
        return cell;
    }
}

- (void)choseTerm:(UIButton *)button
{
    if (button.tag>=1000) {
        NSString *string = [NSString stringWithFormat:@"%ld",(long)button.tag];
        for (DepartUser *departUser in resultArr) {
            if ([departUser.pid isEqualToString:string]) {
                if ([bmDict objectForKey:string]) {
                    [bmDict removeObjectForKey:string];
                    for (User *user in departUser.users) {
                        [ryDict removeObjectForKey:user.iid];
                    }
                }
                else {
                    [bmDict setObject:@"" forKey:string];
                    for (User *user in departUser.users) {
                        [ryDict setObject:user forKey:user.iid];
                    }
                }
                [myTableView reloadData];
            }
        }
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    DepartUser *departUser = [resultArr objectAtIndex:[indexPath section]];
    NSArray *arr = departUser.users;
    if (indexPath.row == 0) {
        if ([indexPath isEqual:self.selectIndex]) {
            self.isOpen = NO;
            [self didSelectCellRowFirstDo:NO nextDo:NO];
            self.selectIndex = nil;
            
        }
        else
        {
            if (!self.selectIndex) {
                self.selectIndex = indexPath;
                [self didSelectCellRowFirstDo:YES nextDo:NO];
                
            }else
            {
                
                [self didSelectCellRowFirstDo:NO nextDo:YES];
            }
        }
        
    }else
    {
        User *user = [arr objectAtIndex:[indexPath row]-1];
        if ([ryDict objectForKey:user.iid]) {
            [ryDict removeObjectForKey:user.iid];
        }
        else {
            [ryDict setObject:user forKey:user.iid];
        }
        [myTableView reloadData];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didSelectCellRowFirstDo:(BOOL)firstDoInsert nextDo:(BOOL)nextDoInsert
{
    self.isOpen = firstDoInsert;
    
    //ProjectCell *cell = (ProjectCell *)[myTableView cellForRowAtIndexPath:self.selectIndex];
    //[cell changeArrowWithUp:firstDoInsert];
    
    [myTableView beginUpdates];
    
    int section = (int)self.selectIndex.section;
    //int contentCount = [[[resultArr objectAtIndex:section] objectForKey:@"list"] count];
    DepartUser *departUser = [resultArr objectAtIndex:section];
    NSArray *arr = departUser.users;
    int contentCount =(int)[arr count];
    NSMutableArray* rowToInsert = [[NSMutableArray alloc] init];
    for (NSUInteger i = 1; i < contentCount + 1; i++) {
        NSIndexPath* indexPathToInsert = [NSIndexPath indexPathForRow:i inSection:section];
        [rowToInsert addObject:indexPathToInsert];
    }
    
    if (firstDoInsert)
    {   [myTableView insertRowsAtIndexPaths:rowToInsert withRowAnimation:UITableViewRowAnimationTop];
    }
    else
    {
        [myTableView deleteRowsAtIndexPaths:rowToInsert withRowAnimation:UITableViewRowAnimationTop];
    }
    
    [myTableView endUpdates];
    if (nextDoInsert) {
        self.isOpen = YES;
        self.selectIndex = [myTableView indexPathForSelectedRow];
        [self didSelectCellRowFirstDo:YES nextDo:NO];
    }
    if (self.isOpen) [myTableView scrollToNearestSelectedRowAtScrollPosition:UITableViewScrollPositionTop animated:YES];
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
