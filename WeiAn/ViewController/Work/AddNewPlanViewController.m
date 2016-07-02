//
//  AddNewPlanViewController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/15.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "AddNewPlanViewController.h"
#import "JNetWorkHelper.h"
#import "MJRefresh.h"
#import "ActionSheetStringPicker.h"
#import "Depart.h"
#import "UUInputAccessoryView.h"
#import "Users.h"
//#import "iToast.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
static NSString *SimpleTableIdentifier2 = @"SimpleTableIdentifier2";

@interface AddNewPlanViewController ()

@end

@implementation AddNewPlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(addUser)];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.title = self.myTitle;
    self.pro = [[project alloc] init];
    kgxk = [[NSString alloc] init];
    dgdw = [[NSString alloc] init];
    mDictDW = [[NSMutableDictionary alloc] init];
    arrRY = [[NSMutableArray alloc] init];
    arrDW = [[NSMutableArray alloc] init];
    arrRY1 = [[NSMutableArray alloc] init];
    arrDW1 = [[NSMutableArray alloc] init];
    if (self.prox.id_.length >2) {
        self.pro = self.prox;
        for (project_dw *prodw in self.prox.project_dw) {
            ProDW *pw = [[ProDW alloc] init];
            pw._id = 0;
            pw.id = prodw.id;
            pw.dz = prodw.dz;
            pw.fzr = prodw.fzr;
            pw.fzrxm = prodw.fzrxm;
            pw.pid = prodw.pid;
            pw.pname = prodw.pname;
            [arrDW addObject:pw];
        }
        self.pro.project_dw = arrDW;
        kgxk = self.prox.xkdw;
        dgdw = self.prox.ry;
        arrRY = [NSMutableArray arrayWithArray:self.prox.project_ry];
//        arrRY1 = [NSMutableArray arrayWithArray:self.prox.project_ry];
//        for (int i = 0; i<arrRY1.count; i++) {
//            NSDictionary *dict = [arrRY1 objectAtIndex:i];
//            project_ry *pro_ry = [MTLJSONAdapter modelOfClass:project_ry.class fromJSONDictionary:dict error:nil];
//            [arrRY addObject:pro_ry];
//        }
        //arrDW = [NSMutableArray arrayWithArray:self.prox.project_dw];
//        arrDW1 = [NSMutableArray arrayWithArray:self.prox.project_dw];
//        for (int i = 0; i<arrDW1.count; i++) {
//            NSDictionary *dict = [arrDW1 objectAtIndex:i];
//            ProDW *pro_dw = [MTLJSONAdapter modelOfClass:ProDW.class fromJSONDictionary:dict error:nil];
//            [arrDW addObject:pro_dw];
//        }
        for (ProDW *pro_dw in arrDW) {
            [mDictDW setObject:pro_dw forKey:pro_dw.pid];
        }
    }
    [self setupTableview];
}


- (void)addUser {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd hh:mm"];
    if (self.pro.mc == nil ) {
//        [[[iToast makeText:NSLocalizedString(@"请选择项目名称！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
    else if (self.pro.nr == nil) {
//        [[[iToast makeText:NSLocalizedString(@"请输入工作内容！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
    else if (self.pro.kssj == nil) {
//        [[[iToast makeText:NSLocalizedString(@"请选择开始时间！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
    else if (self.pro.jssj == nil) {
//        [[[iToast makeText:NSLocalizedString(@"请选择结束时间！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
    else if ([[df dateFromString:self.pro.jssj] compare:[df dateFromString:self.pro.kssj]] != NSOrderedDescending) {
//        [[[iToast makeText:NSLocalizedString(@"结束时间不能早于开始时间！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
    else if (self.pro.dw == nil) {
//        [[[iToast makeText:NSLocalizedString(@"请选择施工单位！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
    else if (self.pro.ry.length == 0) {
//        [[[iToast makeText:NSLocalizedString(@"请选择到岗到位人员！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
    else if (self.pro.xk_pid == nil) {
//        [[[iToast makeText:NSLocalizedString(@"请选择开完工许可单位！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
    else if ([arrDW count]!=[departSelected count]){
//        [[[iToast makeText:NSLocalizedString(@"请完善工作地点和工程负责人！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
    else {
        self.pro.flag = @"1";
        self.pro.id_ = @"1";
        self.pro.yf = [NSString stringWithFormat:@"%@%@",[self.pro.kssj substringToIndex:4],[self.pro.kssj substringWithRange:NSMakeRange(5, 2)]];
        NSString *string = @"";
        for (ProDW *pro_dw in arrDW) {
            if (pro_dw.fzrxm == nil) {
                NSString *str = [NSString stringWithFormat:@"%@%@%@",@"请选择",pro_dw.pname,@"工作负责人！"];
//                [[[iToast makeText:NSLocalizedString(str, @"")]
//                  setGravity:iToastGravityBottom] show];
                return;
            }
            else if (pro_dw.dz == nil) {
                NSString *str = [NSString stringWithFormat:@"%@%@%@",@"请输入",pro_dw.pname,@"工作地点！"];
//                [[[iToast makeText:NSLocalizedString(str, @"")]
//                  setGravity:iToastGravityBottom] show];
                return;
            }
            else{
                //[arrDW1 addObject:[MTLJSONAdapter JSONDictionaryFromModel:pro_dw error:nil]];
                string = [string stringByAppendingFormat:@"%@、",pro_dw.dz];
            }
        }
        self.pro.dz = [string substringToIndex:[string length]-1];
        self.pro.project_dw = arrDW;
//        for (project_ry *user in arrRY) {
//            [arrRY1 addObject:[MTLJSONAdapter JSONDictionaryFromModel:user error:nil]];
//        }
        self.pro.project_ry = arrRY;
        
        NSLog(@"%@",self.pro);
        NSString *json = [self getJson:self.pro];
        //NSLog(@"%@",json);
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        dispatch_async(queue, ^{
            JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
            NSString * result = [helper modifyProject:_action :json :[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
            dispatch_async(dispatch_get_main_queue(), ^{
                if ([result isEqualToString:@"1"]) {
                    self.navigationItem.rightBarButtonItem.enabled = false;
//                    [[[iToast makeText:NSLocalizedString(@"计划上传成功！", @"")]
//                      setGravity:iToastGravityBottom] show];
                    //[self dismissViewControllerAnimated:YES completion:nil];
                    [NSThread sleepForTimeInterval:1.0f];
                    [[self navigationController] popViewControllerAnimated:YES];
                }
                else {
//                    [[[iToast makeText:NSLocalizedString(@"上传计划失败！", @"")]
//                      setGravity:iToastGravityBottom] show];
                }
            });
        });
    }
}

-(NSString *)getJson :(id) model{
    NSDictionary *dict = [MTLJSONAdapter JSONDictionaryFromModel:model error:nil];
    NSData  *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:kNilOptions error:nil];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

#pragma mark - setup TableView
- (void)setupTableview{
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-49)];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    [self.view addSubview:myTableView];
    myTableView.tableFooterView = [[UIView alloc] init];
    
    [self headerRefreshingText];
}

- (void)headerRefreshingText {
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
    Users *user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    self.pro.createuser = user.iid;
    self.pro.createusername = user.uname;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        resultArr = [[NSMutableArray alloc] initWithObjects:
                     @"项目名称：",
                     @"工作内容：",
                     @"开始时间：",
                     @"结束时间：",
                     @"施工单位：",
                     @"施工地点和工程负责人：",
                     @"到岗到位人员：",
                     @"开完工许可部门：", nil];
        JNetWorkHelper *helper = [[JNetWorkHelper alloc]init];
        departList = [helper getDepart2:[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
        usersList = [helper getUserByMenu:[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]:@"到岗到位"];
        if (self.prox.id_.length >2) {
            departSelected = [[NSMutableArray alloc] init];
            nameDepartSelected = [[NSMutableArray alloc] init];
            usersSelected = [[NSMutableArray alloc] init];
            nameDepartSelected1 = [[NSMutableArray alloc] init];
            for (Depart * depart in departList) {
                for (ProDW *pro_dw in arrDW) {
                    if (depart.pid == pro_dw.pid) {
                        [departSelected addObject:depart];
                        [nameDepartSelected addObject:depart];
                    }
                }
            }
            for (Users * user in usersList) {
                for (project_ry *pro_ry in arrRY) {
                    if (user.iid == pro_ry.user_id) {
                        [usersSelected addObject:user];
                        [nameDepartSelected1 addObject:user];
                    }
                }
            }
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [myTableView headerEndRefreshing];
            [myTableView footerEndRefreshing];
            [myTableView reloadData];
        });
    });
}

- (void)viewWillAppear:(BOOL)animated {
    CGRect rect = myTableView.frame;
    rect.size.width = self.view.frame.size.width;
    myTableView.frame = rect;
}

#pragma mark - TableView Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [resultArr count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 5) {
        return [departSelected count]*3+1;
    }
    else
     return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 1.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
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
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:SimpleTableIdentifier];
    cell.textLabel.text = [resultArr objectAtIndex:[indexPath section]];
    if ([indexPath section] == 0) {
        cell.detailTextLabel.text = self.pro.mc;
    }
    if ([indexPath section] == 1) {
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.detailTextLabel.text = self.pro.nr;
        cell.frame = [self getFrame:self.pro.nr:cell.detailTextLabel :[cell frame]];
    }
    if ([indexPath section] == 2) {
        cell.detailTextLabel.text = self.pro.kssj;
    }
    if ([indexPath section] == 3) {
        cell.detailTextLabel.text = self.pro.jssj;
    }
    if ([indexPath section] == 4) {
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.detailTextLabel.text = self.pro.dw;
        cell.frame = [self getFrame:self.pro.dw:cell.detailTextLabel :[cell frame]];
    }
    if ([indexPath section] == 5) {
        UITableViewCell *cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:SimpleTableIdentifier2];
        if (indexPath.row == 0) {
            cell2.textLabel.text = [resultArr objectAtIndex:[indexPath section]];
            cell2.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        for (int i =0;i<[nameDepartSelected count];i++) {
            Depart *depart = [nameDepartSelected objectAtIndex:i];
            ProDW *proj_dw = [mDictDW objectForKey:depart.pid];
            if (indexPath.row == 1+3*i) {
                cell2.textLabel.text = depart.pname;
                cell2.textLabel.font = [UIFont boldSystemFontOfSize:14];
                cell2.selectionStyle = UITableViewCellSelectionStyleNone;
            }
            if (indexPath.row == 2+3*i) {
                cell2.textLabel.text = @"  工作负责人：";
                cell2.textLabel.font = [UIFont systemFontOfSize:14];
                cell2.detailTextLabel.text = proj_dw.fzrxm;
            }
            if (indexPath.row == 3+3*i) {
                cell2.textLabel.text = @"  施工地点：";
                cell2.textLabel.font = [UIFont systemFontOfSize:14];
                cell2.detailTextLabel.text = proj_dw.dz;
            }
        }
        return cell2;
    }
    if ([indexPath section] == 6) {
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.detailTextLabel.text = dgdw;
        cell.frame = [self getFrame:dgdw:cell.detailTextLabel :[cell frame]];
    }
    if ([indexPath section] == 7) {
        cell.detailTextLabel.text = kgxk;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    if ([indexPath section] == 0) {
        NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:
                              @"城网施工",
                              @"配网施工",
                              @"农网施工",
                              @"变电维修",
                              @"线路维修",nil];
        [ActionSheetStringPicker showPickerWithTitle:nil rows:arr initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
            self.pro.mc = selectedValue;
            [myTableView reloadData];
        } cancelBlock:nil origin:self.view];
    }
    if ([indexPath section] == 1) {
        [UUInputAccessoryView showKeyboardType:UIKeyboardTypeDefault
                                       content:self.pro.nr
                                         Block:^(NSString *contentStr)
         {
             if (contentStr.length == 0) return ;
             self.pro.nr = contentStr;
             [myTableView reloadData];
         }];
    }
    if ([indexPath section] == 2) {
        [self getDateTime:@"1"];
    }
    if ([indexPath section] == 3) {
        [self getDateTime:@"2"];
    }
    if ([indexPath section] == 4) {
        SHMultipleSelect *multipleSelect = [[SHMultipleSelect alloc] init];
        multipleSelect.tag = 1;
        multipleSelect.delegate = self;
        multipleSelect.rowsCount = departList.count;
        [multipleSelect show];
    }
    if ([indexPath section] == 5) {
        for (int i =0;i<[nameDepartSelected count];i++) {
            Depart *depart = [nameDepartSelected objectAtIndex:i];
            ProDW *pro_dw3 = [[ProDW alloc] init];
            if ([mDictDW objectForKey:depart.pid]!= nil) {
                pro_dw3 = [mDictDW objectForKey:depart.pid];
            }
            if (indexPath.row == 2+3*i) {
                dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
                dispatch_async(queue, ^{
                    JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
                    NSArray *userList = [helper getUserByPid:[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]:depart.pid];
                    dispatch_async(dispatch_get_main_queue(), ^{
                        NSMutableArray *arr = [[NSMutableArray alloc] init];
                        for (Users *user in userList) {
                            [arr addObject:user.uname];
                        }
                        [ActionSheetStringPicker showPickerWithTitle:nil rows:arr initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
                            Users *user =[userList objectAtIndex:selectedIndex];
                            ProDW *pro_dw1 = [[ProDW alloc] init];
                            pro_dw1._id = 0;
                            pro_dw1.fzr = user.iid;
                            pro_dw1.fzrxm = user.uname;
                            pro_dw1.id = @"1";
                            pro_dw1.pid = depart.pid;
                            pro_dw1.pname = depart.pname;
                            pro_dw1.dz = pro_dw3.dz;
                            if ([mDictDW objectForKey:depart.pid]!= nil) {
                                [mDictDW removeObjectForKey:depart.pid];
                                [arrDW removeObject:pro_dw3];
                            }
                            [mDictDW setObject:pro_dw1 forKey:depart.pid];
                            
                            [arrDW addObject:pro_dw1];
                            [myTableView reloadData];
                        } cancelBlock:nil origin:self.view];
                    });
                });
                
            }
            if (indexPath.row == 3+3*i) {
                [UUInputAccessoryView showKeyboardType:UIKeyboardTypeDefault
                                               content:pro_dw3.dz
                                                 Block:^(NSString *contentStr)
                 {
                     if (contentStr.length == 0) return ;
                     ProDW *pro_dw2 = [[ProDW alloc] init];
                     pro_dw2._id = 0;
                     pro_dw2.id = @"1";
                     pro_dw2.fzr = pro_dw3.fzr;
                     pro_dw2.fzrxm = pro_dw3.fzrxm;
                     pro_dw2.pid = pro_dw3.pid;
                     pro_dw2.pname = depart.pname;
                     pro_dw2.dz = contentStr;
                     if ([mDictDW objectForKey:depart.pid]!= nil) {
                         [mDictDW removeObjectForKey:depart.pid];
                         [arrDW removeObject:pro_dw3];
                     }
                     [mDictDW setObject:pro_dw2 forKey:depart.pid];
                     
                     [arrDW addObject:pro_dw2];
                     [myTableView reloadData];
                 }];
            }
        }
    }
    if ([indexPath section] == 6) {
        SHMultipleSelect *multipleSelect = [[SHMultipleSelect alloc] init];
        multipleSelect.tag = 2;
        multipleSelect.delegate = self;
        multipleSelect.rowsCount = usersList.count;
        [multipleSelect show];
    }
    if ([indexPath section] == 7) {
        NSMutableArray *arr = [[NSMutableArray alloc] init];
        for (Depart *depart in departList) {
            [arr addObject:depart.pname];
        }
        [ActionSheetStringPicker showPickerWithTitle:nil rows:arr initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
            Depart *depart =[departList objectAtIndex:selectedIndex];
            self.pro.xk_pid = depart.pid;
            kgxk = selectedValue;
            [myTableView reloadData];
        } cancelBlock:nil origin:self.view];
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [resultArr removeObjectAtIndex:indexPath.row];
        [myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - SHMultipleSelectDelegate
- (void)multipleSelectView:(SHMultipleSelect*)multipleSelectView clickedBtnAtIndex:(NSInteger)clickedBtnIndex
    withSelectedIndexPaths:(NSArray *)selectedIndexPaths {
    if (multipleSelectView.tag == 1) {
        if (clickedBtnIndex == 1) {
            //初始化_theDepartmentSelected
            NSMutableArray *tempArr = [[NSMutableArray alloc] init];
            departSelected = tempArr;
            //将用户选择的 部门名称 加入到 可变数组 _theDepartmentSelected 中
            for (NSIndexPath *indexPath in selectedIndexPaths) {
                [departSelected addObject:departList[indexPath.row]];
            }
        }
        //以下代码的目的是：对用户选择的部门名称按照原有数据中的顺序进行重新排列
        NSMutableArray *nullArr1 = [[NSMutableArray alloc] init];
        NSMutableArray *nullArr2 = [[NSMutableArray alloc] init];
        numDepartSelected = nullArr1;
        nameDepartSelected = nullArr2;
        for (int i = 0 ; i < [departList count]; i++)
        {
            for (int j = 0 ; j < [departSelected count]; j++) {
                if ([[departSelected objectAtIndex:j] isEqual:[departList objectAtIndex:i]]) {
                    NSString *tempStr = [[NSString alloc] initWithFormat:@"%d",i];
                    [numDepartSelected addObject:tempStr];
                    [nameDepartSelected addObject:[departList objectAtIndex:i]];
                }
            }
        }
        NSString *string = @"";
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        NSMutableArray *arr = [[NSMutableArray alloc] init];
        if ([nameDepartSelected count]!=0) {
            for (id mine in nameDepartSelected) {
                Depart *depart = mine;
                string = [string stringByAppendingFormat:@"%@、",depart.pname];
                if ([mDictDW objectForKey:depart.pid] !=nil) {
                    arr = [mDictDW objectForKey:depart.pid];
                    [dict setObject:[mDictDW objectForKey:depart.pid] forKey:depart.pid];
                }
            }
            mDictDW = dict;
            arrDW = arr;
            self.pro.dw = [string substringToIndex:[string length]-1];
        }
        else {
            [mDictDW removeAllObjects];
            [arrDW removeAllObjects];
            self.pro.dw = @"";
        }
    }
    if (multipleSelectView.tag == 2) {
        if (clickedBtnIndex == 1) {
            //初始化_theDepartmentSelected
            NSMutableArray *tempArr = [[NSMutableArray alloc] init];
            usersSelected = tempArr;
            //将用户选择的 部门名称 加入到 可变数组 _theDepartmentSelected 中
            for (NSIndexPath *indexPath in selectedIndexPaths) {
                [usersSelected addObject:usersList[indexPath.row]];
            }
        }
        //以下代码的目的是：对用户选择的部门名称按照原有数据中的顺序进行重新排列
        NSMutableArray *nullArr1 = [[NSMutableArray alloc] init];
        NSMutableArray *nullArr2 = [[NSMutableArray alloc] init];
        numDepartSelected1 = nullArr1;
        nameDepartSelected1 = nullArr2;
        for (int i = 0 ; i < [usersList count]; i++)
        {
            for (int j = 0 ; j < [usersSelected count]; j++) {
                if ([[usersSelected objectAtIndex:j] isEqual:[usersList objectAtIndex:i]]) {
                    NSString *tempStr = [[NSString alloc] initWithFormat:@"%d",i];
                    [numDepartSelected1 addObject:tempStr];
                    [nameDepartSelected1 addObject:[usersList objectAtIndex:i]];
                }
            }
        }
        NSString *string = @"";
        [arrRY removeAllObjects];
        for (id mine in nameDepartSelected1) {
            Users *user = mine;
            string = [string stringByAppendingFormat:@"%@、",user.uname];
            project_ry *pro_ry = [[project_ry alloc] init];
            pro_ry._id = 0;
            pro_ry.id = @"1";
            pro_ry.user_id = user.iid;
            pro_ry.username = user.uname;
            [arrRY addObject:pro_ry];
        }
        if ([nameDepartSelected1 count]!=0) {
            dgdw = [string substringToIndex:[string length]-1];
        }
        else {
            [arrRY removeAllObjects];
            dgdw = @"";
        }
        self.pro.ry = dgdw;
    }
    
    [myTableView reloadData];
}

- (NSString*)multipleSelectView:(SHMultipleSelect*)multipleSelectView titleForRowAtIndexPath:(NSIndexPath*)indexPath {
    NSString *string = @"";
    if (multipleSelectView.tag == 1) {
        Depart *depart = departList[indexPath.row];
        string = depart.pname;
    }
    if (multipleSelectView.tag == 2) {
        Users *user = usersList[indexPath.row];
        string = user.uname;
    }
    return string;
}

- (BOOL)multipleSelectView:(SHMultipleSelect*)multipleSelectView setSelectedForRowAtIndexPath:(NSIndexPath*)indexPath {
    if (multipleSelectView.tag == 1) {
        if ([departSelected count]>0) {
            for (int i = 0; i<[departSelected count]; i++) {
                if ([[departSelected objectAtIndex:i] isEqual:[departList objectAtIndex:[indexPath row]]]) {
                    return YES;
                }
            }
        }
    }
    if (multipleSelectView.tag == 2) {
        if ([usersSelected count]>0) {
            for (int i = 0; i<[usersSelected count]; i++) {
                if ([[usersSelected objectAtIndex:i] isEqual:[usersList objectAtIndex:[indexPath row]]]) {
                    return YES;
                }
            }
        }
    }
    return NO;
}


-(void) getDateTime :(NSString *) bz{
    UIDatePicker *datePicker = [[UIDatePicker alloc] init];
    datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"\n\n\n\n\n\n\n\n\n\n" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    [alert.view addSubview:datePicker];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
        //实例化一个NSDateFormatter对象
        [dateFormat setDateFormat:@"yyyy-MM-dd hh:mm"];//设定时间格式
        NSString *dateString = [dateFormat stringFromDate:datePicker.date];
        //求出当天的时间字符串
        if ([bz isEqual:@"1"]) {
            self.pro.kssj = dateString;
        }
        else {
            self.pro.jssj = dateString;
        }
        [myTableView reloadData];
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) { }];
    [alert addAction:ok];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES completion:^{ }];
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
