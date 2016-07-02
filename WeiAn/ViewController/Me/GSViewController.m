//
//  GSViewController.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/21.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "GSViewController.h"

@interface GSViewController ()

@end

@implementation GSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *segmentedArray = [[NSArray alloc] initWithObjects:@"施工单位",@"工程负责人",nil];
    UISegmentedControl *segmentController = [[UISegmentedControl alloc] initWithItems:segmentedArray];
    segmentController.frame = CGRectMake(0, 64, SCREEN_WIDTH, 30);
    segmentController.tintColor = [UIColor blueColor];
    segmentController.selectedSegmentIndex = 0;
    [segmentController addTarget:self action:@selector(segmentedAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segmentController];
}

- (void) segmentedAction:(id)sender {
    if ([sender isKindOfClass:[UISegmentedControl class]]) {
        UISegmentedControl * segment = sender;
        if (segment.selectedSegmentIndex == 0) {
            //
        }else if (segment.selectedSegmentIndex == 1) {
            //
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
