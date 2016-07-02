//
//  User.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface User : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy) NSString *uname;
@property (nonatomic, copy) NSString *pcode;
@property (nonatomic, readonly) NSString *iid;


@end
