//
//  project.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "project_dw.h"
#import "project_ry.h"

@interface project : MTLModel<MTLJSONSerializing>
@property (nonatomic, copy) NSString *id_;
@property (nonatomic, copy) NSString *yf;
@property (nonatomic, copy) NSString *nr;
@property (nonatomic, copy) NSString *kssj;
@property (nonatomic, copy) NSString *jssj;
@property (nonatomic, copy) NSString *dz;
@property (nonatomic, copy) NSString *flag;
@property (nonatomic, copy) NSString *createtime;
@property (nonatomic, copy) NSString *createuser;
@property (nonatomic, copy) NSString *flag_id;
@property (nonatomic, copy) NSString *dw;
@property (nonatomic, copy) NSString *ry;
@property (nonatomic, copy) NSString *createusername;
@property (nonatomic, copy) NSString *mc;
@property (nonatomic, copy) NSString *xk_pid;
@property (nonatomic, copy) NSString *xkdw;
@property (nonatomic, copy) NSArray *project_dw;
@property (nonatomic, copy) NSArray *project_ry;
@end
