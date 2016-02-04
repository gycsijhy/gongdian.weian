//
//  JSendSMS.m
//  Demo
//
//  Created by jianghouyu on 16/1/25.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JSendSMS.h"

@implementation JSendSMS

- (NSString *)sendSMS:(NSString *)number {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_uf_send_sms *request = [[n_webservice_uf_send_sms alloc] init];
    request.phonenumber = number;
    
    n_webserviceSoap12BindingResponse *response = [binding uf_send_smsUsingParameters:request];
    
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_uf_send_smsResponse class]]) {
            [request release];
            result = [mine uf_send_smsResult];
        }
    }
    
    return result;
}

@end
