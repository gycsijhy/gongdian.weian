//
//  JDepartHelper.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JDepartHelper.h"
#import "JModifyDepart.h"

@implementation JDepartHelper

- (void)settingDepart : (Depart *)depart {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"修改部门名称" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self addDepart :@"update":depart];
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:action1];
    [alertController addAction:cancel];
    [self.hostViewController presentViewController:alertController animated:YES completion:nil];
}

- (void)addDepart : (NSString *)act : (Depart *)depart{
    //JAddDepartViewController *vc = [[JAddDepartViewController alloc] init];
    //[self.navigationController pushViewController:vc animated:YES];
    NSString *title = NSLocalizedString(@"请输入部门名称", nil);
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleAlert];
    [ac addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.text = depart.pname;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(alertTextFieldDidChange:) name:UITextFieldTextDidChangeNotification object:textField];
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextFieldTextDidChangeNotification object:ac.textFields.firstObject];
    }];
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:@"完成" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextFieldTextDidChangeNotification object:ac.textFields.firstObject];
        
        JModifyDepart *modify = [[JModifyDepart alloc] init];
        [modify modifyDepart:act :depart.pid :ac.textFields.firstObject.text];
        
    }];
    otherAction.enabled = NO;
    [ac addAction:cancelAction];
    [ac addAction:otherAction];
    
    [self.hostViewController presentViewController:ac animated:YES completion:nil];
}

- (void) alertTextFieldDidChange : (NSNotification *)notification {
    UIAlertController *ac = (UIAlertController *)self.hostViewController.presentedViewController;
    if (ac) {
        UITextField *listen = ac.textFields[0];
        UIAlertAction *action = ac.actions.lastObject;
        action.enabled = listen.text.length > 5;
    }
}


@end
