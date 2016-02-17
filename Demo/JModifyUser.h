//
//  JModifyUser.h
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "n_webservice.h"
#import "Users.h"

@interface JModifyUser : NSObject

- (void)modifyUser :(NSString *)action :(Users *)user;

@end
