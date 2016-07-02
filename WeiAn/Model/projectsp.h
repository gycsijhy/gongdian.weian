//
//  projectsp.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/21.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "ProJd.h"
@interface projectsp : MTLModel<MTLJSONSerializing>
@property (nonatomic, copy) NSString *id_;
@property (nonatomic, copy) NSString *yf;
@property (nonatomic, copy) NSString *nr;
@property (nonatomic, copy) NSString *kssj;
@property (nonatomic, copy) NSString *jssj;
@property (nonatomic, copy) NSString *dz;
@property (nonatomic, copy) NSString *flag;
@property (nonatomic, copy) NSString *createtime;
@property (nonatomic, copy) NSString *createuser;
@property (nonatomic, copy) NSString *flag_jd;
@property (nonatomic, copy) NSString *dw;
@property (nonatomic, copy) NSString *ry;
@property (nonatomic, copy) NSString *createusername;
@property (nonatomic, copy) NSString *mc;
@property (nonatomic, copy) NSString *xk_pid;
@property (nonatomic, copy) NSString *xkdw;
@property (nonatomic, copy) ProJd *project_jd;
@end
