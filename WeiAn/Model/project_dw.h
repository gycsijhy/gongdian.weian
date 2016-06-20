//
//  project_dw.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface project_dw : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy) NSString *_id;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *pid;
@property (nonatomic, copy) NSString *dz;
@property (nonatomic, copy) NSString *pname;
@property (nonatomic, copy) NSString *flag;
@property (nonatomic, copy) NSString *lontitude;
@property (nonatomic, copy) NSString *latitude;
@property (nonatomic, copy) NSString *fzr;
@property (nonatomic, copy) NSString *fzrxm;
@property (nonatomic, copy) NSArray *project_jd;
@end
