//
//  SSVDetailViewController.h
//  gongdian.weian
//
//  Created by jianghouyu on 16/6/6.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "project.h"
#import "project_dw.h"
#import "BaiduMapAPI_Location/BMKLocationComponent.h"
#import "BaiduMapAPI_Search/BMKSearchComponent.h"
#import <BaiduMapAPI_Utils/BMKUtilsComponent.h>
#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import "ProJd.h"

@interface SSVDetailViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,BMKLocationServiceDelegate,BMKGeoCodeSearchDelegate>{
    UITableView *myTableView;
    NSMutableArray *resultArr;
    BMKLocationService *_loaction;
    BMKGeoCodeSearch *_geocodesearch;
    BMKPointAnnotation *_item;
    NSMutableArray *imageData;
}

@property (nonatomic,strong) NSString *menu_id;
@property (nonatomic,strong) NSString *myTitle;
@property (strong,nonatomic) project *pro;
@property (strong,nonatomic) ProJd *pro_jd;
@property (nonatomic,strong) NSString *location;
@property (strong,nonatomic) project_dw *pro_dw;
@property (nonatomic, retain) NSMutableDictionary *marr;

@end
