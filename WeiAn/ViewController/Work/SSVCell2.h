//
//  SSVCell2.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/20.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProMenu.h"
#import "ProjectByMenu.h"

@interface SSVCell2 : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *gcbh;
@property (weak, nonatomic) IBOutlet UILabel *xmmc;
@property (weak, nonatomic) IBOutlet UILabel *gzsj;
@property (weak, nonatomic) IBOutlet UILabel *gznr;
@property (weak, nonatomic) IBOutlet UILabel *gzdd;
@property (weak, nonatomic) IBOutlet UILabel *sgdw;
@property (weak, nonatomic) IBOutlet UILabel *xkbm;
@property (weak, nonatomic) IBOutlet UILabel *dgdw;
@property (weak, nonatomic) IBOutlet UILabel *cjry;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
- (IBAction)btn1Action:(id)sender;
- (IBAction)btn2Action:(id)sender;
- (IBAction)btn3Action:(id)sender;
- (IBAction)btn4Action:(id)sender;
- (IBAction)btn5Action:(id)sender;

@property (weak, nonatomic)UIViewController *hostViewController;
@property (strong, nonatomic) NSArray *arr;
@property (strong, nonatomic) ProjectByMenu *proByMenu;

-(void)setIntroductionText:(NSString*)text;
@end
