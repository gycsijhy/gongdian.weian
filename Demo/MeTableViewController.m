//
//  MeTableViewController.m
//  Demo
//
//  Created by jianghouyu on 16/1/24.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "MeTableViewController.h"
#import "JUserInfoTableViewController.h"
#import "JImagePickerHelper.h"
#import "JUploadImageHelper.h"
#import "JUrlHelper.h"
#import "SDWebImage/UIImageView+WebCache.h"

@interface MeTableViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *userPhotoView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *userDepartLabel;

@end

@implementation MeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sctx)];
    [_userPhotoView addGestureRecognizer:singleTap];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.contentInset = UIEdgeInsetsMake(-1.0f, 0.0f, 0.0f, 0.0);
}

- (void) sctx {
    JImagePickerHelper *imagePicker = [[JImagePickerHelper alloc] init];
    imagePicker.hostViewController = self;
    [imagePicker takePhoto];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateMeView];
}

- (void)updateMeView {
    _userPhotoView.layer.masksToBounds = YES;
    _userPhotoView.layer.cornerRadius = 30;
    NSData *image = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSERPHOTO"];
    [_userPhotoView setImage:[UIImage imageWithData:image]];
//    [_userPhotoView sd_setImageWithURL:[NSURL URLWithString:user.headurl] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
//        [_userPhotoView setImage:image];
//        NSLog(@"ok");
//    }];
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"JUSER"];
    user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    self.userNameLabel.text = user.uname;
    self.userDepartLabel.text = user.pname;

//        NSString *avatarHeight = [NSString stringWithFormat:@"%.f", _avatarImageView.frame.size.height * 2];
//        NSURL *URL = [BaseHelper qiniuImageCenter:_userEntity.avatar withWidth:avatarHeight withHeight:avatarHeight];
//        [_avatarImageView sd_setImageWithURL:URL placeholderImage:[UIImage imageNamed:@"avatar_placeholder"]];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary<NSString *,id> *)editingInfo {
    //    for (id i in imageData) {
    //        self.imageView.image = [UIImage imageWithData:i];
    //    }
    NSData *data = UIImageJPEGRepresentation(image, 0.5);
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"JUSERPHOTO"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    imageData = [NSMutableArray array];
    [imageData addObject:data];
    //NSLog(@"%lu",(unsigned long)imageData.count);
    [_userPhotoView setImage:[UIImage imageWithData:data]];
    JUploadImageHelper *uploadImage = [[JUploadImageHelper alloc] init];
    uploadImage.imageData = imageData;
    [uploadImage uploadImages:^(NSDictionary *returnDict) {
        NSLog(@"%@",returnDict);
        JUrlHelper *helper = [[JUrlHelper alloc] init];
        helper.dict = returnDict;
        user.headurl = [helper urlParse];
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:user];
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"JUSER"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [helper modifyUserHeader:user.iid];
    }];
    [picker.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return section == 0 ? 1.0f : UITableViewAutomaticDimension;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return section == 0 ? nil : @"";
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        JUserInfoTableViewController *vc = [[UIStoryboard storyboardWithName:@"Work" bundle:nil] instantiateViewControllerWithIdentifier:@"UserInfo"];
        vc.user = user;
        [self.navigationController pushViewController:vc animated:YES];
    }
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
