//
//  ProJd.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/3/23.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "ProPhoto.h"

@interface ProJd : MTLModel<MTLJSONSerializing>
@property (nonatomic, readonly) NSString *id_;
@property (nonatomic, readonly) NSString *pro_id;
@property (nonatomic, readonly) NSString *menu_id;
@property (nonatomic, readonly) NSString *nr;
@property (nonatomic, readonly) NSString *user_id;
@property (nonatomic, readonly) NSString *createtime;
@property (nonatomic, readonly) NSString *yxbz;
@property (nonatomic, readonly) NSString *pid;
@property (nonatomic, readonly) NSString *uname;
@property (nonatomic, readonly) NSString *menu;
@property (nonatomic, readonly) NSString *bm;
@property (nonatomic, readonly) NSString *lb;
@property (nonatomic, readonly) NSNumber *dwf;
@property (nonatomic, readonly) NSNumber *dwq;
@property (nonatomic, readonly) NSNumber *ryf;
@property (nonatomic, readonly) NSNumber *ryq;
@property (nonatomic, readonly) NSString *sfgs;
@property (nonatomic, readonly) NSString *pname;
@property (nonatomic, readonly) NSArray<ProPhoto *> *project_photo;
@end
