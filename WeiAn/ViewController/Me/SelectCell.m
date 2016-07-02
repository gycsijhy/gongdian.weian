//
//  SelectCell.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "SelectCell.h"

@implementation SelectCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)checkAction:(UIButton *)sender {
    if ([_delegate respondsToSelector:@selector(choseTerm:)]) {
        //sender.tag = self.tag;
        [_delegate choseTerm:sender];
    }
}



@end
