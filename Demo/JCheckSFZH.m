//
//  JCheckSFZH.m
//  Demo
//
//  Created by jianghouyu on 16/1/25.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JCheckSFZH.h"

@implementation JCheckSFZH

- (NSString *)checkSFZH:(NSString *)sfzh {
    NSString *result = nil;
    
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_uf_check_uid *request = [[n_webservice_uf_check_uid alloc] init];
    request.uid = sfzh;
    
    n_webserviceSoap12BindingResponse *response = [binding uf_check_uidUsingParameters:request];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_uf_check_uidResponse class]]) {
            [request release];
            result = [mine uf_check_uidResult];
        }
    }
    if (result.length == 11) {
        result = [self sendCode:result];
    }
    
    return result;
}

- (NSString *)sendCode:(NSString *)sjhm {
    JSendSMS *send = [[JSendSMS alloc] init];
    return [send sendSMS:sjhm];
}

@end
