//
//  ProjectDetailViewController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/12.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "ProjectDetailViewController.h"
#import "AllCell.h"
#import "JNetWorkHelper.h"
#import "MJRefresh.h"
#import "ProJd.h"
#import "ProPhoto.h"
#import "SDWebImage/UIImageView+WebCache.h"
#import "ShowPhotos.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface ProjectDetailViewController ()

@end

@implementation ProjectDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"工程进度";
    _marr = [[NSMutableDictionary alloc] init];
    [self setupTableview];
}

#pragma mark - setup TableView
- (void)setupTableview{
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-49)];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    [self.view addSubview:myTableView];
    [myTableView registerNib:[UINib nibWithNibName:@"AllCell" bundle:nil] forCellReuseIdentifier:SimpleTableIdentifier];
    myTableView.tableFooterView = [[UIView alloc] init];
    
    //[self setupMJRefreshView];
    [self headerRefreshingText];
}

- (void) setupMJRefreshView {
    
    [myTableView addHeaderWithTarget:self action:@selector(headerRefreshingText) dateKey:@"table"];
    
    //[myTableView addFooterWithTarget:self action:@selector(footerRefreshingText)];
    
    myTableView.headerRefreshingText = @"刷新 ......";
    myTableView.headerPullToRefreshText = @"刷新";
    //myTableView.footerRefreshingText = @"刷新";
    //myTableView.footerPullToRefreshText = @"刷新 ......";
}

- (void)headerRefreshingText {
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        NSValueTransformer *transformer = [MTLJSONAdapter arrayTransformerWithModelClass:project_dw.class ];
        NSArray *arr = self.pro.project_dw;
        arr = [transformer transformedValue:arr];
        project_dw *pro_dw = [arr objectAtIndex:0];
        NSValueTransformer *transformer2 = [MTLJSONAdapter arrayTransformerWithModelClass:ProJd.class ];
        NSArray *arr2 = pro_dw.project_jd;
        resultArr = [transformer2 transformedValue:arr2];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [myTableView headerEndRefreshing];
            [myTableView footerEndRefreshing];
            [myTableView reloadData];
            //[myTableView reloadData];
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
    
    //[myTableView headerBeginRefreshing];
    [self headerRefreshingText];
}

#pragma mark - TableView Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [resultArr count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 1.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 134.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AllCell *cell = (AllCell *)[tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    ProJd *pro = [resultArr objectAtIndex:[indexPath row]];
    NSInteger x = [indexPath row]+1;
    NSValueTransformer *transformer = [MTLJSONAdapter arrayTransformerWithModelClass:ProPhoto.class ];
    NSArray *arr = pro.project_photo;

    arr = [transformer transformedValue:arr];
    if (arr.count>0) {
        cell.scrollView.hidden = NO;
        for (int i=0; i<arr.count; i++) {
            ProPhoto *pro = [arr objectAtIndex:i];
            UIImageView *thumbView = (UIImageView *)[cell.scrollView viewWithTag:i+1];
            thumbView .tag = x*100 +i;
            thumbView.contentMode = UIViewContentModeScaleAspectFill;
            //thumbView.backgroundColor = [UIColor lightGrayColor];
            thumbView.clipsToBounds = YES;
            if (i<arr.count) {
                thumbView.frame = CGRectMake((15+75*i), .5, 70, 70);
                thumbView.hidden = NO;
                [thumbView sd_setImageWithURL:[NSURL URLWithString:pro.url]];
                
                thumbView.userInteractionEnabled = YES;
                UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:  @selector(cz:)];
                singleTap.view.opaque = NO;
                [thumbView addGestureRecognizer:singleTap];
                NSObject *obj =[singleTap view].description;
                //[_marr setObject:pro forKey:[singleTap view].description];
                [_marr setObject:pro forKey:[NSString stringWithFormat: @"%ld",(long)thumbView.tag]];
            }
        }
    }

    cell.label1.text = [NSString stringWithFormat:@"%@ %@",pro.menu,pro.createtime];
    cell.label2.text = [NSString stringWithFormat:@"%@ %@",pro.pname,pro.uname];
    cell.label3.text = [NSString stringWithFormat:@"%@ %@",@"描述",pro.nr];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    //project *pro = [resultArr objectAtIndex:[indexPath row]];
    //Users *user = [resultArr objectAtIndex:[indexPath row]];
    //    JUserInfoTableViewController *userInfoTVC = [[UIStoryboard storyboardWithName:@"Work" bundle:nil] instantiateViewControllerWithIdentifier:@"UserInfo"];
    //    userInfoTVC.user = user;
    //    [self.navigationController pushViewController:userInfoTVC animated:YES];
    //    JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
    //    selectRolls = [helper getMenu:user.uids:[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
    //    resultArr2 = [helper getMenuAll:user.uids:[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
    //
    //    JUserHelper *userHelper = [[JUserHelper alloc] init];
    //    userHelper.hostViewController = self;
    //    userHelper.rowCount = resultArr2.count;
    //    [userHelper settingUser:user];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [resultArr removeObjectAtIndex:indexPath.row];
        [myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)cz:(id)sender {
    UIView *view = [sender view];
    //UITapGestureRecognizer *tap = (UITapGestureRecognizer *)sender;
    //NSValueTransformer *transformer = [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:ProPhoto.class ];
    //NSArray *arr = pro.project_photo;
    //NSLog(@"%@",[tap view]);
    //NSLog(@"%@",[_marr objectForKey:[tap view].description]);
    //arr = [transformer transformedValue:arr];
    //ProPhoto *pro_photo = [arr objectAtIndex:view.tag-1];
    ShowPhotos *vc = [[ShowPhotos alloc] init];
    //vc.pro = [_marr objectForKey:[tap view].description];
    vc.pro = [_marr objectForKey:[NSString stringWithFormat: @"%ld",(long)view.tag]];
    [self presentViewController:vc animated:YES completion:nil];
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
