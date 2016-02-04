//
//  JShowPhotoViewController.m
//  Demo
//
//  Created by jianghouyu on 16/1/29.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JShowPhotoViewController.h"
#import "UIContants.h"

@interface JShowPhotoViewController ()

@end

@implementation JShowPhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = self.image;
    imageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(close)];
    [imageView addGestureRecognizer:tap];
    [self.view addSubview:imageView];
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
