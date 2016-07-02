//
//  WGViewController.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/24.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "project_dw.h"
#import "jd.h"

@protocol postValue <NSObject>

- (void) post :(NSMutableDictionary *) dict;

@end

@interface WGViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *myTableView;
    NSMutableArray *resultArr;
}
@property (nonatomic,strong) NSString *myTitle;
@property (nonatomic,strong) project_dw *pro_dw;
@property (nonatomic,strong) jd *pro_jd;
@property (assign, nonatomic) id<postValue> delegate;

@end
