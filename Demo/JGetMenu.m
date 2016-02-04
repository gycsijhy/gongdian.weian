//
//  JGetMenu.m
//  Demo
//
//  Created by jianghouyu on 16/1/23.
//  Copyright © 2016年 jianghouyu. All rights reserved.
//

#import "JGetMenu.h"
#import "Menu.h"

@implementation JGetMenu

- (NSArray *) getMenu:(NSString *)uids {
    NSString *result = nil;
    n_webserviceSoap12Binding *binding = [n_webservice n_webserviceSoap12Binding];
    n_webservice_get_menu_json *request = [[n_webservice_get_menu_json alloc] init];
    request.uids = uids;
    
    n_webserviceSoap12BindingResponse *response = [binding get_menu_jsonUsingParameters:request];
    [request release];
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[n_webservice_get_menu_jsonResponse class]]) {
            
            result = [mine get_menu_jsonResult];
        }
    }
    //NSLog(@"%@",result);
    NSData *data = [result dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    NSArray *results = dict[@"items"];
    NSValueTransformer *transformer = [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:Menu.class];
    results = [transformer transformedValue:results];
    return results;
}

@end
