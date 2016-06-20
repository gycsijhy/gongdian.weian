//
//  ProjectAllViewController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "ProjectAllViewController.h"
#import "ProjectCell.h"
#import "JNetWorkHelper.h"
#import "MJRefresh.h"
#import "project.h"
#import "ProjectDetailViewController.h"
#import "project_dw.h"
#import "ProJd.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface ProjectAllViewController ()

@end

@implementation ProjectAllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = _myTitle;
    self.isOpen = NO;
    self.selectIndex = nil;
    [self setupTableview];
}

#pragma mark - setup TableView
- (void)setupTableview{
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-49)];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    [self.view addSubview:myTableView];
    [myTableView registerNib:[UINib nibWithNibName:@"ProjectCell" bundle:nil] forCellReuseIdentifier:SimpleTableIdentifier];
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
        resultArr = [NSMutableArray arrayWithArray:[helper getProjectAll:user.iid:@"0" :@"50" :[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]]];
        for (int i = 0; i<[resultArr count]; i++) {
            project *pro = [resultArr objectAtIndex:i];
            if (pro.id_ == nil) {
                [resultArr removeObjectAtIndex:i];
            }
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
    return [resultArr count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.isOpen) {
        if (self.selectIndex.section==section) {
            return 2;
        }
    }
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 1.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1) {
        return 90.0f;
    }
    else{
        
        UITableViewCell *cell = [self tableView:myTableView cellForRowAtIndexPath:indexPath];
        return cell.frame.size.height;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    project *pro = [resultArr objectAtIndex:[indexPath section]];
    NSValueTransformer *transformer = [MTLJSONAdapter arrayTransformerWithModelClass:project_dw.class ];
    NSArray *arr = pro.project_dw;
    arr = [transformer transformedValue:arr];
    project_dw *pro_dw = [arr objectAtIndex:0];
    if (self.isOpen&&self.selectIndex.section ==indexPath.section && indexPath.row !=0) {
        static NSString *cellIdentifier = @"DetailCell";
        DetailCell *cell =(DetailCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (cell==nil){
            cell=[[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
        }
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.hostViewController = self;
        cell.pro = pro;
        cell.label1.text = [NSString stringWithFormat:@"%@%@%@%@%@%@%@",pro_dw.pname,@"(",pro_dw.fzrxm,@")",@"于 ",pro.dz,@" 施工"];
        cell.label2.text = [NSString stringWithFormat:@"%@%@",@"许可部门：",pro.xkdw];
        cell.label3.text = [NSString stringWithFormat:@"%@%@",@"到岗到位：",pro.ry];
        NSValueTransformer *transformer2 = [MTLJSONAdapter arrayTransformerWithModelClass:ProJd.class];
        NSArray *arr2 = pro_dw.project_jd;
        arr2= [transformer2 transformedValue:arr2];
        for (id mine in arr2) {
            ProJd *pro_jd = mine;
            if ([pro_jd.bm isEqualToString:@"勘查"]) {
                cell.kanc.backgroundColor = [UIColor greenColor];
            }
            if ([pro_jd.bm isEqualToString:@"开工"]) {
                cell.kaig.backgroundColor = [UIColor greenColor];
            }
            if ([pro_jd.bm isEqualToString:@"到岗"]) {
                cell.daog.backgroundColor = [UIColor greenColor];
            }
            if ([pro_jd.bm isEqualToString:@"督察"]) {
                cell.duc.backgroundColor = [UIColor greenColor];
            }
            if ([pro_jd.bm isEqualToString:@"完工"]) {
                cell.wang.backgroundColor = [UIColor greenColor];
            }
        }
        return cell;
    }
    else
    {
        ProjectCell *cell = (ProjectCell *)[tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
        cell.pro = pro;
        cell.ProjectId.text = pro.id_;
        cell.ProjectMc.text = pro.mc;
        cell.ProjectMc.font = [UIFont boldSystemFontOfSize:14];
        cell.PrjectSj.text= [NSString stringWithFormat:@"%@%@%@", pro.kssj,@" ~ ",pro.jssj];
        //cell.ProjectNr.text = pro.nr;
        [cell setIntroductionText:pro.nr];
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    project *pro = [resultArr objectAtIndex:[indexPath section]];
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
        ProjectDetailViewController *vc = [[ProjectDetailViewController alloc] init];
        vc.pro = pro;
        [self.navigationController pushViewController: vc animated:YES];
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
    int contentCount =1;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
