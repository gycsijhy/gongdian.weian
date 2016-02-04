//
//  JMapViewController.h
//  Demo
//
//  Created by jianghouyu on 16/1/28.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaiduMapAPI_Map/BMKMapComponent.h"
#import "BaiduMapAPI_Location/BMKLocationComponent.h"

@interface JMapViewController : UIViewController <BMKMapViewDelegate,BMKLocationServiceDelegate> {
    BMKMapView *_mapView;
    BMKLocationService *_loaction;
}

@end
