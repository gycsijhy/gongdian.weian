//
//  project_ry.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface project_ry : MTLModel<MTLJSONSerializing>
@property (nonatomic, assign) int _id;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *user_id;
@property (nonatomic, copy) NSString *username;
@end
