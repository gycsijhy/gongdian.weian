//
//  SSVViewController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "SSVViewController.h"
#import "JNetWorkHelper.h"
#import "MJRefresh.h"
#import "SSVCell.h"
#import "project.h"
#import "SSVDetailViewController.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface SSVViewController ()

@end

@implementation SSVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = self.myTitle;
    [self setupTableview];
}

#pragma mark - setup TableView
- (void)setupTableview{
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-49)];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    [self.view addSubview:myTableView];
    [myTableView registerNib:[UINib nibWithNibName:@"SSVCell" bundle:nil] forCellReuseIdentifier:SimpleTableIdentifier];
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
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
    Users *user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
        resultArr = [helper getProject:user.iid :self.menu_id :@"0" :@"10" :[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
        dispatch_async(dispatch_get_main_queue(), ^{
            [myTableView headerEndRefreshing];
            [myTableView footerEndRefreshing];
            [myTableView reloadData];
        });
    });
}

- (void)footerRefreshingText {
    [myTableView footerEndRefreshing];
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
    //return 200.0f;
    UITableViewCell *cell = [self tableView:myTableView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SSVCell *cell = (SSVCell *)[tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    
    project *pro = [resultArr objectAtIndex:[indexPath row]];
    NSArray *arr = pro.project_dw;
    NSString *string =@"";
    for (id mine in arr) {
        project_dw *pro_dw = mine;
        //NSLog(@"%@",pro_dw.fzrxm);
        string =[NSString stringWithFormat:@"%@%@%@%@%@ ",string,pro_dw.pname,@"(",pro_dw.fzrxm,@")"];
    }

    cell.gcbh.text = [NSString stringWithFormat:@"%@ %@%@%@",pro.id_,@"(",pro.yf,@")"];
    cell.xmmc.text = pro.mc;
    cell.gzsj.text = [NSString stringWithFormat:@"%@%@%@", pro.kssj,@"~",pro.jssj];
    cell.gznr.text = pro.nr;
    //[cell setIntroductionText:pro.nr];
    cell.gzdd.text = pro.dz;
    cell.sgdw.text = string;
    cell.xkbm.text = pro.xkdw;
    cell.dgdw.text = pro.ry;
    cell.cjry.text = [NSString stringWithFormat:@"%@ %@",pro.createusername,pro.createtime];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    project *pro = [resultArr objectAtIndex:[indexPath row]];
    SSVDetailViewController *vc = [[SSVDetailViewController alloc] init];
    vc.menu_id = self.menu_id;
    vc.myTitle = self.myTitle;
    vc.pro = pro;
    vc.bz =@"1";
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [resultArr removeObjectAtIndex:indexPath.row];
        [myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationFade];
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
