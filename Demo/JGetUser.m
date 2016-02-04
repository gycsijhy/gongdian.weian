//
//  JGetUser.m
//  Demo
//
//  Created by jianghouyu on 16/1/25.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JGetUser.h"
#import "Users.h"

@implementation JGetUser

- (NSMutableArray *)getUser {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_get_users_json *request = [[n_webservice_get_users_json alloc] init];
    
    n_webserviceSoap12BindingResponse *response = [binding get_users_jsonUsingParameters:request];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_get_users_jsonResponse class]]) {
            [request release];
            result = [mine get_users_jsonResult];
        }
    }
    NSData *data = [result dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    NSMutableArray *results = dict[@"items"];
    NSValueTransformer *transformer = [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:Users.class];
    results = [transformer transformedValue:results];
    return results;
}

@end
