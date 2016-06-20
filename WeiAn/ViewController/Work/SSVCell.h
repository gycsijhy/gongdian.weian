//
//  SSVCell.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSVCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *gcbh;
@property (weak, nonatomic) IBOutlet UILabel *xmmc;
@property (weak, nonatomic) IBOutlet UILabel *gzsj;
@property (weak, nonatomic) IBOutlet UILabel *gznr;
@property (weak, nonatomic) IBOutlet UILabel *gzdd;
@property (weak, nonatomic) IBOutlet UILabel *sgdw;
@property (weak, nonatomic) IBOutlet UILabel *xkbm;
@property (weak, nonatomic) IBOutlet UILabel *dgdw;
@property (weak, nonatomic) IBOutlet UILabel *cjry;

-(void)setIntroductionText:(NSString*)text;

@end
