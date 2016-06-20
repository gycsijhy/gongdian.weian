//
//  ProPhoto.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/3/23.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface ProPhoto : MTLModel<MTLJSONSerializing>
@property (nonatomic, readonly) NSString *id_;
@property (nonatomic, readonly) NSString *url;
@property (nonatomic, readonly) NSString *pro_id;
@property (nonatomic, readonly) NSString *jd_id;
@property (nonatomic, readonly) NSString *createuser;
@property (nonatomic, readonly) NSString *createtime;
@property (nonatomic, readonly) NSString *flag;
@property (nonatomic, readonly) NSString *latitude;
@property (nonatomic, readonly) NSString *lontitude;
@property (nonatomic, readonly) NSString *address;
@property (nonatomic, readonly) NSString *locationdescribe;

@end
