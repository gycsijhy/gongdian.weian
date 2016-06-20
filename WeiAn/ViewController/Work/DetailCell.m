//
//  DetailCell.m
//  gongdian.weian
//
//  Created by jianghouyu on 16/3/23.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "DetailCell.h"
#import "UIButton+Create.h"
#import "JNetWorkHelper.h"
#import "Message.h"

@implementation DetailCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void) sendmessage :(NSString *)menu_id{
    JNetWorkHelper *helper = [[JNetWorkHelper alloc] init];
    NSArray *arr = [helper getdxtz:self.pro.id_ :menu_id :[NSString stringWithFormat:@"%@%@",identifierNumber,bbh]];
    Message *mes = [arr objectAtIndex:0];
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"短信通知" message:mes.dxnr preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:@"发送" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [ac addAction:cancelAction];
    [ac addAction:otherAction];
    [self.hostViewController presentViewController:ac animated:YES completion:nil];
}

- (IBAction)kanc:(id)sender {
    //NSLog(@"勘查");
    [self sendmessage:@"202"];
}

- (IBAction)kaig:(id)sender {
    //NSLog(@"开工");
    [self sendmessage:@"203"];
}

- (IBAction)daog:(id)sender {
    //NSLog(@"到岗");
    [self sendmessage:@"204"];
}


- (IBAction)duc:(id)sender {
    //NSLog(@"督查");
    [self sendmessage:@"205"];
}

- (IBAction)wang:(id)sender {
    //NSLog(@"完工");
    [self sendmessage:@"206"];
}
@end
