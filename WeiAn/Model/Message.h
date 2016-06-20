//
//  Message.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/12.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Message : MTLModel<MTLJSONSerializing>

@property (nonatomic, readonly) NSString *id_;
@property (nonatomic, readonly) NSString *user_id;
@property (nonatomic, readonly) NSString *hm;
@property (nonatomic, readonly) NSString *menu_id;
@property (nonatomic, readonly) NSString *dxnr;
@property (nonatomic, readonly) NSString *pid;
@property (nonatomic, readonly) NSString *pname;
@property (nonatomic, readonly) NSString *xm;

@end
