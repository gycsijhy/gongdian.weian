//
//  ProjectCell.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/3/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "project.h"

@interface ProjectCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ProjectId;
@property (weak, nonatomic) IBOutlet UILabel *ProjectMc;
@property (weak, nonatomic) IBOutlet UILabel *PrjectSj;
@property (weak, nonatomic) IBOutlet UILabel *ProjectNr;

@property (strong, nonatomic) project *pro;
-(void)setIntroductionText:(NSString*)text;

@end
