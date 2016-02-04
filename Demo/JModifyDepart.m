//
//  JModifyDepart.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JModifyDepart.h"

@implementation JModifyDepart

- (void)modifyDepart : (NSString *)action :(NSString *)pid :(NSString *)pname {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_modify_department *request = [[n_webservice_modify_department alloc] init];
    request.action = action;
    request.pid = pid;
    request.pname = pname;
    
    n_webserviceSoap12BindingResponse *response = [binding modify_departmentUsingParameters:request];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_modify_departmentResponse class]]) {
            [request release];
            result = [mine modify_departmentResult];
        }
    }
}

@end
