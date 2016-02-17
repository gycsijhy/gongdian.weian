//
//  JAddProjectTableViewController.m
//  Demo
//
//  Created by jianghouyu on 16/1/29.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JAddProjectTableViewController.h"
#import "JImagePickerHelper.h"
#import "JShowPhotoViewController.h"
#import "Users.h"

@interface JAddProjectTableViewController ()
@property (weak, nonatomic) IBOutlet UITextField *locationText;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextField *kcryText;

@end

@implementation JAddProjectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    imageData = [NSMutableArray array];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    UIBarButtonItem *rightButton1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(takePhoto)];
    UIBarButtonItem *rightButton2 = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(act)];
    NSArray *rightButton = [[NSArray alloc] initWithObjects:rightButton2, rightButton1, nil];
    self.navigationItem.rightBarButtonItems = rightButton;
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
    Users *user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    self.kcryText.text = user.uname;
    
    self.scrollView.scrollsToTop = NO;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.tag = NSIntegerMax;
    self.scrollView.hidden = YES;
    for (NSInteger i=0;i<9; i++) {
        float x = 15 + 75*(i%3);
        float y = i%3*75;
        UIImageView *thumb1 = [[UIImageView  alloc] initWithFrame:CGRectMake(x, y, 70, 70)];
        thumb1.tag = i+1;
        [self.scrollView addSubview:thumb1];
    }
    
    _loaction = [[BMKLocationService alloc] init];
    _loaction.delegate = self;
    [_loaction startUserLocationService];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateMeView];
}

- (void) act {
    
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
    [self showPhoto:imageData];
    [picker.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)showPhoto : (NSMutableArray *)arr{
    if (arr.count>0) {
        self.scrollView.hidden = NO;
//        CGRect temp = self.scrollView.frame;
//        temp.size.width =(5+75*arr.count);
//        self.scrollView.frame = temp;
        for (int i=0; i<5; i++) {
            UIImageView *thumbView = (UIImageView *)[self.scrollView viewWithTag:i+1];
            thumbView.contentMode = UIViewContentModeScaleAspectFill;
            //thumbView.backgroundColor = [UIColor lightGrayColor];
            thumbView.clipsToBounds = YES;
            if (i<arr.count) {
                thumbView.frame = CGRectMake((15+75*i), .5, 70, 70);
                thumbView.hidden = NO;
                thumbView.image = [UIImage imageWithData:[arr objectAtIndex:i]];
                thumbView.userInteractionEnabled = YES;
                UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cz :)];
                [thumbView addGestureRecognizer:singleTap];
            }
        }
    }
}

- (void)removePhoto : (NSMutableArray *)arr{
    if (arr.count>0) {
        for (int i=0; i<5; i++) {
            UIImageView *thumbView = (UIImageView *)[self.scrollView viewWithTag:i+1];
            thumbView.contentMode = UIViewContentModeScaleAspectFill;
            thumbView.clipsToBounds = YES;
            if (i<arr.count) {
                thumbView.frame = CGRectMake((15+75*i), .5, 70, 70);
                thumbView.hidden = NO;
                thumbView.image = nil;
            }
        }
    }
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
        [self removePhoto:imageData];
        [imageData removeObjectAtIndex:view.tag-1];
        [self showPhoto:imageData];
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:actionRead];
    [alertController addAction:actionDelete];
    [alertController addAction:cancel];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation {
    //NSLog(@"didUpdateUserLocation lat %f,long %f",userLocation.location.coordinate.latitude,userLocation.location.coordinate.longitude);
    self.locationText.text = [NSString stringWithFormat:@"纬度 %f  经度 %f",userLocation.location.coordinate.latitude,userLocation.location.coordinate.longitude];
    [_loaction stopUserLocationService];
}

- (void)updateMeView {
//    self.userNameLabel.text = self.user.uname;
//    self.userDepartLabel.text = self.user.pname;
//    self.userPhoneLabel.text = self.user.pcode;
    
    //        NSString *avatarHeight = [NSString stringWithFormat:@"%.f", _avatarImageView.frame.size.height * 2];
    //        NSURL *URL = [BaseHelper qiniuImageCenter:_userEntity.avatar withWidth:avatarHeight withHeight:avatarHeight];
    //        [_avatarImageView sd_setImageWithURL:URL placeholderImage:[UIImage imageNamed:@"avatar_placeholder"]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    //NSLog(@"%ld",(long)section);
    return section == 0 ? 1.0f : UITableViewAutomaticDimension;
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return section == 0 ? nil : @"";
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
