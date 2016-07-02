//
//  DepartUser.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "User.h"

@interface DepartUser : MTLModel <MTLJSONSerializing>
@property (nonatomic, copy) NSString *pid;
@property (nonatomic, copy) NSString *pname;
@property (nonatomic, copy) NSArray<User *> *users;
@end
