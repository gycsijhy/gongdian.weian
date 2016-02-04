//
//  JModifyRoll.m
//  Demo
//
//  Created by jianghouyu on 16/1/26.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JModifyRoll.h"

@implementation JModifyRoll

- (void)modifyRoll:(NSString *)uid :(NSString *)menuid :(NSString *)flag {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_modify_rolls *request = [[n_webservice_modify_rolls alloc] init];
    request.uids = uid;
    request.menu_id = menuid;
    request.flag = flag;
    
    n_webserviceSoap12BindingResponse *response = [binding modify_rollsUsingParameters:request];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_modify_rollsResponse class]]) {
            [request release];
            result = [mine modify_rollsResult];
        }
    }
}

@end
