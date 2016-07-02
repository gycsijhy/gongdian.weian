//
//  SSVViewController2.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/20.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "SSVViewController2.h"
#import "JNetWorkHelper.h"
#import "MJRefresh.h"
#import "SSVCell2.h"
#import "ProMenu.h"
#import "ProjectByMenu.h"
#import "SSVDetailViewController.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface SSVViewController2 ()

@end

@implementation SSVViewController2

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
    [myTableView registerNib:[UINib nibWithNibName:@"SSVCell2" bundle:nil] forCellReuseIdentifier:SimpleTableIdentifier];
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
        resultArr = [helper getProjectMenu:user.iid:[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
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
    SSVCell2 *cell = (SSVCell2 *)[tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    
    ProjectByMenu *proByMenu = [resultArr objectAtIndex:[indexPath row]];
    NSArray *arr = proByMenu.project_menu;
//    NSValueTransformer *transformer = [MTLJSONAdapter arrayTransformerWithModelClass:project_dw.class ];
//    NSArray *arr = pro.project_dw;
//    NSString *string =@"";
//    arr = [transformer transformedValue:arr];
//    for (id mine in arr) {
//        project_dw *pro_dw = mine;
//        //NSLog(@"%@",pro_dw.fzrxm);
//        string =[NSString stringWithFormat:@"%@%@%@%@%@ ",string,pro_dw.pname,@"(",pro_dw.fzrxm,@")"];
//    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.hostViewController = self;
    cell.arr = arr;
    cell.proByMenu = proByMenu;
    cell.gcbh.text = [NSString stringWithFormat:@"%@ %@%@%@",proByMenu.id_,@"(",proByMenu.yf,@")"];
    cell.xmmc.text = proByMenu.mc;
    cell.gzsj.text = [NSString stringWithFormat:@"%@%@%@", proByMenu.kssj,@"~",proByMenu.jssj];
    cell.gznr.text = proByMenu.nr;
    //[cell setIntroductionText:pro.nr];
    cell.gzdd.text = proByMenu.dz;
    cell.sgdw.text = [NSString stringWithFormat:@"%@%@%@%@ ",proByMenu.dw,@"(",proByMenu.fzrxm,@")"];
    cell.xkbm.text = proByMenu.xkdw;
    cell.dgdw.text = proByMenu.ry;
    cell.cjry.text = [NSString stringWithFormat:@"%@ %@",proByMenu.createusername,proByMenu.createtime];
    for (ProMenu *pro_menu in arr) {
        if ([pro_menu.menu_bm isEqualToString:@"勘查"]) {
            [cell.btn1 setTitle:@"勘查" forState:UIControlStateNormal];
            [cell.btn1 setHidden:NO];
        }
        else if ([pro_menu.menu_bm isEqualToString:@"开工"]) {
            [cell.btn2 setTitle:@"开工" forState:UIControlStateNormal];
            [cell.btn2 setHidden:NO];
        }
        else if ([pro_menu.menu_bm isEqualToString:@"到岗"]) {
            [cell.btn3 setTitle:@"到岗" forState:UIControlStateNormal];
            [cell.btn3 setHidden:NO];
        }
        else if ([pro_menu.menu_bm isEqualToString:@"督察"]) {
            [cell.btn4 setTitle:@"督察" forState:UIControlStateNormal];
            [cell.btn4 setHidden:NO];
        }
        else if ([pro_menu.menu_bm isEqualToString:@"完工"]) {
            [cell.btn5 setTitle:@"完工" forState:UIControlStateNormal];
            [cell.btn5 setHidden:NO];
        }
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    ProjectByMenu *proByMenu = [resultArr objectAtIndex:[indexPath row]];
//    ProMenu *proMenu = proByMenu.project_menu;
//    SSVDetailViewController *vc = [[SSVDetailViewController alloc] init];
//    vc.menu_id = proMenu.menu_id;
//    vc.myTitle = proMenu.menu;
//    vc.proByMenu = proByMenu;
//    vc.bz=@"2";
//    [self.navigationController pushViewController:vc animated:YES];
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
