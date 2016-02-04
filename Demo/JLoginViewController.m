//
//  JLoginViewController.m
//  Demo
//
//  Created by jianghouyu on 16/1/27.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JLoginViewController.h"
#import "UIContants.h"
#import "BaseTabBarController.h"
#import "AppDelegate.h"
#import "JLoginHelper.h"

@interface JLoginViewController ()

@end

@implementation JLoginViewController
@synthesize btn;
@synthesize sfzh;
@synthesize phoneNumber;
@synthesize getCode;
@synthesize returnCode;
@synthesize mySplashView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createRegister];
}

-(void)createRegister{
    
    mySplashView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [mySplashView setImage:[UIImage imageNamed:@"background_"]];
    [self.view addSubview:mySplashView];
    
    //UITextField 身份证号
    sfzh=[[UITextField alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height-280, self.view.frame.size.width-40, 50)];
    sfzh.backgroundColor=[UIColor whiteColor];
    sfzh.placeholder=[NSString stringWithFormat:@"身份证号"];
    sfzh.layer.cornerRadius=5.0;
    sfzh.clearButtonMode=UITextFieldViewModeAlways;
    sfzh.keyboardType=UIKeyboardTypeNamePhonePad;
    [self.view addSubview:sfzh];
    
    phoneNumber=[[UITextField alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height-220, self.view.frame.size.width-185, 50)];
    phoneNumber.backgroundColor=[UIColor whiteColor];
    phoneNumber.placeholder=[NSString stringWithFormat:@"短信验证码"];
    phoneNumber.layer.cornerRadius=5.0;
    phoneNumber.clearButtonMode=UITextFieldViewModeAlways;
    phoneNumber.keyboardType=UIKeyboardTypeNumberPad;
    //phoneNumber.returnKeyType=UIReturnKeyDone;
    [phoneNumber setSecureTextEntry:NO];
    [self.view addSubview:phoneNumber];
    
    //UIButton 获取验证码
    getCode=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [getCode addTarget:self action:@selector(getCode_function) forControlEvents:UIControlEventTouchUpInside];
    [getCode setFrame:CGRectMake(self.view.frame.size.width-160, self.view.frame.size.height-220, 140, 50)];
    [getCode setTitle:@"获取验证码" forState:UIControlStateNormal];
    [getCode setBackgroundColor:[UIColor colorWithRed:51/255.0 green:102/255.0 blue:255/255.0 alpha:1]];
    [getCode setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    getCode.layer.cornerRadius=5.0;
    [self.view addSubview:getCode];
    
    
    //UIButton 注册
    UIButton *userRegister=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [userRegister addTarget:self action:@selector(register_function) forControlEvents:UIControlEventTouchUpInside]; //定义按钮事件
    [userRegister setFrame:CGRectMake(20, self.view.frame.size.height-160, self.view.frame.size.width-40, 50)];
    [userRegister setTitle:@"注册" forState:UIControlStateNormal];
    [userRegister setBackgroundColor:[UIColor colorWithRed:51/255.0 green:102/255.0 blue:255/255.0 alpha:1]];
    [userRegister setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    userRegister.layer.cornerRadius=5.0;
    [self.view addSubview:userRegister];
    
    //UIButton 退出
    UIButton *exit=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [exit addTarget:self action:@selector(exit_function) forControlEvents:UIControlEventTouchUpInside]; //定义按钮事件
    [exit setFrame:CGRectMake(20, self.view.frame.size.height-100, self.view.frame.size.width-40, 50)];
    [exit setTitle:@"退出" forState:UIControlStateNormal];
    [exit setBackgroundColor:[UIColor colorWithRed:51/255.0 green:102/255.0 blue:255/255.0 alpha:1]];
    [exit setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    exit.layer.cornerRadius=5.0;
    [self.view addSubview:exit];
    
}

-(void)timeCount{
    [getCode setTitle:nil forState:UIControlStateNormal];//把按钮原先的名字消掉
    timer_show=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 140, 50)];//UILabel设置成和UIButton一样的尺寸和位置
    [getCode addSubview:timer_show];//把timer_show添加到按钮上
    MZTimerLabel *timer_cutDown=[[MZTimerLabel alloc]initWithLabel:timer_show andTimerType:MZTimerLabelTypeTimer];//创建MZTimerLabel类的对象timer_cutDown
    [timer_cutDown setCountDownTime:60];//倒计时时间60s
    timer_cutDown.timeFormat = @"ss秒后重新获取";//倒计时格式
    timer_cutDown.timeLabel.textColor = [UIColor whiteColor];//倒计时字体颜色
    timer_cutDown.timeLabel.font = [UIFont systemFontOfSize:13.0];//倒计时字体大小
    timer_cutDown.timeLabel.textAlignment = NSTextAlignmentCenter;//剧中
    timer_cutDown.delegate = self;//设置代理，以便后面倒计时结束时调用代理
    getCode.userInteractionEnabled = NO;//按钮禁止点击
    [timer_cutDown start];//开始计时
}

- (void)timerLabel:(MZTimerLabel *)timerLabel finshedCountDownTimerWithTime:(NSTimeInterval)countTime{
    [getCode setTitle:@"获取验证码" forState:UIControlStateNormal];//倒计时结束后按钮名称改为"发送验证码"
    [timer_show removeFromSuperview];//移除倒计时模块
    getCode.userInteractionEnabled = YES;//按钮可以点击
}

-(void)getCode_function{
    NSString *txtSFZH = sfzh.text;
    if (txtSFZH.length == 18) {
        JLoginHelper *helper = [[JLoginHelper alloc] init];
        returnCode = [helper checkSFZH:txtSFZH];
        if (returnCode.length == 4) {
            [self timeCount];
        }
        else {
            UIAlertController *alertDialog = [UIAlertController alertControllerWithTitle:@"提示" message:@"未检索到有效信息，请联系管理员" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
            [alertDialog addAction:okAction];
            [self presentViewController:alertDialog animated:YES completion:nil];
        }
    }
    else {
        UIAlertController *alertDialog = [UIAlertController alertControllerWithTitle:@"提示" message:@"请检查身份证号输入是否正确" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
        [alertDialog addAction:okAction];
        [self presentViewController:alertDialog animated:YES completion:nil];
    }
}



-(void)register_function{
    NSString *txtSFZH = sfzh.text;
    NSString *code = phoneNumber.text;
    if (txtSFZH.length == 18 && code.length == 4) {
        if ([returnCode isEqualToString:code]) {
            JLoginHelper *helper = [[JLoginHelper alloc] init];
            [helper updateIMEI:txtSFZH :identifierNumber];
            AppDelegate *delegate = [UIApplication sharedApplication].delegate;
            BaseTabBarController *vc = [[BaseTabBarController alloc] init];
            delegate.window.rootViewController = vc;
            [delegate.window makeKeyAndVisible];
        }
    }
    else {
        UIAlertController *alertDialog = [UIAlertController alertControllerWithTitle:@"提示" message:@"!!!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
        [alertDialog addAction:okAction];
        [self presentViewController:alertDialog animated:YES completion:nil];
    }
}

-(void)exit_function{
    // 准备初始化配置参数
    NSString *title = @"提示";
    NSString *message = @"没有检索到您的有效信息\n请联系管理员处理";
    NSString *okButtonTitle = @"退出";
    
    // 初始化
    UIAlertController *alertDialog = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    // 创建操作
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:okButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        // 操作具体内容
        //睡眠0.5秒后，退出程序
        [NSThread sleepForTimeInterval:2.0];
        exit(0);
    }];
    
    // 添加操作
    [alertDialog addAction:okAction];
    
    //呈现警告视图
    [self presentViewController:alertDialog animated:YES completion:nil];
}


-(IBAction)btn_action:(id)sender
{
    [self.sfzh resignFirstResponder];
    [self.phoneNumber resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
