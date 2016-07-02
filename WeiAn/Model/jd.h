//
//  jd.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/24.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface jd : MTLModel<MTLJSONSerializing>
@property (nonatomic, assign) int _id;
@property (nonatomic, copy) NSString *pro_id;
@property (nonatomic, copy) NSString *menu_id;
@property (nonatomic, copy) NSString *user_id;
@property (nonatomic, copy) NSString *nr;
@property (nonatomic, copy) NSString *pid;
@property (nonatomic, copy) NSString *lb;
@property (nonatomic, copy) NSString *dwf;
@property (nonatomic, copy) NSString *dwq;
@property (nonatomic, copy) NSString *ryf;
@property (nonatomic, copy) NSString *ryq;
@end
