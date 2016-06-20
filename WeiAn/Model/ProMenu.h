//
//  ProMenu.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/18.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface ProMenu : MTLModel<MTLJSONSerializing>
@property (nonatomic, copy) NSString *pro_id;
@property (nonatomic, copy) NSString *menu_id;
@property (nonatomic, copy) NSString *menu;
@property (nonatomic, copy) NSString *menu_bm;
@end
