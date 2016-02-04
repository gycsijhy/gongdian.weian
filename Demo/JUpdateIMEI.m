//
//  JUpdateIMEI.m
//  Demo
//
//  Created by jianghouyu on 16/1/25.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JUpdateIMEI.h"

@implementation JUpdateIMEI

- (void)updateIMEI:(NSString *)sfzh :(NSString *)IMEI {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_uf_update_imei *request = [[n_webservice_uf_update_imei alloc] init];
    request.uid = sfzh;
    request.imei = IMEI;
    
    n_webserviceSoap12BindingResponse *response = [binding uf_update_imeiUsingParameters:request];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_uf_update_imeiResponse class]]) {
            [request release];
            result = [mine uf_update_imeiResult];
        }
    }
}

@end
