//
//  JGetProject.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JGetProject.h"

@implementation JGetProject

- (void)getProject {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_get_project_json *request = [[n_webservice_get_project_json alloc] init];
    
    n_webserviceSoap12BindingResponse *response = [binding get_project_jsonUsingParameters:request];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_get_project_jsonResponse class]]) {
            [request release];
            result = [mine get_project_jsonResult];
        }
    }
}

@end
