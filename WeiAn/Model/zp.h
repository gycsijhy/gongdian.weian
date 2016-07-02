//
//  zp.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/24.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface zp : MTLModel<MTLJSONSerializing>
@property (nonatomic, assign) int _id;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *pro_id;
@property (nonatomic, copy) NSString *createuser;
@property (nonatomic, copy) NSString *flag;
@property (nonatomic, copy) NSString *latitude;
@property (nonatomic, copy) NSString *lontitude;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *locationdescribe;

@end
