//
//  JGetUserByMenu.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JGetUserByMenu.h"

@implementation JGetUserByMenu

- (void)getUserByMenu {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_get_users_by_menu *request = [[n_webservice_get_users_by_menu alloc] init];
    
    n_webserviceSoap12BindingResponse *response = [binding get_users_by_menuUsingParameters:request];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_get_users_by_menuResponse class]]) {
            [request release];
            result = [mine get_users_by_menuResult];
        }
    }
}

@end
