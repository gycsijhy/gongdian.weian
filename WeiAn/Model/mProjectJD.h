//
//  mProjectJD.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/24.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "zp.h"
#import "jd.h"

@interface mProjectJD : MTLModel<MTLJSONSerializing>
@property (nonatomic, copy) NSString *flag;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSArray<jd *>  *project_jd;
@property (nonatomic, copy) NSArray<zp *> *project_photos;
@end
