//
//  JUploadImageHelper.h
//  Demo
//
//  Created by jianghouyu on 16/2/16.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^returnBlock) (NSDictionary *returnDict);

@interface JUploadImageHelper : NSObject

@property (nonatomic, copy) returnBlock retBlock;
@property (nonatomic, copy) NSMutableArray *imageData;

- (void) uploadImages : (returnBlock)block;

@end
