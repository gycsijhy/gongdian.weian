//
//  WGViewController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/24.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "WGViewController.h"
#import "MJRefresh.h"
#import "DepartUser.h"
#import "User.h"
#import "SelectCell.h"
#import "JNetWorkHelper.h"
#import "UUInputAccessoryView.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface WGViewController ()

@end

@implementation WGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(addUser)];
//    self.navigationItem.rightBarButtonItem = rightButton;
    
    self.title = _myTitle;
    [self setupTableview];
}

- (void)addUser {
    if (self.delegate &&[self.delegate respondsToSelector:@selector(post:)]) {
//        [self.delegate post:ryDict];
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
    
    //[self setupMJRefreshView];
    [myTableView reloadData];
}

- (void) setupMJRefreshView {
    
    //[myTableView addHeaderWithTarget:self action:@selector(headerRefreshingText) dateKey:@"table"];
    
    //[myTableView addFooterWithTarget:self action:@selector(footerRefreshingText)];
    
    myTableView.headerRefreshingText = @"刷新 ......";
    myTableView.headerPullToRefreshText = @"刷新";
    //myTableView.footerRefreshingText = @"刷新";
    //myTableView.footerPullToRefreshText = @"刷新 ......";
}

- (void)headerRefreshingText {
    //    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
    //    Users *user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_async(queue, ^{
//        JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
//        resultArr = [NSMutableArray arrayWithArray:[helper getDepartUser:[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]]];
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [myTableView headerEndRefreshing];
//            [myTableView footerEndRefreshing];
//            [myTableView reloadData];
//        });
//    });
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
    return 3;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"违规情况描述";
    }
    else if (section == 1 ) {
        return [NSString stringWithFormat:@"%@%@",@"处罚施工单位",self.pro_dw.pname];
    }
    return [NSString stringWithFormat:@"%@%@",@"处罚负责人",self.pro_dw.fzrxm];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    if (self.isOpen) {
//        if (self.selectIndex.section==section) {
//            DepartUser *departUser = [resultArr objectAtIndex:section];
//            NSArray *arr = departUser.users;
//            return [arr count]+1;
//        }
//    }
    if (section == 0) {
        return 1;
    }
    else
        return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 44.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //    if (indexPath.row == 1) {
//    return 44.0f;
    //    }
    //    else{
    
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
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:SimpleTableIdentifier];
    if ([indexPath section] == 0) {
        cell.textLabel.text = @"描述：";
//        NSString *string = @"";
//        if ([self.pro_jd.dwf intValue]>0) {
//            string = [@"处罚施工单位" stringByAppendingString:self.pro_dw.pname];
//            string = [string stringByAppendingString:self.pro_jd.dwf];
//            string = [string stringByAppendingString:@"分"];
//            if ([self.pro_jd.dwq intValue] >0) {
//                string = [string stringByAppendingString:self.pro_jd.dwq];
//                string = [string stringByAppendingString:@"元"];
//            }
//        }
//        else if ([self.pro_jd.dwq intValue] >0) {
//            string = [@"处罚施工单位" stringByAppendingString:self.pro_dw.pname];
//            string = [string stringByAppendingString:self.pro_jd.dwq];
//            string = [string stringByAppendingString:@"元"];
//        }
//        if ([self.pro_jd.ryf intValue]>0) {
//            if ([string length]!=0) {
//                string = [string stringByAppendingString:@","];
//            }
//            string = [string stringByAppendingString:@"处罚负责人"];
//            string = [string stringByAppendingString:self.pro_dw.fzrxm];
//            string = [string stringByAppendingString:self.pro_jd.ryf];
//            string = [string stringByAppendingString:@"分"];
//            if ([self.pro_jd.ryq intValue] >0) {
//                string = [string stringByAppendingString:self.pro_jd.ryq];
//                string = [string stringByAppendingString:@"元"];
//            }
//        }
//        else if ([self.pro_jd.ryq intValue]>0){
//            if ([string length]!=0) {
//                string = [string stringByAppendingString:@","];
//            }
//            string = [string stringByAppendingString:@"处罚负责人"];
//            string = [string stringByAppendingString:self.pro_dw.fzrxm];
//            string = [string stringByAppendingString:self.pro_jd.ryq];
//            string = [string stringByAppendingString:@"元"];
//        }
        NSString *str = self.pro_jd.nr;
//        if ([string length]!=0) {
//            str = [NSString stringWithFormat:@"%@(%@)",str,string];
//        }
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.detailTextLabel.text = str;
        //self.pro_jd.nr=str;
        cell.frame = [self getFrame:str:cell.detailTextLabel :[cell frame]];
    }
    if ([indexPath section] == 1) {
        if (indexPath.row == 0) {
            cell.textLabel.text = @"罚分：";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%@%@",self.pro_jd.dwf,@"分"];
        }
        else {
            cell.textLabel.text = @"罚款：";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%@%@",self.pro_jd.dwq,@"元"];
        }
    }
    if ([indexPath section] == 2) {
        if (indexPath.row == 0) {
            cell.textLabel.text = @"罚分：";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%@%@",self.pro_jd.ryf,@"分"];
        }
        else {
            cell.textLabel.text = @"罚款：";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%@%@",self.pro_jd.ryq,@"元"];
        }
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    if ([indexPath section] == 0) {
        [UUInputAccessoryView showKeyboardType:UIKeyboardTypeDefault
                                       content:self.pro_jd.nr
                                         Block:^(NSString *contentStr)
         {
             if (contentStr.length == 0) return ;
             self.pro_jd.nr = contentStr;
             [myTableView reloadData];
         }];
    }
    if ([indexPath section] == 1) {
        if (indexPath.row == 0) {
            [UUInputAccessoryView showKeyboardType:UIKeyboardTypeNumberPad
                                           content:self.pro_jd.dwf
                                             Block:^(NSString *contentStr)
             {
                 if (contentStr.length == 0) return ;
                 self.pro_jd.dwf = contentStr;
                 [myTableView reloadData];
             }];
        }
        else {
            [UUInputAccessoryView showKeyboardType:UIKeyboardTypeNumberPad
                                           content:self.pro_jd.dwq
                                             Block:^(NSString *contentStr)
             {
                 if (contentStr.length == 0) return ;
                 self.pro_jd.dwq = contentStr;
                 [myTableView reloadData];
             }];

        }
    }
    if ([indexPath section] == 2) {
        if (indexPath.row == 0) {
            [UUInputAccessoryView showKeyboardType:UIKeyboardTypeNumberPad
                                           content:self.pro_jd.ryf
                                             Block:^(NSString *contentStr)
             {
                 if (contentStr.length == 0) return ;
                 self.pro_jd.ryf = contentStr;
                 [myTableView reloadData];
             }];

        }
        else {
            [UUInputAccessoryView showKeyboardType:UIKeyboardTypeNumberPad
                                           content:self.pro_jd.ryq
                                             Block:^(NSString *contentStr)
             {
                 if (contentStr.length == 0) return ;
                 self.pro_jd.ryq = contentStr;
                 [myTableView reloadData];
             }];

        }
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
