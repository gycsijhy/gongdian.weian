//
//  Users.h
//  Demo
//
//  Created by jianghouyu on 16/1/27.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle/Mantle.h"

@interface Users : MTLModel <MTLJSONSerializing>

@property (nonatomic, readonly) NSString *uids;
@property (nonatomic, readonly) NSString *uname;
@property (nonatomic, readonly) NSString *urole;
@property (nonatomic, readonly) NSString *pid;
@property (nonatomic, readonly) NSString *pcode;
@property (nonatomic, readonly) NSString *imei;
@property (nonatomic, readonly) NSString *pname;
@property (nonatomic, readonly) NSString *version;
@property (nonatomic, readonly) NSString *iid;
@property (nonatomic, copy) NSString *headurl;

@end
