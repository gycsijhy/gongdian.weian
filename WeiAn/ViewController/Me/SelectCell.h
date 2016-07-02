//
//  SelectCell.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TermCellDelegate <NSObject>

- (void)choseTerm:(UIButton *)button;

@end

@interface SelectCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@property (assign, nonatomic) id<TermCellDelegate> delegate;

- (IBAction)checkAction:(UIButton *)sender;

@end
