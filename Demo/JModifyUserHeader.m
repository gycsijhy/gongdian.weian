//
//  JModifyUserHeader.m
//  Demo
//
//  Created by jianghouyu on 16/2/16.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JModifyUserHeader.h"

@implementation JModifyUserHeader

- (void)modifyUserHeader:(NSString *)id_ :(NSString *)url {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_modify_users_head *request = [[n_webservice_modify_users_head alloc] init];
    request.id_= id_;
    request.url = url;
    
    n_webserviceSoap12BindingResponse *response = [binding modify_users_headUsingParameters:request];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_modify_users_headResponse class]]) {
            [request release];
            result = [mine modify_users_headResult];
        }
    }
}

@end
