//
//  ShowPhotos.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/13.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "ShowPhotos.h"
#import "UIContants.h"
#import "SDWebImage/UIImageView+WebCache.h"

@interface ShowPhotos ()

@end

@implementation ShowPhotos

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.backgroundColor=[UIColor blackColor];
    [imageView sd_setImageWithURL:[NSURL URLWithString:self.pro.url]];
    imageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(close)];
    [imageView addGestureRecognizer:tap];
    [self.view addSubview:imageView];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, SCREEN_WIDTH, 22)];
    label.text = [NSString stringWithFormat:@"%@%@",@"时间：",self.pro.createtime];
    label.textColor = [UIColor whiteColor];
     label.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:label];
    [self.view bringSubviewToFront:label];
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 32, SCREEN_WIDTH, 22)];
    label2.text = [NSString stringWithFormat:@"%@%@%@",@"地点：",self.pro.address,self.pro.locationdescribe];
    label2.textColor = [UIColor whiteColor];
    label2.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:label2];
    [self.view bringSubviewToFront:label2];
}

-(void) close {
    [self dismissViewControllerAnimated:YES completion:nil];
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
