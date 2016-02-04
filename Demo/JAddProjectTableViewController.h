//
//  JAddProjectTableViewController.h
//  Demo
//
//  Created by jianghouyu on 16/1/29.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaiduMapAPI_Location/BMKLocationComponent.h"

@interface JAddProjectTableViewController : UITableViewController <BMKLocationServiceDelegate> {
    BMKLocationService *_loaction;
    NSMutableArray *imageData;
}


@end
