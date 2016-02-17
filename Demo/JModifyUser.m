//
//  JModifyUser.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JModifyUser.h"

@implementation JModifyUser

- (void)modifyUser:(NSString *)action :(Users *)user {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_modify_users *request = [[n_webservice_modify_users alloc] init];
    request.action = action;
    request.id_ = user.uids;
    request.uids = user.uids;
    request.uname = user.uname;
    request.pid = user.pid;
    request.pcode = user.pcode;
    request.pname = user.pname;
    
    n_webserviceSoap12BindingResponse *response = [binding modify_usersUsingParameters:request];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_modify_usersResponse class]]) {
            [request release];
            result = [mine modify_usersResult];
        }
    }
}

@end
