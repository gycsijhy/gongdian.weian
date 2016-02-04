//
//  BaseTabBarController.m
//  Demo
//
//  Created by jianghouyu on 16/1/20.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "BaseTabBarController.h"

@interface BaseTabBarController () {
    UIViewController *_tab1;
    UINavigationController *_tab2;
    UINavigationController *_tab3;
    UINavigationController *_tab4;
}

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    self.view.backgroundColor = RGB(242, 242, 242);
    [self setupTabBarItems];
    [self setupTabBarStyle];
}

- (void)setupTabBarItems {
    UIEdgeInsets insets = UIEdgeInsetsMake(6.0, 0.0, -6.0, 0.0);

    _tab1 = [[UIStoryboard storyboardWithName:@"Home" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
    _tab1.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"tab1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImage imageNamed:@"tab1_selected"]];
    _tab1.tabBarItem.imageInsets = insets;

    _tab2 = [[UIStoryboard storyboardWithName:@"Map" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
    _tab2.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"tab2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImage imageNamed:@"tab2_selected"]];
    _tab2.tabBarItem.imageInsets = insets;
    
    _tab3 = [[UIStoryboard storyboardWithName:@"Work" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
    _tab3.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"tab3"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImage imageNamed:@"tab3_selected"]];
    _tab3.tabBarItem.imageInsets = UIEdgeInsetsMake(7.0, 0.0, -7.0, 0.0);;
    
    _tab4 = [[UIStoryboard storyboardWithName:@"Me" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
    _tab4.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"me"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImage imageNamed:@"me_selected"]];
    _tab4.tabBarItem.badgeValue = nil;
    _tab4.tabBarItem.imageInsets = insets;
    
    NSArray *controllers = @[_tab1,_tab2,_tab3,_tab4];
    [self setViewControllers:controllers];
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    CATransition *animation = [CATransition animation];
    [animation setType:kCATransitionFade];
    [animation setDuration:0.25];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    [self.view.window.layer addAnimation:animation forKey:@"fadeTransition"];
    return YES;
}

- (void)pushToViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if ([self.selectedViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *nav = (UINavigationController *)self.selectedViewController;
        [nav pushViewController:viewController animated:animated];
    }
}

- (void)presentToViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^ __nullable)(void))completion {
    if([self.selectedViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigation = (UINavigationController *)self.selectedViewController;
        [navigation presentViewController:viewController animated:animated completion:completion];
    }
}

- (void)setupTabBarStyle {
    [self setDelegate:self];
    
    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"tabbar_backgroud"]];
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
