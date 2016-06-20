//
//  AllCell.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/12.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "AllCell.h"
#import "ShowPhotos.h"
#import "ProPhoto.h"

@implementation AllCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.scrollView.scrollsToTop = NO;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.tag = NSIntegerMax;
    self.scrollView.hidden = YES;
    for (NSInteger i=0;i<9; i++) {
        float x = 15 + 75*(i%3);
        float y = i%3*75;
        UIImageView *thumb1 = [[UIImageView  alloc] initWithFrame:CGRectMake(x, y, 70, 70)];
        thumb1.tag = i+1;
        [self.scrollView addSubview:thumb1];
    }

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
