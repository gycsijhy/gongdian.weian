//
//  ProjectCell.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/3/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "ProjectCell.h"

@implementation ProjectCell

- (void)awakeFromNib {
    // Initialization code
}

-(void)setIntroductionText:(NSString*)text{
    //获得当前cell高度
    CGRect frame = [self frame];
    //文本赋值
    self.ProjectNr.text = text;
//    //设置label的最大行数
//    self.ProjectNr.numberOfLines = 0;
//    self.ProjectNr.lineBreakMode = NSLineBreakByCharWrapping;
   
    CGSize size = CGSizeMake(frame.size.width, MAXFLOAT);
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.ProjectNr.font, NSFontAttributeName,nil];
    CGSize labelSize =[text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading attributes:tdic context:nil].size;
    //self.ProjectNr.frame = CGRectMake(self.ProjectNr.frame.origin.x, self.ProjectNr.frame.origin.y, labelSize.width, labelSize.height);
    //[self.ProjectNr sizeToFit];
    //计算出自适应的高度
    frame.size.height = labelSize.height+55;
    
    self.frame = frame;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
