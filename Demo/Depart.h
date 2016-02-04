//
//  Depart.h
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle/Mantle.h"

@interface Depart : MTLModel <MTLJSONSerializing>

@property (nonatomic, readonly) NSString *pid;
@property (nonatomic, readonly) NSString *pname;

@end
