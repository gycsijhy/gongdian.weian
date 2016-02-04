#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class n_webservice_uf_get_person_info;
@class n_webservice_uf_get_person_infoResponse;
@class n_webservice_u_getdata_for_sql;
@class n_webservice_u_getdata_for_sqlResponse;
@class n_webservice_uf_get_person_photo;
@class n_webservice_uf_get_person_photoResponse;
@class n_webservice_checkpassword;
@class n_webservice_checkpasswordResponse;
@class n_webservice_uf_send_sms;
@class n_webservice_uf_send_smsResponse;
@class n_webservice_uf_regiest;
@class n_webservice_uf_regiestResponse;
@class n_webservice_uf_check_imei;
@class n_webservice_uf_check_imeiResponse;
@class n_webservice_uf_check_uid;
@class n_webservice_uf_check_uidResponse;
@class n_webservice_uf_update_imei;
@class n_webservice_uf_update_imeiResponse;
@class n_webservice_get_person_info_json;
@class n_webservice_get_person_info_jsonResponse;
@class n_webservice_uf_check_imei_json;
@class n_webservice_uf_check_imei_jsonResponse;
@class n_webservice_get_department_json;
@class n_webservice_get_department_jsonResponse;
@class n_webservice_modify_department;
@class n_webservice_modify_departmentResponse;
@class n_webservice_get_users_json;
@class n_webservice_get_users_jsonResponse;
@class n_webservice_modify_users;
@class n_webservice_modify_usersResponse;
@class n_webservice_get_menu_json;
@class n_webservice_get_menu_jsonResponse;
@class n_webservice_modify_rolls;
@class n_webservice_modify_rollsResponse;
@class n_webservice_save_photo_to_file;
@class n_webservice_save_photo_to_fileResponse;
@class n_webservice_get_project_json;
@class n_webservice_get_project_jsonResponse;
@class n_webservice_get_users_by_menu;
@class n_webservice_get_users_by_menuResponse;
@class n_webservice_modify_project_json;
@class n_webservice_modify_project_jsonResponse;
@class n_webservice_uf_test;
@class n_webservice_uf_testResponse;
@interface n_webservice_uf_get_person_info : NSObject {
	
/* elements */
	NSString * sfzh;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_get_person_info *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * sfzh;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_get_person_infoResponse : NSObject {
	
/* elements */
	NSString * uf_get_person_infoResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_get_person_infoResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_get_person_infoResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_u_getdata_for_sql : NSObject {
	
/* elements */
	NSString * as_sql;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_u_getdata_for_sql *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * as_sql;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_u_getdata_for_sqlResponse : NSObject {
	
/* elements */
	NSString * u_getdata_for_sqlResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_u_getdata_for_sqlResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * u_getdata_for_sqlResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_get_person_photo : NSObject {
	
/* elements */
	NSString * sfzh;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_get_person_photo *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * sfzh;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_get_person_photoResponse : NSObject {
	
/* elements */
	NSData * uf_get_person_photoResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_get_person_photoResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSData * uf_get_person_photoResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_checkpassword : NSObject {
	
/* elements */
	NSString * userid;
	NSString * password;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_checkpassword *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * userid;
@property (retain) NSString * password;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_checkpasswordResponse : NSObject {
	
/* elements */
	NSString * checkpasswordResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_checkpasswordResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * checkpasswordResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_send_sms : NSObject {
	
/* elements */
	NSString * phonenumber;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_send_sms *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * phonenumber;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_send_smsResponse : NSObject {
	
/* elements */
	NSString * uf_send_smsResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_send_smsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_send_smsResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_regiest : NSObject {
	
/* elements */
	NSString * username;
	NSString * password;
	NSString * xingming;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_regiest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * username;
@property (retain) NSString * password;
@property (retain) NSString * xingming;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_regiestResponse : NSObject {
	
/* elements */
	NSString * uf_regiestResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_regiestResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_regiestResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_imei : NSObject {
	
/* elements */
	NSString * imei;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_imei *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * imei;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_imeiResponse : NSObject {
	
/* elements */
	NSString * uf_check_imeiResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_imeiResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_check_imeiResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_uid : NSObject {
	
/* elements */
	NSString * uid;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_uid *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uid;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_uidResponse : NSObject {
	
/* elements */
	NSString * uf_check_uidResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_uidResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_check_uidResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_update_imei : NSObject {
	
/* elements */
	NSString * uid;
	NSString * imei;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_update_imei *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uid;
@property (retain) NSString * imei;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_update_imeiResponse : NSObject {
	
/* elements */
	NSString * uf_update_imeiResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_update_imeiResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_update_imeiResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_person_info_json : NSObject {
	
/* elements */
	NSString * sfzh;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_person_info_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * sfzh;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_person_info_jsonResponse : NSObject {
	
/* elements */
	NSString * get_person_info_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_person_info_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_person_info_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_imei_json : NSObject {
	
/* elements */
	NSString * imei;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_imei_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * imei;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_check_imei_jsonResponse : NSObject {
	
/* elements */
	NSString * uf_check_imei_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_check_imei_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_check_imei_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_department_json : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_department_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_department_jsonResponse : NSObject {
	
/* elements */
	NSString * get_department_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_department_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_department_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_department : NSObject {
	
/* elements */
	NSString * action;
	NSString * pid;
	NSString * pname;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_department *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * action;
@property (retain) NSString * pid;
@property (retain) NSString * pname;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_departmentResponse : NSObject {
	
/* elements */
	NSString * modify_departmentResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_departmentResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * modify_departmentResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_users_json : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_users_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_users_jsonResponse : NSObject {
	
/* elements */
	NSString * get_users_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_users_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_users_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_users : NSObject {
	
/* elements */
	NSString * action;
	NSString * id_;
	NSString * uids;
	NSString * uname;
	NSString * pid;
	NSString * pcode;
	NSString * pname;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_users *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * action;
@property (retain) NSString * id_;
@property (retain) NSString * uids;
@property (retain) NSString * uname;
@property (retain) NSString * pid;
@property (retain) NSString * pcode;
@property (retain) NSString * pname;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_usersResponse : NSObject {
	
/* elements */
	NSString * modify_usersResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_usersResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * modify_usersResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_menu_json : NSObject {
	
/* elements */
	NSString * uids;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_menu_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uids;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_menu_jsonResponse : NSObject {
	
/* elements */
	NSString * get_menu_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_menu_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_menu_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_rolls : NSObject {
	
/* elements */
	NSString * uids;
	NSString * menu_id;
	NSString * flag;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_rolls *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uids;
@property (retain) NSString * menu_id;
@property (retain) NSString * flag;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_rollsResponse : NSObject {
	
/* elements */
	NSString * modify_rollsResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_rollsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * modify_rollsResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_save_photo_to_file : NSObject {
	
/* elements */
	NSString * filename;
	NSString * data;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_save_photo_to_file *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * filename;
@property (retain) NSString * data;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_save_photo_to_fileResponse : NSObject {
	
/* elements */
	NSString * save_photo_to_fileResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_save_photo_to_fileResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * save_photo_to_fileResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_json : NSObject {
	
/* elements */
	NSString * user_id;
	NSString * flag;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * user_id;
@property (retain) NSString * flag;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_project_jsonResponse : NSObject {
	
/* elements */
	NSString * get_project_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_project_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_project_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_users_by_menu : NSObject {
	
/* elements */
	NSString * menu;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_users_by_menu *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * menu;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_get_users_by_menuResponse : NSObject {
	
/* elements */
	NSString * get_users_by_menuResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_get_users_by_menuResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * get_users_by_menuResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_project_json : NSObject {
	
/* elements */
	NSString * action;
	NSString * gson;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_project_json *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * action;
@property (retain) NSString * gson;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_modify_project_jsonResponse : NSObject {
	
/* elements */
	NSString * modify_project_jsonResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_modify_project_jsonResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * modify_project_jsonResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_test : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_test *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface n_webservice_uf_testResponse : NSObject {
	
/* elements */
	NSString * uf_testResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (n_webservice_uf_testResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * uf_testResult;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xsd.h"
#import "n_webservice.h"
@class n_webserviceSoapBinding;
@class n_webserviceSoap12Binding;
@interface n_webservice : NSObject {
	
}
+ (n_webserviceSoapBinding *)n_webserviceSoapBinding;
+ (n_webserviceSoap12Binding *)n_webserviceSoap12Binding;
@end
@class n_webserviceSoapBindingResponse;
@class n_webserviceSoapBindingOperation;
@protocol n_webserviceSoapBindingResponseDelegate <NSObject>
- (void) operation:(n_webserviceSoapBindingOperation *)operation completedWithResponse:(n_webserviceSoapBindingResponse *)response;
@end
@interface n_webserviceSoapBinding : NSObject <n_webserviceSoapBindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(n_webserviceSoapBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (n_webserviceSoapBindingResponse *)uf_get_person_infoUsingParameters:(n_webservice_uf_get_person_info *)aParameters ;
- (void)uf_get_person_infoAsyncUsingParameters:(n_webservice_uf_get_person_info *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)u_getdata_for_sqlUsingParameters:(n_webservice_u_getdata_for_sql *)aParameters ;
- (void)u_getdata_for_sqlAsyncUsingParameters:(n_webservice_u_getdata_for_sql *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_get_person_photoUsingParameters:(n_webservice_uf_get_person_photo *)aParameters ;
- (void)uf_get_person_photoAsyncUsingParameters:(n_webservice_uf_get_person_photo *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)checkpasswordUsingParameters:(n_webservice_checkpassword *)aParameters ;
- (void)checkpasswordAsyncUsingParameters:(n_webservice_checkpassword *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_send_smsUsingParameters:(n_webservice_uf_send_sms *)aParameters ;
- (void)uf_send_smsAsyncUsingParameters:(n_webservice_uf_send_sms *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_regiestUsingParameters:(n_webservice_uf_regiest *)aParameters ;
- (void)uf_regiestAsyncUsingParameters:(n_webservice_uf_regiest *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_check_imeiUsingParameters:(n_webservice_uf_check_imei *)aParameters ;
- (void)uf_check_imeiAsyncUsingParameters:(n_webservice_uf_check_imei *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_check_uidUsingParameters:(n_webservice_uf_check_uid *)aParameters ;
- (void)uf_check_uidAsyncUsingParameters:(n_webservice_uf_check_uid *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_update_imeiUsingParameters:(n_webservice_uf_update_imei *)aParameters ;
- (void)uf_update_imeiAsyncUsingParameters:(n_webservice_uf_update_imei *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_person_info_jsonUsingParameters:(n_webservice_get_person_info_json *)aParameters ;
- (void)get_person_info_jsonAsyncUsingParameters:(n_webservice_get_person_info_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_check_imei_jsonUsingParameters:(n_webservice_uf_check_imei_json *)aParameters ;
- (void)uf_check_imei_jsonAsyncUsingParameters:(n_webservice_uf_check_imei_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_department_jsonUsingParameters:(n_webservice_get_department_json *)aParameters ;
- (void)get_department_jsonAsyncUsingParameters:(n_webservice_get_department_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)modify_departmentUsingParameters:(n_webservice_modify_department *)aParameters ;
- (void)modify_departmentAsyncUsingParameters:(n_webservice_modify_department *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_users_jsonUsingParameters:(n_webservice_get_users_json *)aParameters ;
- (void)get_users_jsonAsyncUsingParameters:(n_webservice_get_users_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)modify_usersUsingParameters:(n_webservice_modify_users *)aParameters ;
- (void)modify_usersAsyncUsingParameters:(n_webservice_modify_users *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_menu_jsonUsingParameters:(n_webservice_get_menu_json *)aParameters ;
- (void)get_menu_jsonAsyncUsingParameters:(n_webservice_get_menu_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)modify_rollsUsingParameters:(n_webservice_modify_rolls *)aParameters ;
- (void)modify_rollsAsyncUsingParameters:(n_webservice_modify_rolls *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)save_photo_to_fileUsingParameters:(n_webservice_save_photo_to_file *)aParameters ;
- (void)save_photo_to_fileAsyncUsingParameters:(n_webservice_save_photo_to_file *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_project_jsonUsingParameters:(n_webservice_get_project_json *)aParameters ;
- (void)get_project_jsonAsyncUsingParameters:(n_webservice_get_project_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)get_users_by_menuUsingParameters:(n_webservice_get_users_by_menu *)aParameters ;
- (void)get_users_by_menuAsyncUsingParameters:(n_webservice_get_users_by_menu *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)modify_project_jsonUsingParameters:(n_webservice_modify_project_json *)aParameters ;
- (void)modify_project_jsonAsyncUsingParameters:(n_webservice_modify_project_json *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
- (n_webserviceSoapBindingResponse *)uf_testUsingParameters:(n_webservice_uf_test *)aParameters ;
- (void)uf_testAsyncUsingParameters:(n_webservice_uf_test *)aParameters  delegate:(id<n_webserviceSoapBindingResponseDelegate>)responseDelegate;
@end
@interface n_webserviceSoapBindingOperation : NSOperation {
	n_webserviceSoapBinding *binding;
	n_webserviceSoapBindingResponse *response;
	id<n_webserviceSoapBindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) n_webserviceSoapBinding *binding;
@property (readonly) n_webserviceSoapBindingResponse *response;
@property (nonatomic, assign) id<n_webserviceSoapBindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate;
@end
@interface n_webserviceSoapBinding_uf_get_person_info : n_webserviceSoapBindingOperation {
	n_webservice_uf_get_person_info * parameters;
}
@property (retain) n_webservice_uf_get_person_info * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_get_person_info *)aParameters
;
@end
@interface n_webserviceSoapBinding_u_getdata_for_sql : n_webserviceSoapBindingOperation {
	n_webservice_u_getdata_for_sql * parameters;
}
@property (retain) n_webservice_u_getdata_for_sql * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_u_getdata_for_sql *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_get_person_photo : n_webserviceSoapBindingOperation {
	n_webservice_uf_get_person_photo * parameters;
}
@property (retain) n_webservice_uf_get_person_photo * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_get_person_photo *)aParameters
;
@end
@interface n_webserviceSoapBinding_checkpassword : n_webserviceSoapBindingOperation {
	n_webservice_checkpassword * parameters;
}
@property (retain) n_webservice_checkpassword * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_checkpassword *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_send_sms : n_webserviceSoapBindingOperation {
	n_webservice_uf_send_sms * parameters;
}
@property (retain) n_webservice_uf_send_sms * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_send_sms *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_regiest : n_webserviceSoapBindingOperation {
	n_webservice_uf_regiest * parameters;
}
@property (retain) n_webservice_uf_regiest * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_regiest *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_check_imei : n_webserviceSoapBindingOperation {
	n_webservice_uf_check_imei * parameters;
}
@property (retain) n_webservice_uf_check_imei * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_imei *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_check_uid : n_webserviceSoapBindingOperation {
	n_webservice_uf_check_uid * parameters;
}
@property (retain) n_webservice_uf_check_uid * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_uid *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_update_imei : n_webserviceSoapBindingOperation {
	n_webservice_uf_update_imei * parameters;
}
@property (retain) n_webservice_uf_update_imei * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_update_imei *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_person_info_json : n_webserviceSoapBindingOperation {
	n_webservice_get_person_info_json * parameters;
}
@property (retain) n_webservice_get_person_info_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_person_info_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_check_imei_json : n_webserviceSoapBindingOperation {
	n_webservice_uf_check_imei_json * parameters;
}
@property (retain) n_webservice_uf_check_imei_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_imei_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_department_json : n_webserviceSoapBindingOperation {
	n_webservice_get_department_json * parameters;
}
@property (retain) n_webservice_get_department_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_department_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_modify_department : n_webserviceSoapBindingOperation {
	n_webservice_modify_department * parameters;
}
@property (retain) n_webservice_modify_department * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_department *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_users_json : n_webserviceSoapBindingOperation {
	n_webservice_get_users_json * parameters;
}
@property (retain) n_webservice_get_users_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_users_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_modify_users : n_webserviceSoapBindingOperation {
	n_webservice_modify_users * parameters;
}
@property (retain) n_webservice_modify_users * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_users *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_menu_json : n_webserviceSoapBindingOperation {
	n_webservice_get_menu_json * parameters;
}
@property (retain) n_webservice_get_menu_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_menu_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_modify_rolls : n_webserviceSoapBindingOperation {
	n_webservice_modify_rolls * parameters;
}
@property (retain) n_webservice_modify_rolls * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_rolls *)aParameters
;
@end
@interface n_webserviceSoapBinding_save_photo_to_file : n_webserviceSoapBindingOperation {
	n_webservice_save_photo_to_file * parameters;
}
@property (retain) n_webservice_save_photo_to_file * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_save_photo_to_file *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_project_json : n_webserviceSoapBindingOperation {
	n_webservice_get_project_json * parameters;
}
@property (retain) n_webservice_get_project_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_get_users_by_menu : n_webserviceSoapBindingOperation {
	n_webservice_get_users_by_menu * parameters;
}
@property (retain) n_webservice_get_users_by_menu * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_users_by_menu *)aParameters
;
@end
@interface n_webserviceSoapBinding_modify_project_json : n_webserviceSoapBindingOperation {
	n_webservice_modify_project_json * parameters;
}
@property (retain) n_webservice_modify_project_json * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_project_json *)aParameters
;
@end
@interface n_webserviceSoapBinding_uf_test : n_webserviceSoapBindingOperation {
	n_webservice_uf_test * parameters;
}
@property (retain) n_webservice_uf_test * parameters;
- (id)initWithBinding:(n_webserviceSoapBinding *)aBinding delegate:(id<n_webserviceSoapBindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_test *)aParameters
;
@end
@interface n_webserviceSoapBinding_envelope : NSObject {
}
+ (n_webserviceSoapBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface n_webserviceSoapBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
@class n_webserviceSoap12BindingResponse;
@class n_webserviceSoap12BindingOperation;
@protocol n_webserviceSoap12BindingResponseDelegate <NSObject>
- (void) operation:(n_webserviceSoap12BindingOperation *)operation completedWithResponse:(n_webserviceSoap12BindingResponse *)response;
@end
@interface n_webserviceSoap12Binding : NSObject <n_webserviceSoap12BindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(n_webserviceSoap12BindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (n_webserviceSoap12BindingResponse *)uf_get_person_infoUsingParameters:(n_webservice_uf_get_person_info *)aParameters ;
- (void)uf_get_person_infoAsyncUsingParameters:(n_webservice_uf_get_person_info *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)u_getdata_for_sqlUsingParameters:(n_webservice_u_getdata_for_sql *)aParameters ;
- (void)u_getdata_for_sqlAsyncUsingParameters:(n_webservice_u_getdata_for_sql *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_get_person_photoUsingParameters:(n_webservice_uf_get_person_photo *)aParameters ;
- (void)uf_get_person_photoAsyncUsingParameters:(n_webservice_uf_get_person_photo *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)checkpasswordUsingParameters:(n_webservice_checkpassword *)aParameters ;
- (void)checkpasswordAsyncUsingParameters:(n_webservice_checkpassword *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_send_smsUsingParameters:(n_webservice_uf_send_sms *)aParameters ;
- (void)uf_send_smsAsyncUsingParameters:(n_webservice_uf_send_sms *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_regiestUsingParameters:(n_webservice_uf_regiest *)aParameters ;
- (void)uf_regiestAsyncUsingParameters:(n_webservice_uf_regiest *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_check_imeiUsingParameters:(n_webservice_uf_check_imei *)aParameters ;
- (void)uf_check_imeiAsyncUsingParameters:(n_webservice_uf_check_imei *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_check_uidUsingParameters:(n_webservice_uf_check_uid *)aParameters ;
- (void)uf_check_uidAsyncUsingParameters:(n_webservice_uf_check_uid *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_update_imeiUsingParameters:(n_webservice_uf_update_imei *)aParameters ;
- (void)uf_update_imeiAsyncUsingParameters:(n_webservice_uf_update_imei *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_person_info_jsonUsingParameters:(n_webservice_get_person_info_json *)aParameters ;
- (void)get_person_info_jsonAsyncUsingParameters:(n_webservice_get_person_info_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_check_imei_jsonUsingParameters:(n_webservice_uf_check_imei_json *)aParameters ;
- (void)uf_check_imei_jsonAsyncUsingParameters:(n_webservice_uf_check_imei_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_department_jsonUsingParameters:(n_webservice_get_department_json *)aParameters ;
- (void)get_department_jsonAsyncUsingParameters:(n_webservice_get_department_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)modify_departmentUsingParameters:(n_webservice_modify_department *)aParameters ;
- (void)modify_departmentAsyncUsingParameters:(n_webservice_modify_department *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_users_jsonUsingParameters:(n_webservice_get_users_json *)aParameters ;
- (void)get_users_jsonAsyncUsingParameters:(n_webservice_get_users_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)modify_usersUsingParameters:(n_webservice_modify_users *)aParameters ;
- (void)modify_usersAsyncUsingParameters:(n_webservice_modify_users *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_menu_jsonUsingParameters:(n_webservice_get_menu_json *)aParameters ;
- (void)get_menu_jsonAsyncUsingParameters:(n_webservice_get_menu_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)modify_rollsUsingParameters:(n_webservice_modify_rolls *)aParameters ;
- (void)modify_rollsAsyncUsingParameters:(n_webservice_modify_rolls *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)save_photo_to_fileUsingParameters:(n_webservice_save_photo_to_file *)aParameters ;
- (void)save_photo_to_fileAsyncUsingParameters:(n_webservice_save_photo_to_file *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_project_jsonUsingParameters:(n_webservice_get_project_json *)aParameters ;
- (void)get_project_jsonAsyncUsingParameters:(n_webservice_get_project_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)get_users_by_menuUsingParameters:(n_webservice_get_users_by_menu *)aParameters ;
- (void)get_users_by_menuAsyncUsingParameters:(n_webservice_get_users_by_menu *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)modify_project_jsonUsingParameters:(n_webservice_modify_project_json *)aParameters ;
- (void)modify_project_jsonAsyncUsingParameters:(n_webservice_modify_project_json *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
- (n_webserviceSoap12BindingResponse *)uf_testUsingParameters:(n_webservice_uf_test *)aParameters ;
- (void)uf_testAsyncUsingParameters:(n_webservice_uf_test *)aParameters  delegate:(id<n_webserviceSoap12BindingResponseDelegate>)responseDelegate;
@end
@interface n_webserviceSoap12BindingOperation : NSOperation {
	n_webserviceSoap12Binding *binding;
	n_webserviceSoap12BindingResponse *response;
	id<n_webserviceSoap12BindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) n_webserviceSoap12Binding *binding;
@property (readonly) n_webserviceSoap12BindingResponse *response;
@property (nonatomic, assign) id<n_webserviceSoap12BindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate;
@end
@interface n_webserviceSoap12Binding_uf_get_person_info : n_webserviceSoap12BindingOperation {
	n_webservice_uf_get_person_info * parameters;
}
@property (retain) n_webservice_uf_get_person_info * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_get_person_info *)aParameters
;
@end
@interface n_webserviceSoap12Binding_u_getdata_for_sql : n_webserviceSoap12BindingOperation {
	n_webservice_u_getdata_for_sql * parameters;
}
@property (retain) n_webservice_u_getdata_for_sql * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_u_getdata_for_sql *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_get_person_photo : n_webserviceSoap12BindingOperation {
	n_webservice_uf_get_person_photo * parameters;
}
@property (retain) n_webservice_uf_get_person_photo * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_get_person_photo *)aParameters
;
@end
@interface n_webserviceSoap12Binding_checkpassword : n_webserviceSoap12BindingOperation {
	n_webservice_checkpassword * parameters;
}
@property (retain) n_webservice_checkpassword * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_checkpassword *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_send_sms : n_webserviceSoap12BindingOperation {
	n_webservice_uf_send_sms * parameters;
}
@property (retain) n_webservice_uf_send_sms * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_send_sms *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_regiest : n_webserviceSoap12BindingOperation {
	n_webservice_uf_regiest * parameters;
}
@property (retain) n_webservice_uf_regiest * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_regiest *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_check_imei : n_webserviceSoap12BindingOperation {
	n_webservice_uf_check_imei * parameters;
}
@property (retain) n_webservice_uf_check_imei * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_imei *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_check_uid : n_webserviceSoap12BindingOperation {
	n_webservice_uf_check_uid * parameters;
}
@property (retain) n_webservice_uf_check_uid * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_uid *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_update_imei : n_webserviceSoap12BindingOperation {
	n_webservice_uf_update_imei * parameters;
}
@property (retain) n_webservice_uf_update_imei * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_update_imei *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_person_info_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_person_info_json * parameters;
}
@property (retain) n_webservice_get_person_info_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_person_info_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_check_imei_json : n_webserviceSoap12BindingOperation {
	n_webservice_uf_check_imei_json * parameters;
}
@property (retain) n_webservice_uf_check_imei_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_check_imei_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_department_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_department_json * parameters;
}
@property (retain) n_webservice_get_department_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_department_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_modify_department : n_webserviceSoap12BindingOperation {
	n_webservice_modify_department * parameters;
}
@property (retain) n_webservice_modify_department * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_department *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_users_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_users_json * parameters;
}
@property (retain) n_webservice_get_users_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_users_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_modify_users : n_webserviceSoap12BindingOperation {
	n_webservice_modify_users * parameters;
}
@property (retain) n_webservice_modify_users * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_users *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_menu_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_menu_json * parameters;
}
@property (retain) n_webservice_get_menu_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_menu_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_modify_rolls : n_webserviceSoap12BindingOperation {
	n_webservice_modify_rolls * parameters;
}
@property (retain) n_webservice_modify_rolls * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_rolls *)aParameters
;
@end
@interface n_webserviceSoap12Binding_save_photo_to_file : n_webserviceSoap12BindingOperation {
	n_webservice_save_photo_to_file * parameters;
}
@property (retain) n_webservice_save_photo_to_file * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_save_photo_to_file *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_project_json : n_webserviceSoap12BindingOperation {
	n_webservice_get_project_json * parameters;
}
@property (retain) n_webservice_get_project_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_project_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_get_users_by_menu : n_webserviceSoap12BindingOperation {
	n_webservice_get_users_by_menu * parameters;
}
@property (retain) n_webservice_get_users_by_menu * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_get_users_by_menu *)aParameters
;
@end
@interface n_webserviceSoap12Binding_modify_project_json : n_webserviceSoap12BindingOperation {
	n_webservice_modify_project_json * parameters;
}
@property (retain) n_webservice_modify_project_json * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_modify_project_json *)aParameters
;
@end
@interface n_webserviceSoap12Binding_uf_test : n_webserviceSoap12BindingOperation {
	n_webservice_uf_test * parameters;
}
@property (retain) n_webservice_uf_test * parameters;
- (id)initWithBinding:(n_webserviceSoap12Binding *)aBinding delegate:(id<n_webserviceSoap12BindingResponseDelegate>)aDelegate
	parameters:(n_webservice_uf_test *)aParameters
;
@end
@interface n_webserviceSoap12Binding_envelope : NSObject {
}
+ (n_webserviceSoap12Binding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface n_webserviceSoap12BindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
