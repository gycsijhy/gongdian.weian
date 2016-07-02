//
//  SSVDetailViewController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "SSVDetailViewController.h"
#import "ImageCell.h"
#import "JNetWorkHelper.h"
#import "MJRefresh.h"
#import "ProJd.h"
#import "ProPhoto.h"
#import "SDWebImage/UIImageView+WebCache.h"
#import "JShowPhotoViewController.h"
#import "UUInputAccessoryView.h"
#import "JImagePickerHelper.h"
//#import "iToast.h"
#import "JUploadImageHelper.h"
#import "WGViewController.h"

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface SSVDetailViewController ()

@end

@implementation SSVDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (![CLLocationManager locationServicesEnabled]) {
        UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"提示" message:@"赣榆微安无法使用GPS\n请检查相关设置" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [[self navigationController] popViewControllerAnimated:YES];
        }];
        [ac addAction:okAction];
        [self presentViewController:ac animated:YES completion:nil];
    }
    
    self.title = self.myTitle;
    // Do any additional setup after loading the view.
    UIBarButtonItem *rightButton1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(takePhoto)];
    UIBarButtonItem *rightButton2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(addUser)];
    NSArray *rightButton = [[NSArray alloc] initWithObjects:rightButton2, rightButton1, nil];
    self.navigationItem.rightBarButtonItems = rightButton;
    _la = @"";
    _lon = @"";
    zpArr = [[NSMutableArray alloc] init];
    self.pro_jd = [[mProjectJD alloc] init];
    self.mjd = [[jd alloc] init];
    self.mjd._id = 0;
    self.mjd.dwf = @"0";
    self.mjd.dwq = @"0";
    self.mjd.lb = @"1";
    self.mjd.menu_id = self.menu_id;
    self.mjd.ryf = @"0";
    self.mjd.ryq = @"0";
    self.mjd.nr = @"";
    
    _item = [[BMKPointAnnotation alloc] init];
    _loaction = [[BMKLocationService alloc] init];
    _geocodesearch = [[BMKGeoCodeSearch alloc] init];
    imageData = [[NSMutableArray alloc] init];
    
    [self setupTableview];
}

-(void)viewWillAppear:(BOOL)animated {
    CGRect rect = myTableView.frame;
    rect.size.width = self.view.frame.size.width;
    myTableView.frame = rect;
    [self headerRefreshingText];
    
 // 此处记得不用的时候需要置nil，否则影响内存的释放
    _loaction.delegate = self;
    _geocodesearch.delegate = self;
    [_loaction startUserLocationService];
}

-(void)viewWillDisappear:(BOOL)animated {
    [_loaction stopUserLocationService];
    _loaction.delegate = nil;
    _geocodesearch.delegate = nil;
}

- (void)dealloc {
    if (_geocodesearch !=nil) {
        _geocodesearch = nil;
    }
}

- (void)addUser {
    [myTableView reloadData];
    zpArr2 = [[NSMutableArray alloc] init];
    if ([imageData count]>0) {
        if ([self.mjd.nr isEqualToString:@""]) {
//            [[[iToast makeText:NSLocalizedString(@"请输入现场情况！", @"")]
//              setGravity:iToastGravityBottom] show];
        }
        else {
            self.mjd.pid = self.pro_dw.pid;
            self.mjd.pro_id = self.pro.id_;
            //NSLog(@"%@",self.mjd);
            NSArray *jdArr = [NSArray arrayWithObjects:_mjd, nil];
            
            mProjectJD *m = [[mProjectJD alloc] init];
            if ([self.menu_id isEqualToString:@"202"]) {
                m.flag = @"2";
            }
            else if ([self.menu_id isEqualToString:@"203"]) {
                m.flag = @"3";
            }
            else if ([self.menu_id isEqualToString:@"204"]) {
                m.flag = @"5";
            }
            else if ([self.menu_id isEqualToString:@"205"]) {
                m.flag = @"6";
            }
            else if ([self.menu_id isEqualToString:@"206"]) {
                m.flag = @"4";
            }
            m.id = self.pro.id_;
            m.project_jd = jdArr;
            for (int i =0 ; i<[imageData count]; i++) {
                NSData *data = [imageData objectAtIndex:i];
                JUploadImageHelper *helper = [[JUploadImageHelper alloc] init];
                helper.imageData = [NSMutableArray arrayWithObjects:data, nil];
                [helper uploadImages:^(NSDictionary *returnDict) {
                    NSString *url = [returnDict[@"resultMessage"] substringFromIndex:50];
                    url = [NSString stringWithFormat:@"%@%@",@"http://218.92.49.18:8080",url];
                    //NSLog(@"%@",url);
                    zp *z = [zpArr objectAtIndex:i];
                    z.url = url;
                    [zpArr2 addObject:z];
                    if (i==[zpArr count]-1) {
                        m.project_photos = zpArr2;
                        //NSLog(@"%@",m);
                        NSDictionary *dict = [MTLJSONAdapter JSONDictionaryFromModel:m error:nil];
                        NSData  *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:kNilOptions error:nil];
                        NSString *json =[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
                        json = [json stringByReplacingOccurrencesOfString:@"\\" withString:@""];
                        NSLog(@"%@",json);
                        JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
                        [helper modifyJD:@"add" :json :[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
                        [[self navigationController] popViewControllerAnimated:YES];
                    }
            }];
            }
            
           
        }
    }
    else {
//        [[[iToast makeText:NSLocalizedString(@"请拍摄现场照片！", @"")]
//          setGravity:iToastGravityBottom] show];
    }
}

- (void)takePhoto {
    if (imageData.count < 3) {
        JImagePickerHelper *helper = [[JImagePickerHelper alloc] init];
        helper.hostViewController = self;
        [helper takePhoto];
    }
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary<NSString *,id> *)editingInfo {
    //    for (id i in imageData) {
    //        self.imageView.image = [UIImage imageWithData:i];
    //    }
    NSData *data2 = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
    Users *user = [NSKeyedUnarchiver unarchiveObjectWithData:data2];
    zp *mzp = [[zp alloc] init];
    mzp._id = 0;
    mzp.pro_id = self.pro.id_;
    mzp.address = _item.title;
    mzp.locationdescribe = _item.subtitle;
    mzp.flag = @"2";
    mzp.createuser = user.iid;
    mzp.latitude = _la;
    mzp.lontitude = _lon;
    NSData *data = UIImageJPEGRepresentation(image, 0.5);
    [zpArr addObject:mzp];
    [imageData addObject:data];
    NSLog(@"%lu",(unsigned long)imageData.count);
    //    self.imageView.image = [UIImage imageWithData:data];
    [myTableView reloadData];
    [picker.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


- (void)cz :(id)sender {
    UIView *view = [sender view];
    
    NSLog(@"%ld",(long)view.tag);
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"请选择" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *actionRead = [UIAlertAction actionWithTitle:@"查看原图" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UIImage *image =[UIImage imageWithData:[imageData objectAtIndex:view.tag-1]];
        JShowPhotoViewController *vc = [[JShowPhotoViewController alloc] init];
        vc.image = image;
        [self presentViewController:vc animated:YES completion:nil];
    }];
    UIAlertAction *actionDelete = [UIAlertAction actionWithTitle:@"删除" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [imageData removeObjectAtIndex:view.tag-1];
        [myTableView reloadData];
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:actionRead];
    [alertController addAction:actionDelete];
    [alertController addAction:cancel];
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation {
    //NSLog(@"didUpdateUserLocation lat %f,long %f",userLocation.location.coordinate.latitude,userLocation.location.coordinate.longitude);
    //self.location = [NSString stringWithFormat:@"纬度 %f  经度 %f",userLocation.location.coordinate.latitude,userLocation.location.coordinate.longitude];
    NSDateFormatter* df = [[NSDateFormatter alloc]init];//格式化
    [df setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *string = @"GPS定位中 ... ";
    if (userLocation.location!=nil) {
        string = @"GPS定位成功";
    }
        
    [self getReverseGeoCode:userLocation];
    self.location = [NSString stringWithFormat:@"%@%@\n%@%@\n%@%@\n%@%@",@"时间：",[df stringFromDate:[NSDate date]],@"描述：",string,@"位置：",_item.title,@"提示：",_item.subtitle];
    [myTableView reloadData];
    //[_loaction stopUserLocationService];
}

-(void)getReverseGeoCode:(BMKUserLocation *)userLocation {
    CLLocationCoordinate2D pt = (CLLocationCoordinate2D){userLocation.location.coordinate.latitude,userLocation.location.coordinate.longitude};
    _la = [NSString stringWithFormat:@"%f", userLocation.location.coordinate.latitude];
    _lon = [NSString stringWithFormat:@"%f", userLocation.location.coordinate.longitude];
    BMKReverseGeoCodeOption *reverseGeocodeSearchOption = [[BMKReverseGeoCodeOption alloc] init];
    reverseGeocodeSearchOption.reverseGeoPoint = pt;
    BOOL flag = [_geocodesearch reverseGeoCode:reverseGeocodeSearchOption];
    if(flag)
    {
        //NSLog(@"反geo检索发送成功");
    }
    else
    {
        NSLog(@"反geo检索发送失败");
    }
}

-(void) onGetReverseGeoCodeResult:(BMKGeoCodeSearch *)searcher result:(BMKReverseGeoCodeResult *)result errorCode:(BMKSearchErrorCode)error
{
    if (error == 0) {
        BMKPointAnnotation* item = [[BMKPointAnnotation alloc]init];
        item.coordinate = result.location;
        item.title = result.address;
        _item = item;
    }
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
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
    Users *user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    self.mjd.user_id = user.iid;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        resultArr = [[NSMutableArray alloc] initWithObjects:
                     @"工程信息：",
                     @"定位信息：",
                     @"拍照记录：",
                     @"现场情况：",
                     @"操作员：", nil];
        if ([self.bz isEqualToString:@"1"]) {
            NSArray *arr = self.pro.project_dw;
            self.pro_dw = [[project_dw alloc] init];
            for (int i = 0 ; i<[arr count]; i++) {
                self.pro_dw = [arr objectAtIndex:i];
                if (self.pro_dw.pid == user.pid) {
                    return ;
                }
            }
            //self.pro_dw = self.pro.project_dw;
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

#pragma mark - TableView Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [resultArr count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
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
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        NSString *string = @"";
        if ([self.bz isEqualToString:@"1"]) {
            string = [NSString stringWithFormat:@"%@ %@ \n%@\n%@%@\n%@%@",self.pro.id_,self.pro.mc,self.pro.nr,@"施工部门：",self.pro_dw.pname,@"施工地址：",self.pro_dw.dz];
        }
        if ([self.bz isEqualToString:@"2"]) {
            string  = [NSString stringWithFormat:@"%@ %@ \n%@\n%@%@\n%@%@",self.proByMenu.id_,self.proByMenu.mc,self.proByMenu.nr,@"施工部门：",self.proByMenu.dw,@"施工地址：",self.proByMenu.dz];
        }
        cell.detailTextLabel.text = string;
        cell.frame = [self getFrame:string:cell.detailTextLabel :[cell frame]];
    }
    if ([indexPath section] == 1) {
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.detailTextLabel.text = self.location;
        cell.frame = [self getFrame:self.location:cell.detailTextLabel :[cell frame]];
    }
    if ([indexPath section] == 2) {
        static NSString *cellIdentifier = @"ImageCell";
        ImageCell *imageCell =(ImageCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (imageCell==nil){
            imageCell=[[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
        }
        imageCell.label.text = [resultArr objectAtIndex:[indexPath section]];
        if (imageData.count>0) {
            imageCell.scrollView.hidden = NO;
            //        CGRect temp = self.scrollView.frame;
            //        temp.size.width =(5+75*arr.count);
            //        self.scrollView.frame = temp;
            for (int i=0; i<imageData.count; i++) {
                UIImageView *thumbView = (UIImageView *)[imageCell.scrollView viewWithTag:i+1];
                thumbView.contentMode = UIViewContentModeScaleAspectFill;
                //thumbView.backgroundColor = [UIColor lightGrayColor];
                thumbView.clipsToBounds = YES;
                if (i<imageData.count) {
                    thumbView.frame = CGRectMake((15+75*i), .5, 70, 70);
                    thumbView.hidden = NO;
                    thumbView.image = [UIImage imageWithData:[imageData objectAtIndex:i]];
                    thumbView.userInteractionEnabled = YES;
                    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cz:)];
                    [thumbView addGestureRecognizer:singleTap];
                }
            }
        }

        imageCell.selectionStyle = UITableViewCellSelectionStyleNone;
        return imageCell;
    }
    if ([indexPath section] == 3) {
        NSString *string = @"";
        if ([self.mjd.dwf intValue]>0) {
            string = [@"处罚施工单位" stringByAppendingString:self.pro_dw.pname];
            string = [string stringByAppendingString:self.mjd.dwf];
            string = [string stringByAppendingString:@"分"];
            if ([self.mjd.dwq intValue] >0) {
                string = [string stringByAppendingString:self.mjd.dwq];
                string = [string stringByAppendingString:@"元"];
            }
        }
        else if ([self.mjd.dwq intValue] >0) {
            string = [@"处罚施工单位" stringByAppendingString:self.pro_dw.pname];
            string = [string stringByAppendingString:self.mjd.dwq];
            string = [string stringByAppendingString:@"元"];
        }
        if ([self.mjd.ryf intValue]>0) {
            if ([string length]!=0) {
                string = [string stringByAppendingString:@","];
            }
            string = [string stringByAppendingString:@"处罚负责人"];
            string = [string stringByAppendingString:self.pro_dw.fzrxm];
            string = [string stringByAppendingString:self.mjd.ryf];
            string = [string stringByAppendingString:@"分"];
            if ([self.mjd.ryq intValue] >0) {
                string = [string stringByAppendingString:self.mjd.ryq];
                string = [string stringByAppendingString:@"元"];
            }
        }
        else if ([self.mjd.ryq intValue]>0){
            if ([string length]!=0) {
                string = [string stringByAppendingString:@","];
            }
            string = [string stringByAppendingString:@"处罚负责人"];
            string = [string stringByAppendingString:self.pro_dw.fzrxm];
            string = [string stringByAppendingString:self.mjd.ryq];
            string = [string stringByAppendingString:@"元"];
        }
        NSString *str = self.mjd.nr;
        if ([string length]!=0) {
            str = [NSString stringWithFormat:@"%@(%@)",str,string];
        }
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.detailTextLabel.text = str;
        cell.frame = [self getFrame:str:cell.detailTextLabel :[cell frame]];
    }
    if ([indexPath section] == 4) {
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
        Users *user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        cell.detailTextLabel.text = user.uname;
    }

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    if ([indexPath section] == 3) {
        if ([self.menu_id isEqualToString:@"205"]) {
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"督查情况" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
            UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"正常" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                self.mjd.nr = @"正常";
                self.mjd.ryf = @"0";
                self.mjd.ryq = @"0";
                self.mjd.dwf = @"0";
                self.mjd.dwq = @"0";
            }];
            UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"违规" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                WGViewController *vc = [[WGViewController alloc] init];
                vc.myTitle = @"违规处罚";
                vc.pro_dw = self.pro_dw;
                vc.pro_jd = self.mjd;
                [self.navigationController pushViewController:vc animated:YES];
            }];
            UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            [alertController addAction:action1];
            [alertController addAction:action2];
            [alertController addAction:cancel];
            [self presentViewController:alertController animated:YES completion:nil];
        }
        else {
            NSString *string = @"正常";
            if (![self.mjd.nr isEqualToString:@""]) {
                string = self.mjd.nr;
            }
            [UUInputAccessoryView showKeyboardType:UIKeyboardTypeDefault
                                           content:string
                                             Block:^(NSString *contentStr)
             {
                 if (contentStr.length == 0) return ;
                 self.mjd.nr = contentStr;
                 [myTableView reloadData];
             }];
        }
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [resultArr removeObjectAtIndex:indexPath.row];
        [myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationFade];
    }
}
//
//- (void)cz:(id)sender {
//    UIView *view = [sender view];
//    UITapGestureRecognizer *tap = (UITapGestureRecognizer *)sender;
//    //NSValueTransformer *transformer = [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:ProPhoto.class ];
//    //NSArray *arr = pro.project_photo;
//    //NSLog(@"%@",[tap view]);
//    //NSLog(@"%@",[_marr objectForKey:[tap view].description]);
//    //arr = [transformer transformedValue:arr];
//    //ProPhoto *pro_photo = [arr objectAtIndex:view.tag-1];
//    ShowPhotos *vc = [[ShowPhotos alloc] init];
//    vc.pro = [_marr objectForKey:[tap view].description];
//    [self presentViewController:vc animated:YES completion:nil];
//}
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
