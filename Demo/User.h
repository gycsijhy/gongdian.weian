//
//  User.h
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle/Mantle.h"

@interface User : MTLModel <MTLJSONSerializing>

@property (nonatomic, readonly) NSString *uid;
@property (nonatomic, readonly) NSString *uname;
@property (nonatomic, readonly) NSString *urole;
@property (nonatomic, readonly) NSString *pid;
@property (nonatomic, readonly) NSString *pcode;
@property (nonatomic, readonly) NSString *imei;
@property (nonatomic, readonly) NSString *pname;
@property (nonatomic, readonly) NSString *version;

@end
