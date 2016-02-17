//
//  JModifyProject.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JModifyProject.h"

@implementation JModifyProject

- (void)modifyProject :(NSString *)action :(NSString *)json{
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_modify_project_json *request = [[n_webservice_modify_project_json alloc] init];
    request.action = action;
    request.gson = json;
    
    n_webserviceSoap12BindingResponse *response = [binding modify_project_jsonUsingParameters:request];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_modify_project_jsonResponse class]]) {
            [request release];
            result = [mine modify_project_jsonResult];
        }
    }
}

@end
