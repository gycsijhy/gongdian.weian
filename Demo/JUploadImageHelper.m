//
//  JUploadImageHelper.m
//  Demo
//
//  Created by jianghouyu on 16/2/16.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JUploadImageHelper.h"
#import "AFNetworking.h"

@implementation JUploadImageHelper

- (void)uploadImages :(returnBlock)block {
    self.retBlock = block;
    AFHTTPSessionManager *manage = [AFHTTPSessionManager manager];
    manage.responseSerializer = [AFHTTPResponseSerializer serializer];
    NSMutableDictionary *parameter = [NSMutableDictionary dictionary];
    parameter[@"data1"] = @"JianahouyuUploadImage";
    parameter[@"data2"] = @"cs";
    [manage POST:@"http://218.92.49.18:8080/upload/upload.do" parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        for (NSInteger i=0; i<_imageData.count; i++) {
            NSData *d = [_imageData objectAtIndex:i];
            NSString *name = @"JiangImage";
            NSString *fileName = [NSString stringWithFormat:@"%@.png",name];
            [formData appendPartWithFileData:d name:name fileName:fileName mimeType:@"image/jpg"];
        }
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //NSLog(@"%@",@"okk");
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSData *d = responseObject;
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:d options:NSJSONReadingAllowFragments error:nil];
        self.retBlock(dict);
        //NSLog(@"%@",dict);
        //NSLog(@"%@",@"ok");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //NSLog(@"%@",error);
        //NSLog(@"%@",@"error");
    }];
}

@end
