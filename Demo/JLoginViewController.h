//
//  JLoginViewController.h
//  Demo
//
//  Created by jianghouyu on 16/1/27.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZTimerLabel.h"

@interface JLoginViewController : UIViewController <MZTimerLabelDelegate> {
    UILabel *timer_show;
}

@property (nonatomic,retain) NSString *returnCode;
@property (nonatomic,retain) UITextField *sfzh;
@property (nonatomic,retain) UITextField *phoneNumber;
@property (nonatomic,retain) UIButton *getCode;
@property (nonatomic,retain) IBOutlet UIButton *btn;
@property (strong,nonatomic) UIImageView *mySplashView;

@end
