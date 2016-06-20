//
//  ProDW.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/16.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface ProDW : MTLModel<MTLJSONSerializing>
@property (nonatomic, assign) int _id;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *pid;
@property (nonatomic, copy) NSString *dz;
@property (nonatomic, copy) NSString *pname;
@property (nonatomic, copy) NSString *fzr;
@property (nonatomic, copy) NSString *fzrxm;
@end
