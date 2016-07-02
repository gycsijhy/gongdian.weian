//
//  DetailCell.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/3/23.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "project.h"

@interface DetailCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UIButton *kanc;
@property (weak, nonatomic) IBOutlet UIButton *kaig;
@property (weak, nonatomic) IBOutlet UIButton *daog;
@property (weak, nonatomic) IBOutlet UIButton *duc;
@property (weak, nonatomic) IBOutlet UIButton *wang;
@property (strong, nonatomic) NSString *pro_id;
@property (weak, nonatomic) UIViewController *hostViewController;

- (IBAction)kanc:(id)sender;
- (IBAction)kaig:(id)sender;
- (IBAction)daog:(id)sender;
- (IBAction)duc:(id)sender;
- (IBAction)wang:(id)sender;


@end
