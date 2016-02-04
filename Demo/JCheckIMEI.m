//
//  JCheckIMEI.m
//  Demo
//
//  Created by jianghouyu on 16/1/25.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JCheckIMEI.h"
#import "n_webservice.h"

@implementation JCheckIMEI

- (NSArray *)getCheckIMEIResult:(NSString *)number {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_uf_check_imei_json *request = [[n_webservice_uf_check_imei_json alloc] init];
    request.imei = number;
    
    n_webserviceSoap12BindingResponse *response = [binding uf_check_imei_jsonUsingParameters:request];
    
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_uf_check_imei_jsonResponse class]]) {
            [request release];
            result = [mine uf_check_imei_jsonResult];
        }
    }
    NSData *data = [result dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    NSArray *results = dict[@"items"];
    NSValueTransformer *transformer = [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:User.class];
    results = [transformer transformedValue:results];
    return results;
}

@end
