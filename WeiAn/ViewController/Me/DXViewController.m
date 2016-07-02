//
//  DXViewController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "DXViewController.h"
#import "JNetWorkHelper.h"
#import "MJRefresh.h"
#import "SMSCell.h"
#import "User.h"
//#import "iToast.h"
#import "SJ.h"
#import "DX.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";


@interface DXViewController ()

@end

@implementation DXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(addUser)];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.title = self.myTitle;
    myDict = [[NSMutableDictionary alloc] init];
    ry = @"";
    nr = @"";
    [self setupTableview];
}

- (void)addUser {
    [myTableView reloadData];
    if ([myDict count]>0) {
        if (![nr isEqualToString:@""]) {
            
            DX *dx = [[DX alloc] init];
            dx.nr = nr;
            NSMutableArray *arr = [[NSMutableArray alloc] init];
            NSArray *keys = [myDict allKeys];
            for (NSString *str in keys) {
                User *user = [myDict objectForKey:str];
                SJ *sj = [[SJ alloc] init];
                sj.phonenumber = user.pcode;
                [arr addObject:sj];
            }
            dx.phoneNumbers = arr;
            NSDictionary *dict = [MTLJSONAdapter JSONDictionaryFromModel:dx error:nil];
            NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:kNilOptions error:nil];
            NSString *json = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
            NSString *json2 = [self utf8ToUnicode:json];
            NSLog(@"%@",json2);
            JNetWorkHelper *helper  = [[JNetWorkHelper alloc] init];
            NSString *str = [helper sendSMS:json2 :[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
            if ([str isEqualToString:@"1"]) {
//                [[[iToast makeText:NSLocalizedString(@"发送成功！", @"")]
//                  setGravity:iToastGravityBottom] show];
            }
            else {
//                [[[iToast makeText:NSLocalizedString(@"发送失败！", @"")]
//                  setGravity:iToastGravityBottom] show];
            }
        }
        else {
//            [[[iToast makeText:NSLocalizedString(@"请输入短信内容！", @"")]
//              setGravity:iToastGravityBottom] show];
        }
    }
    else{
//        [[[iToast makeText:NSLocalizedString(@"请选择发送对象！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
}


-(NSString *) utf8ToUnicode:(NSString *)string
{
    NSUInteger length = [string length];
    NSMutableString *s = [NSMutableString stringWithCapacity:0];
    for (int i = 0;i < length; i++)
    {
        unichar _char = [string characterAtIndex:i];
        //判断是否为英文和数字
//        if (_char <= '9' && _char >='0')
//        {
//            [s appendFormat:@"%@",[string substringWithRange:NSMakeRange(i,1)]];
//        }
//        else if(_char >='a' && _char <= 'z')
//        {
//            [s appendFormat:@"%@",[string substringWithRange:NSMakeRange(i,1)]];
//        }
//        else if(_char >='A' && _char <= 'Z')
        if (_char<= 128)
        {
            [s appendFormat:@"%@",[string substringWithRange:NSMakeRange(i,1)]];
        }
        else
        {
            //[s appendFormat:@"\\u%x",[string characterAtIndex:i]];
            [s appendFormat:@"&#%d;",_char];
        }
    }
    return s;
}

#pragma mark - setup TableView
- (void)setupTableview{
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-49)];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    [self.view addSubview:myTableView];
    [myTableView registerNib:[UINib nibWithNibName:@"SMSCell" bundle:nil] forCellReuseIdentifier:SimpleTableIdentifier];
    myTableView.tableFooterView = [[UIView alloc] init];
    
    //[self setupMJRefreshView];
}

- (void) setupMJRefreshView {
    
    [myTableView addHeaderWithTarget:self action:@selector(headerRefreshingText) dateKey:@"table"];
    
    [myTableView addFooterWithTarget:self action:@selector(footerRefreshingText)];
    
    myTableView.headerRefreshingText = @"刷新 ......";
    myTableView.headerPullToRefreshText = @"刷新";
    myTableView.footerRefreshingText = @"刷新";
    myTableView.footerPullToRefreshText = @"刷新 ......";
}
- (void)post:(NSMutableDictionary *)dict {
    myDict = dict;
    NSArray *keys = [myDict allKeys];
    for (NSString *str in keys) {
        User *user = [myDict objectForKey:str];
        ry = [ry stringByAppendingFormat:@"%@、",user.uname];
    }
    if ([keys count]!=0) {
        ry = [ry substringToIndex:[ry length]-1];
    }
    [myTableView reloadData];
}

- (void)headerRefreshingText {
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
    Users *user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        //JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
        //resultArr = [helper getProject:user.iid :self.menu_id :@"0" :@"10" :[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
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
    //return [resultArr count];
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 1.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //return 200.0f;
    UITableViewCell *cell = [self tableView:myTableView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height;
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
    if ([indexPath row] == 0) {
        static NSString *SimpleTableIdentifier2 = @"SimpleTableIdentifier2";
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:SimpleTableIdentifier2];
        cell.textLabel.text = @"部门人员";
        cell.detailTextLabel.text = @"请点击选择部门或人员";
        if (![ry isEqualToString:@""]) {
            cell.detailTextLabel.text = ry;
        }
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        [cell.textLabel setTextColor:[UIColor lightGrayColor]];
        cell.frame = [self getFrame:ry:cell.detailTextLabel :[cell frame]];
        return cell;
    }
    
    SMSCell *cell = (SMSCell *)[tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    nr = cell.txtView.text;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    if ([indexPath row]==0) {
        SMSViewController *vc = [[SMSViewController alloc] init];
        vc.myTitle = @"选择";
        vc.delegate = self;
        [self.navigationController pushViewController:vc animated:YES];
    }
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
