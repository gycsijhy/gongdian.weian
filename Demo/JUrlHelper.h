//
//  JUrlHelper.h
//  Demo
//
//  Created by jianghouyu on 16/2/16.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JUrlHelper : NSObject

@property (nonatomic, copy) NSDictionary *dict;

- (NSString *) urlParse;

- (void) modifyUserHeader : (NSString *) id_;

@end
