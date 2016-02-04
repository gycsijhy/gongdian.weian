//
//  Menu.h
//  Demo
//
//  Created by jianghouyu on 16/1/23.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Menu : MTLModel <MTLJSONSerializing>

@property (nonatomic, readonly) NSString *iid;
@property (nonatomic, readonly) NSString *menu;

@end
