//
//  SMSViewController.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/22.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol postValue <NSObject>

- (void) post :(NSMutableDictionary *) dict;

@end

@interface SMSViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *myTableView;
    NSMutableArray *resultArr;
    NSMutableDictionary *bmDict;
    NSMutableDictionary *ryDict;
}
@property (nonatomic,strong) NSString *myTitle;
@property (assign) BOOL isOpen;
@property (nonatomic,retain) NSIndexPath *selectIndex;
@property (assign, nonatomic) id<postValue> delegate;

@end
