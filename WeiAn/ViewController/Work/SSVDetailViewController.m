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

static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";

@interface SSVDetailViewController ()

@end

@implementation SSVDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = self.myTitle;
    // Do any additional setup after loading the view.
    UIBarButtonItem *rightButton1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(takePhoto)];
    UIBarButtonItem *rightButton2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(addUser)];
    NSArray *rightButton = [[NSArray alloc] initWithObjects:rightButton2, rightButton1, nil];
    self.navigationItem.rightBarButtonItems = rightButton;
    self.pro_jd = [[ProJd alloc] init];
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
    NSData *data = UIImageJPEGRepresentation(image, 0.5);
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
        self.navigationItem.rightBarButtonItem.enabled = true;
    }
    else
        self.navigationItem.rightBarButtonItem.enabled = false;
    [self getReverseGeoCode:userLocation];
    self.location = [NSString stringWithFormat:@"%@%@\n%@%@\n%@%@\n%@%@",@"时间：",[df stringFromDate:[NSDate date]],@"描述：",string,@"位置：",_item.title,@"提示：",_item.subtitle];
    [myTableView reloadData];
    //[_loaction stopUserLocationService];
}

-(void)getReverseGeoCode:(BMKUserLocation *)userLocation {
    CLLocationCoordinate2D pt = (CLLocationCoordinate2D){userLocation.location.coordinate.latitude,userLocation.location.coordinate.longitude};
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
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        resultArr = [[NSMutableArray alloc] initWithObjects:
                     @"工程信息：",
                     @"定位信息：",
                     @"拍照记录：",
                     @"现场情况：",
                     @"操作员：", nil];
        NSValueTransformer *transformer = [MTLJSONAdapter arrayTransformerWithModelClass:project_dw.class ];
        NSArray *arr = self.pro.project_dw;
        arr = [transformer transformedValue:arr];
        self.pro_dw = [[project_dw alloc] init];
        for (int i = 0 ; i<[arr count]; i++) {
            self.pro_dw = [arr objectAtIndex:i];
            if (self.pro_dw.pid == user.pid) {
                return ;
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
        NSString *string =[NSString stringWithFormat:@"%@ %@ \n%@\n%@%@\n%@%@",self.pro.id_,self.pro.mc,self.pro.nr,@"施工部门：",self.pro_dw.pname,@"施工地址：",self.pro_dw.dz];
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
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.detailTextLabel.text = self.pro.nr;
        cell.frame = [self getFrame:self.pro.nr:cell.detailTextLabel :[cell frame]];
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
        [UUInputAccessoryView showKeyboardType:UIKeyboardTypeDefault
                                       content:@"正常"
                                         Block:^(NSString *contentStr)
         {
             if (contentStr.length == 0) return ;
             self.pro.nr = contentStr;
             [myTableView reloadData];
         }];
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
