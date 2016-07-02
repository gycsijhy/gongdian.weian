//
//  SPController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/21.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "SPController.h"
#import "JNetWorkHelper.h"
#import "MJRefresh.h"
#import "projectsp.h"
#import "ProjectDetailViewController.h"
#import "ProJd.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface SPController ()

@end

@implementation SPController

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
        resultArr = [helper getSPJson :user.iid :[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
//        for (int i = 0; i<[resultArr count]; i++) {
//            projectsp *pro_sp = [resultArr objectAtIndex:i];
//            if (pro_sp.id_ == nil) {
//                [resultArr removeObjectAtIndex:i];
//            }
//        }
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
    return 3.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (indexPath.row == 1) {
//        return 90.0f;
//    }
//    else{
//        
        UITableViewCell *cell = [self tableView:myTableView cellForRowAtIndexPath:indexPath];
        return cell.frame.size.height;
//    }
}

- (CGRect) getFrame :(NSString *)text :(UILabel *)label :(CGRect) frame{
    CGSize size = CGSizeMake(frame.size.width, MAXFLOAT);
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:label.font, NSFontAttributeName,nil];
    CGSize labelSize =[text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading attributes:tdic context:nil].size;
    frame.size.height = labelSize.height+28;
    if (frame.size.height<44) {
        frame.size.height=44;
    }
    return frame;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    projectsp *pro_sp = [resultArr objectAtIndex:[indexPath section]];
    ProJd *pro_jd = pro_sp.project_jd;
    if (self.isOpen&&self.selectIndex.section ==indexPath.section && indexPath.row !=0) {
        static NSString *cellIdentifier = @"DetailCell";
        UITableViewCell *cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
        if (cell==nil){
            cell=[[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
        }
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.textLabel.text =[NSString stringWithFormat:@"%@ %@",pro_jd.menu,pro_jd.createtime];
        NSString *string = [NSString stringWithFormat:@"%@ %@\n%@%@",pro_jd.pname,pro_jd.uname,@"描述：",pro_jd.nr];
        cell.detailTextLabel.text = string;
        cell.frame = [self getFrame:string:cell.detailTextLabel :[cell frame]];
        return cell;
    }
    else
    {
        UITableViewCell *cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:SimpleTableIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.textLabel.text =[NSString stringWithFormat:@"%@ %@",pro_sp.id_,pro_sp.mc];
        NSString *string = [NSString stringWithFormat:@"%@ ~ %@\n%@",pro_sp.kssj,pro_sp.jssj,pro_sp.nr];
        cell.detailTextLabel.text = string;
        cell.frame = [self getFrame:string:cell.detailTextLabel :[cell frame]];
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    projectsp *pro_sp = [resultArr objectAtIndex:[indexPath section]];
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
        vc.pro_sp = pro_sp;
        vc.bz = @"2";
        vc.myTitle = @"违规审批";
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
