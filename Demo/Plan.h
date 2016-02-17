//
//  Plan.h
//  Demo
//
//  Created by jianghouyu on 16/2/14.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Plan : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *yf;
@property (nonatomic, copy) NSString *nr;
@property (nonatomic, copy) NSString *dz;
@property (nonatomic, copy) NSString *kssj;
@property (nonatomic, copy) NSString *jssj;
@property (nonatomic, copy) NSString *dw;
@property (nonatomic, copy) NSString *ry;
@property (nonatomic, copy) NSString *flag;
@property (nonatomic, copy) NSString *createuser;
@property (nonatomic, copy) NSString *createusername;
@property (nonatomic, copy) NSMutableArray *project_dw;
@property (nonatomic, copy) NSMutableArray *project_ry;



@end
