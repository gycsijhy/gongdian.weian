//
//  DX.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "SJ.h"

@interface DX : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy) NSString *nr;
@property (nonatomic, copy) NSArray<SJ *> *phoneNumbers;

@end
