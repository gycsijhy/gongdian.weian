//
//  JImagePickerHelper.m
//  Demo
//
//  Created by jianghouyu on 16/1/29.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JImagePickerHelper.h"
#import <MobileCoreServices/MobileCoreServices.h>

@implementation JImagePickerHelper

- (void)takePhoto {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"请选择" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *cameraAction = [UIAlertAction actionWithTitle:@"用相机拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self takePhotoFromCamera];
    }];
    UIAlertAction *existingPhoto = [UIAlertAction actionWithTitle:@"从相册选取" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self pickPhoto];
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cameraAction];
    [alertController addAction:existingPhoto];
    [alertController addAction:cancel];
    [self.hostViewController presentViewController:alertController animated:YES completion:nil];
}

- (void) takePhotoFromCamera {
    NSString *type = (NSString *)kUTTypeImage;
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self.hostViewController;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        NSArray *sourceTypes = [UIImagePickerController availableMediaTypesForSourceType:picker.sourceType];
        if (![sourceTypes containsObject:type ]){
            [self addAlert];
        }
        else {
            picker.mediaTypes = [[NSArray alloc] initWithObjects:type, nil];
            picker.allowsEditing = NO;
            
            [self.hostViewController presentViewController:picker animated:YES completion:nil];
            [picker becomeFirstResponder];
        }
        
    } else {
        [self addAlert];
    }
}

- (void) pickPhoto {
    NSString *type = (NSString *)kUTTypeImage;
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
        
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self.hostViewController;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        NSArray *sourceTypes = [UIImagePickerController availableMediaTypesForSourceType:picker.sourceType];
        if (![sourceTypes containsObject:type ]){
            [self addAlert];
        }
        else {
            picker.mediaTypes = [[NSArray alloc] initWithObjects:type, nil];
            picker.allowsEditing = NO;
            
            [self.hostViewController presentViewController:picker animated:YES completion:nil];
            [picker becomeFirstResponder];
        }
        
    } else {
        [self addAlert];
    }
}

- (void)addAlert {
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"标题" message:@"相机无法使用" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil];
    [alertView show];
}

@end
