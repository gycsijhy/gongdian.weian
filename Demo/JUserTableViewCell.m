//
//  JUserTableViewCell.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JUserTableViewCell.h"

@implementation JUserTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.textLabel.font = [UIFont boldSystemFontOfSize:15];
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator; //显示最右边的箭头
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
