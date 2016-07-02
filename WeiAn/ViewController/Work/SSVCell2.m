//
//  SSVCell2.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/20.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "SSVCell2.h"
#import "SSVDetailViewController.h"

@implementation SSVCell2

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)pushView :(NSString *)str{
    for (ProMenu *pro_menu in self.arr) {
        if ([pro_menu.menu_bm isEqualToString:str]) {
            SSVDetailViewController *vc = [[SSVDetailViewController alloc] init];
            vc.menu_id = pro_menu.menu_id;
            vc.myTitle = pro_menu.menu;
            vc.proByMenu = self.proByMenu;
            vc.bz=@"2";
            [self.hostViewController.navigationController pushViewController:vc animated:YES];

        }
    }
}

- (IBAction)btn1Action:(id)sender {
    [self pushView:@"勘查"];
}

- (IBAction)btn2Action:(id)sender {
    [self pushView:@"开工"];
}

- (IBAction)btn3Action:(id)sender {
    [self pushView:@"到岗"];
}

- (IBAction)btn4Action:(id)sender {
    [self pushView:@"督察"];
}

- (IBAction)btn5Action:(id)sender {
    [self pushView:@"完工"];
}

-(void)setIntroductionText:(NSString*)text{
    //获得当前cell高度
    CGRect frame = [self frame];
    //文本赋值
    self.gznr.text = text;
    //    //设置label的最大行数
    //    self.ProjectNr.numberOfLines = 0;
    //    self.ProjectNr.lineBreakMode = NSLineBreakByCharWrapping;
    
    CGSize size = CGSizeMake(frame.size.width, MAXFLOAT);
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.gznr.font, NSFontAttributeName,nil];
    CGSize labelSize =[text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading attributes:tdic context:nil].size;
    //self.ProjectNr.frame = CGRectMake(self.ProjectNr.frame.origin.x, self.ProjectNr.frame.origin.y, labelSize.width, labelSize.height);
    //[self.ProjectNr sizeToFit];
    //计算出自适应的高度
    frame.size.height = labelSize.height+165;
    
    self.frame = frame;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
