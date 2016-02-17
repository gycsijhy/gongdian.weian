//
//  JPlanViewController.m
//  Demo
//
//  Created by jianghouyu on 16/2/4.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JPlanViewController.h"
#import "JAddSCJHTableViewController.h"

@interface JPlanViewController ()

@end

@implementation JPlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addUser)];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] init];
    backButton.title = @"返回";
    self.navigationItem.rightBarButtonItem = rightButton;
    self.navigationItem.backBarButtonItem = backButton;
}

- (void)addUser {
    JAddSCJHTableViewController *vc = [[UIStoryboard storyboardWithName:@"Work" bundle:nil] instantiateViewControllerWithIdentifier:@"AddSCJH"];
    [self.navigationController pushViewController: vc animated:YES];
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
